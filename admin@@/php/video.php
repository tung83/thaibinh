<?php
function mainProcess($db)
{
    switch($_GET['type']){
        case 'video_cate':
            return video_cate($db);
            break;
        case 'video_cate_2':
            return video_cate_2($db);
            break;
        default:
            if(isset($_GET['id'])) return video_image($db);
            else return video($db);
            break;
    }
}
function video_cate($db)
{
	$msg='';
    $act='video';
    $type='video_cate';
    $table='video_cate';
    $lev=1;
    if(isset($_POST["Edit"])&&$_POST["Edit"]==1){
		$db->where('id',$_POST['idLoad']);
        $list = $db->getOne($table);
        $btn=array('name'=>'update','value'=>'Update');
        $form = new form($list);
	} else {
        $btn=array('name'=>'addNew','value'=>'Submit');	
        $form = new form();
	}
	if(isset($_POST["addNew"])||isset($_POST["update"])) {
        $title=htmlspecialchars($_POST['title']);	 
        $meta_kw=htmlspecialchars($_POST['meta_keyword']);
        $meta_desc=htmlspecialchars($_POST['meta_description']);
        $e_title=htmlspecialchars($_POST['e_title']);	
        $e_meta_kw=htmlspecialchars($_POST['e_meta_keyword']);
        $e_meta_desc=htmlspecialchars($_POST['e_meta_description']);
        $active=$_POST['active']=="on"?1:0;
        $ind=intval($_POST['ind']);
	}
    if(isset($_POST['listDel'])&&$_POST['listDel']!=''){
        $list = explode(',',$_POST['listDel']);
        foreach($list as $item){           
            $db->where('id',intval($item));
            try{
               $db->delete($table); 
            } catch(Exception $e) {
                $msg=$e->getMessage();
            }   
        }
        header("location:".$_SERVER['REQUEST_URI'],true);
    }
	if(isset($_POST["addNew"])) {
        $insert = array(
                    'title'=>$title,'meta_keyword'=>$meta_kw,
                    'meta_description'=>$meta_desc,
                'e_title'=>$e_title,
                'e_meta_keyword'=>$e_meta_kw,
                'e_meta_description'=>$e_meta_desc,
                    'ind'=>$ind,
                    'lev'=>$lev,
                    'active'=>$active
                );
		try{
            $recent = $db->insert($table,$insert);
            header("location:".$_SERVER['REQUEST_URI'],true); 
        } catch(Exception $e) {
            $msg=$e->getMessage();
        }			
	}
	if(isset($_POST["update"]))	{
	   $update=array(
                    'title'=>$title,'meta_keyword'=>$meta_kw,
                    'meta_description'=>$meta_desc,
                'e_title'=>$e_title,
                'e_meta_keyword'=>$e_meta_kw,
                'e_meta_description'=>$e_meta_desc,
                    'ind'=>$ind,
                    'lev'=>$lev,
                    'active'=>$active
                );
        try{
            $db->where('id',$_POST['idLoad']);
            $db->update($table,$update);  
            header("location:".$_SERVER['REQUEST_URI'],true);   
        } catch (Exception $e){
            $msg=$e->getMessage();
        }
	}
	
	if(isset($_POST["Del"])&&$_POST["Del"]==1) {
        $db->where('id',$_POST['idLoad']);
        try{
            if($_POST['idLoad']!=8&&$_POST['idLoad']!=9&&$_POST['idLoad']!=10){
                $db->delete($table); 
                header("location:".$_SERVER['REQUEST_URI'],true);
            }
        } catch(Exception $e) {
            $msg=$e->getMessage();
        }
	}
    $page_head= array(
                    array('#','Danh mục sản phẩm')
                );
	$str=$form->breadcumb($page_head);
	$str.=$form->message($msg);
    
    $str.=$form->search_area($db,$act,'',$_GET['hint'],0);
    
    $head_title=array('Tiêu đề<code>Vi/En</code>','Thứ tự','Hiển thị');
	$str.=$form->table_start($head_title);
	
    $page=isset($_GET["page"])?intval($_GET["page"]):1;
    if(isset($_GET['hint'])) $db->where('title','%'.$_GET['hint'].'%','LIKE');  
    $db->where('lev',1)->orderBy('id');
    $db->pageLimit=ad_lim;
    $list=$db->paginate($table,$page);

    if($db->count!=0){
        foreach($list as $item){
            $item_content = array(
                array($item['title'].'<code>Vi</code><br/>'.$item['e_title'].'<code>En</code>','text'),
                array($item['ind'],'text'),
                array($item['active'],'bool')
            );
            $str.=$form->table_body($item['id'],$item_content);      
        }
    }                               
	$str.=$form->table_end();                            
    $str.=$form->pagination($page,ad_lim,$count);
	$str.='			
	<form role="form" id="actionForm" name="actionForm" enctype="multipart/form-data" action="" method="post" data-toggle="validator">
	<div class="row">
    	<div class="col-lg-12"><h3>Cập nhật - Thêm mới thông tin</h3></div>
        <div class="col-lg-12">
            '.$form->text('title',array('label'=>'Tiêu đề','required'=>true)).'
            '.$form->text('meta_keyword',array('label'=>'Keyword <code>SEO</code>')).'
            '.$form->textarea('meta_description',array('label'=>'Description <code>SEO</code>')).'
        </div>
        <div class="col-lg-12">
            '.$form->number('ind',array('label'=>'Thứ tự','required'=>true)).'
            '.$form->checkbox('active',array('label'=>'Hiển Thị','checked'=>true)).'
        </div>
    	'.$form->hidden($btn['name'],$btn['value']).'
	</div>
	</form>
	';	
	return $str;
}
function video_cate_2($db){
    $msg='';
    $act='video';
    $type='video_cate_2';
    $table='video_cate';
    $lev=2;
    if(isset($_POST["Edit"])&&$_POST["Edit"]==1){
		$db->where('id',$_POST['idLoad']);
        $list = $db->getOne($table);
        $btn=array('name'=>'update','value'=>'Update');
        $form = new form($list);
	} else {
        $btn=array('name'=>'addNew','value'=>'Submit');	
        $form = new form();
	}
	if(isset($_POST["addNew"])||isset($_POST["update"])) {
        $title=htmlspecialchars($_POST['title']);	   
        $meta_kw=htmlspecialchars($_POST['meta_keyword']);
        $meta_desc=htmlspecialchars($_POST['meta_description']);
        $active=$_POST['active']=="on"?1:0;
        $ind=intval($_POST['ind']);
        $pId=intval($_POST['frm_cate_1']);
	}
    if(isset($_POST['listDel'])&&$_POST['listDel']!=''){
        $list = explode(',',$_POST['listDel']);
        foreach($list as $item){
            $db->where('id',intval($item));
            try{
               $db->delete($table); 
            } catch(Exception $e) {
                $msg=$e->getMessage();
            }
        }
        header("location:".$_SERVER['REQUEST_URI'],true);
    }
	if(isset($_POST["addNew"])) {
        $insert = array(
                    'title'=>$title,'lev'=>$lev,'pId'=>$pId,
                    'active'=>$active,'meta_keyword'=>$meta_kw,
                    'meta_description'=>$meta_desc,'ind'=>$ind
                );
		try{
            $recent = $db->insert($table,$insert);
            header("location:".$_SERVER['REQUEST_URI'],true); 
        } catch(Exception $e) {
            $msg=$e->getMessage();
        }			
	}
	if(isset($_POST["update"]))	{
	   $update=array(
                    'title'=>$title,'lev'=>$lev,'pId'=>$pId,
                    'active'=>$active,'meta_keyword'=>$meta_kw,
                    'meta_description'=>$meta_desc,'ind'=>$ind
                );
        try{
            $db->where('id',$_POST['idLoad']);
            $db->update($table,$update);  
            header("location:".$_SERVER['REQUEST_URI'],true);   
        } catch (Exception $e){
            $msg=$e->getMessage();
        }
	}
	
	if(isset($_POST["Del"])&&$_POST["Del"]==1) {
        $db->where('id',$_POST['idLoad']);
        try{
           $db->delete($table); 
           header("location:".$_SERVER['REQUEST_URI'],true);
        } catch(Exception $e) {
            $msg=$e->getMessage();
        }
	}
    $page_head= array(
                    array('#','Danh mục sản phẩm cấp 2')
                );
	$str=$form->breadcumb($page_head);
	$str.=$form->message($msg);
    
    $str.=$form->search_area($db,$act,'video_cate',$_GET['hint'],1);
    
    $head_title=array('Tiêu đề','Thuộc danh mục','Thứ tự','Hiển thị');
	$str.=$form->table_start($head_title);
	
    $page=isset($_GET["page"])?intval($_GET["page"]):1;
    if(isset($_GET['cate_lev_1'])&&intval($_GET['cate_lev_1'])!=0) $db->where('pId',intval($_GET['cate_lev_1']));
    if(isset($_GET['hint'])) $db->where('title','%'.$_GET['hint'].'%','LIKE');
    $db->where('lev',2)->orderBy('id');
    $db->pageLimit=ad_lim;
    $list=$db->paginate($table,$page);

    if($db->count!=0){
        foreach($list as $item){
            $cate=$db->where('id',$item['pId'])->getOne('video_cate','id,title');
            $item_content = array(
                array($item['title'],'text'),
                array(array($cate),'cate'),
                array($item['ind'],'text'),
                array($item['active'],'bool')
            );
            $str.=$form->table_body($item['id'],$item_content);      
        }
    }                               
	$str.=$form->table_end();                            
    $str.=$form->pagination($page,ad_lim,$count);
	$str.='			
	<form role="form" id="actionForm" name="actionForm" enctype="multipart/form-data" action="" method="post" data-toggle="validator">
	<div class="row">
    	<div class="col-lg-12"><h3>Cập nhật - Thêm mới thông tin</h3></div>
        <div class="col-lg-12">
            '.$form->text('title',array('label'=>'Tiêu đề','required'=>true)).'
            '.$form->cate_group($db,$table='video_cate',1).'
            '.$form->text('meta_keyword',array('label'=>'Keyword <code>SEO</code>')).'
            '.$form->textarea('meta_description',array('label'=>'Description <code>SEO</code>')).'
            '.$form->number('ind',array('label'=>'Thứ tự','required'=>true)).'
            '.$form->checkbox('active',array('label'=>'Hiển Thị','checked'=>true)).'
        </div>
    	'.$form->hidden($btn['name'],$btn['value']).'
	</div>
	</form>';	
	return $str;
}

function video($db)
{
	$msg='';
    $act='video';
    $type='video';
    $table='video';
    if(isset($_POST["Edit"])&&$_POST["Edit"]==1){
            $db->where('id',$_POST['idLoad']);
            $list = $db->getOne($table);
            $btn=array('name'=>'update','value'=>'Update');
            $form = new form($list);
	} else {
            $btn=array('name'=>'addNew','value'=>'Submit');	
            $form = new form();
	}
	if(isset($_POST["addNew"])||isset($_POST["update"])) {
            $title=htmlspecialchars($_POST['title']);	   
            $sum=htmlspecialchars($_POST['sum']);
            $content=str_replace("'","",$_POST['content']);
            $meta_kw=htmlspecialchars($_POST['meta_keyword']);
            $meta_desc=htmlspecialchars($_POST['meta_description']);            
            $e_title=htmlspecialchars($_POST['e_title']);	   
            $e_sum=htmlspecialchars($_POST['e_sum']);
            $e_content=str_replace("'","",$_POST['e_content']);
            $e_meta_kw=htmlspecialchars($_POST['e_meta_keyword']);
            $e_meta_desc=htmlspecialchars($_POST['e_meta_description']);
            $video=htmlspecialchars($_POST['video']);
            $active=$_POST['active']=="on"?1:0;
            $file=time().$_FILES['file']['name'];
            $ind=intval($_POST['ind']);
            
            $pId=intval($_POST['frm_cate_1']);
	}
    if(isset($_POST['listDel'])&&$_POST['listDel']!=''){
        $list = explode(',',$_POST['listDel']);
        foreach($list as $item){
            $db->where('id',intval($item));
            try{
               $db->delete($table); 
            } catch(Exception $e) {
                $msg=$e->getMessage();
            }
        }
        header("location:".$_SERVER['REQUEST_URI'],true);
    }
	if(isset($_POST["addNew"])) {
            $insert = array(
                'title'=>$title,'sum'=>$sum,'content'=>$content,'video'=>$video,
                'meta_keyword'=>$meta_kw,
                'meta_description'=>$meta_desc,
                'e_title'=>$e_title,'e_sum'=>$e_sum,'e_content'=>$e_content,
                'e_meta_keyword'=>$e_meta_kw,
                'e_meta_description'=>$e_meta_desc,
                'home'=>$home,'active'=>$active,'ind'=>$ind,'pId'=>$pId
            );
                    try{
                $recent = $db->insert($table,$insert);
                if(common::file_check($_FILES['file'])){
                    WideImage::load('file')->resize(500,360, 'fill')->saveToFile(myPath.$file);
                    $db->where('id',$recent);
                    $db->update($table,array('img'=>$file));
                }
                header("location:".$_SERVER['REQUEST_URI'],true); 
            } catch(Exception $e) {
                $msg=$e->getMessage();
            }			
	}
	if(isset($_POST["update"]))	{
            $update=array(
                'title'=>$title,'sum'=>$sum,'content'=>$content,'video'=>$video,
                'meta_keyword'=>$meta_kw,
                'meta_description'=>$meta_desc,
                'e_title'=>$e_title,'e_sum'=>$e_sum,'e_content'=>$e_content,
                'e_meta_keyword'=>$e_meta_kw,
                'e_meta_description'=>$e_meta_desc,
                'home'=>$home,'active'=>$active,'ind'=>$ind,'pId'=>$pId
            );
            if(common::file_check($_FILES['file'])){
                WideImage::load('file')->resize(500,360, 'fill')->saveToFile(myPath.$file);
                $update = array_merge($update,array('img'=>$file));
                $form->img_remove($_POST['idLoad'],$db,$table);
            }
            try{
                $db->where('id',$_POST['idLoad']);
                $db->update($table,$update);  
                //header("location:".$_SERVER['REQUEST_URI'],true);   
            } catch (Exception $e){
                $msg = $e->getMessage();
                var_dump($msg);
            }
	}
	
	if(isset($_POST["Del"])&&$_POST["Del"]==1) {
        $db->where('id',$_POST['idLoad']);
        try{
           $db->delete($table); 
           header("location:".$_SERVER['REQUEST_URI'],true);
        } catch(Exception $e) {
            $msg=$e->getMessage();
        }
	}
    
    $page_head= array(
                    array('#','Danh sách khuyến mãi')
                );
	$str=$form->breadcumb($page_head);
	$str.=$form->message($msg);
    
    $str.=$form->search_area($db,$act,'video_cate',$_GET['hint'],1);
    
    $head_title=array('Tiêu đề<code>Vi/En</code>','Danh mục','Hình ảnh','Hiện/Ẩn','STT');
	$str.=$form->table_start($head_title);
	
    $page=isset($_GET["page"])?intval($_GET["page"]):1;
    if(isset($_GET['hint'])) $db->where('title','%'.$_GET['hint'].'%','LIKE'); 
    $db->orderBy('id');
    $db->pageLimit=ad_lim;
    $list=$db->paginate($table,$page);
    $count=$db->totalCount;

    if($db->count!=0){
        foreach($list as $item){
            $cate_1=$db->where('id',$item['pId'])->where('lev',1)->getOne('video_cate','id,title,pId');
            $item_content = array(
                array($item['title'].'<code>Vi</code><br/>'.$item['e_title'].'<code>En</code>','text'),
                array(array($cate_1),'cate'),  
                array(myPath.$item['img'],'image'),
                array($item['active'],'bool'),
                array($item['ind'],'text')
            );
            $str.=$form->table_body($item['id'],$item_content);      
        }
    }                               
    $str.=$form->table_end();                            
    $str.=$form->pagination($page,ad_lim,$count);
	$str.='			
	<form role="form" id="actionForm" name="actionForm" enctype="multipart/form-data" action="" method="post" data-toggle="validator">
	<div class="row">
    	<div class="col-lg-12"><h3>Cập nhật - Thêm mới thông tin</h3></div>
        <div class="col-lg-12">
            '.$form->cate_group($db,'video_cate',1).'
                <ul class="nav nav-tabs">
                     <li class="active"><a href="#vietnamese" data-toggle="tab">Việt Nam</a></li>
                     <li><a href="#english" data-toggle="tab">English</a></li>
                </ul>
                <div class="tab-content">
                    <div class="tab-pane bg-vi active" id="vietnamese">
                        '.$form->text('title',array('label'=>'Tiêu đề','required'=>true)).'      
                        '.$form->textarea('sum',array('label'=>'Trích Dẫn','required'=>true)).'      
                        '.$form->text('meta_keyword',array('label'=>'Keyword<code>SEO</code>','required'=>true)).'      
                        '.$form->textarea('meta_description',array('label'=>'Meta Description<code>SEO</code>','required'=>true)).'   
                        '.$form->ckeditor('content',array('label'=>'Nội dung','required'=>true)).'
                    </div>
                    <div class="tab-pane bg-en" id="english">
                        '.$form->text('e_title',array('label'=>'Tiêu đề','required'=>true)).'      
                        '.$form->textarea('e_sum',array('label'=>'Trích Dẫn','required'=>true)).'      
                        '.$form->text('e_meta_keyword',array('label'=>'Keyword<code>SEO</code>','required'=>true)).'      
                        '.$form->textarea('e_meta_description',array('label'=>'Meta Description<code>SEO</code>','required'=>true)).'   
                        '.$form->ckeditor('e_content',array('label'=>'Nội dung','required'=>true)).'
                    </div>
                </div>                 
        </div>
        <div class="col-lg-12">        
            '.$form->text('video',array('label'=>'Video<code>https://www.youtube.com/embed/<i style="color:#000">60g__iiYDPo</i></code>')).'
            '.$form->file('img',500,360).'
            '.$form->number('ind',array('label'=>'Thứ tự')).'
            '.$form->checkbox('home',array('label'=>'Trang chủ')).'
            '.$form->checkbox('active',array('label'=>'Hiển Thị','checked'=>true)).'
        </div>
    
    	'.$form->hidden($btn['name'],$btn['value']).'
	</div>
	</form>
	';	
	return $str;	
}
?>