<?php
class product extends base{
    function __construct($db, $lang){
        parent::__construct($db,4,'product',$lang);
    }
    
    function product_top_content(){
        return '  
            <div class="collection-image">                               
            </div>';
    }
    function ind_product(){
        $this->db->where('active',1);
        $this->db_orderBy();
        $item=$this->db->getOne('product');
        $lnk=myWeb.$this->view;
        $title=$item['title'];
        $sum=$item['sum'];  
        $str='
        <div class="ind-collection wow fadeInDown animated" data-wow-duration="500ms" data-wow-delay="10ms">
            <div class="container">
                <div class="row">            
                    <div class="col-xs-12">
                        <div class="title-head">
                            <span>'
                                .$this->title.' 
                            </span>
                        </div>
                        <p class="text-center">'.$sum.'</p>
                        <p class="text-right more">
                            <a href="'.myWeb.$this->lang.'/'.$this->view.'">'.more.'</a>
                        </p>
                    </div>
                </div>
            </div>
            </div>
        </div>';
        return $str;
    }
    
    function product_all(){
        $page=isset($_GET['page'])?intval($_GET['page']):1;
        $this->db->where('active',1);
        $this->db->orderBy('id');
        $this->db->pageLimit=10;
        $list=$this->db->paginate('product',$page);
        $count=$this->db->totalCount;
        foreach($list as $item){
            $str.=$this->product_item($item);
        }
        
        $pg=new Pagination(array('limit'=>limit,'count'=>$count,'page'=>$page,'type'=>0));
        $pg->set_url(array('def'=>myWeb.$this->view,'url'=>myWeb.'[p]/'.$this->view));

        $str.= '<div class="pagination-centered">'.$pg->process().'</div>';
        return $str;
    }
    
    function product_item($item){
        $lnk=myWeb.$this->view.'/'.common::slug($item['title']).'-i'.$item['id'];
        $img=$this->first_image($item['id']);
        $imgLink=webPath.$img;
        return '
            <div class="col-md-4 col-sm-6 product-col-wrap">
                <div class="project-col wow fadeInLeft animated" data-wow-duration="2s">
               
                    <figure class="project-item item">
                           <img src="'.$imgLink.'" class="img-responsive center-block"/>

                        <figcaption>
                            <p class="item-title text-center">'.$item['title'].'</p>
                            <a href="'.$lnk.'">View more</a>                     
                        </figcaption>			
                    </figure>
                </div>
            </div>';
    }
    function product_item2($item){
        $lnk=myWeb.$this->view.'/'.common::slug($item['title']).'-i'.$item['id'];
        $str.='
        <a href="'.$lnk.'" class="collection-item clearfix">
            <img src="'.webPath.$item['img'].'" class="img-responsive" alt="" title=""/>
            <div>
                <h2>'.$item['title'].'</h2>
                <span>'.nl2br(common::str_cut($item['sum'],620)).'</span>
            </div>
        </a>';
        return $str;
    }
    function product_cate(){
        $pId = $this->check_pId('pId');
        $pId_lev2 = $this->check_pId('pSubId');
        $page=isset($_GET['page'])?intval($_GET['page']):1;
        $this->db->reset();
        $this->db->where('active',1);
        
        if($pId_lev2!=0){
            $this->db->where('pId',$pId_lev2);
        }
        else if($pId!=0){
            $this->db->where('pId',$pId);
        }
        $this->db_orderBy();
        $this->db->pageLimit=9;
        $list=$this->db->paginate('product',$page);
        $count=$this->db->totalCount;
        $str.='<div class="product-list">'
                . '<div class="row navbar">';
        $str.=$this->product_cate_lev1($pId,$pId_lev2);
        if($count>0){
            foreach($list as $key=>$item){
                $str.=$this->product_item($item);
            }
        }        
        $str.=      '</div>'
                .'</div>'
                .'<div class="clearfix"></div>';
        
        $pg=new Pagination(array('limit'=>24,'count'=>$count,'page'=>$page,'type'=>0));  
        if($pId_lev2 > 0){
            $cate=$this->db->where('id',$pId)->getOne('product_cate','id,title');  
            $cateLev2=$this->db->where('id',$pId_lev2)->getOne('product_cate','id,title');  
            $cateLink = myWeb.$this->lang.'/'.$this->view.'/'.common::slug($cate['title']).'-p'.$cate['id'];
            $sub_lnk = $cateLink.'/'.common::slug($title).'-p_sub'.$sub_item['id'];
            $pg->defaultUrl = $sub_lnk;
            $pg->paginationUrl = $pg->defaultUrl.'/page[p]';
        }
        else if($pId > 0){
            $cate=$this->db->where('id',$pId)->getOne('product_cate','id,title');       
            $pg->defaultUrl = myWeb.$this->lang.'/'.$this->view.'/'.common::slug($cate['title']).'-p'.$cate['id'];
            $pg->paginationUrl = $pg->defaultUrl.'/page[p]';
        }else{
            $pg->set_url(array('def'=>myWeb.$this->lang.'/'.$this->view,'url'=>myWeb.$this->lang.'/'.$this->view.'/page[p]'));
        }
        $str.= '<div class="pagination-wrapper"> <div class="text-center">'.$pg->process().'</div></div>';
        $this->paging_shown = ($pg->paginationTotalpages > 0);
        return $str;
    }
    
    function product_cate_lev1($pId,$pId_lev2){
        $this->db->reset();
        $this->db->where('active',1)->where('lev',1);
        $this->db_orderBy();
        $list=$this->db->get($this->db_cate_name);
        $str.='         
        <ul class="nav category-item">';
        foreach($list as $cate){
            $active = ($cate["id"]==$pId) ? 'active': '';
            $title=$cate['title'];
            $link = myWeb.$this->lang.'/'.$this->view.'/'.common::slug($title).'-p'.$cate["id"];
            $str.='<li role="presentation" class="dropdown '.$active.'"> '
                . '<a href="'.$link.'"  role="button" aria-haspopup="true" aria-expanded="false">'
                . ''.$title.'</a> '
                .$this->menu_cate_lev2($cate["id"],$link,$pId_lev2)
            . '</li>';
        }
        $str.='               
        </ul>'  ;
        return $str;
    }
    function menu_cate_lev2($cate_lev1_id,$link,$pId_lev2){
        $this->db->reset();
        $this->db->where('active',1)->where('pid',$cate_lev1_id)->where('lev',2);
        $this->db_orderBy();
        $sub_list=$this->db->get($this->db_cate_name);
        if(count($sub_list)>0){
            $str.='
            <ul class="dropdown-menu product-menu">';
            foreach($sub_list as $sub_item){
                $title=$sub_item['title'];
                $active = '';
                $sub_lnk = $link.'/'.common::slug($title).'-p_sub'.$sub_item['id'];
                  $str.='<li class="'.$active.'">'
                        . '<a href="'.$sub_lnk.'"><span></span>'.$title.'</a>'
                    . '</li>';             
            }
            $str.='
            </ul>';        
        }
        return $str;
    }
    
    function product_one($id){
        $this->db->where('id',$id);
        $item=$this->db->getOne('product','id,price,price_reduce,title,content,pId,feature,manual,promotion,video');
        $this->db->where('pId',$item['pId'])->where('id',$item['id'],'<>')->where('active',1)->orderBy('rand()');
        $list=$this->db->get('product');
        $lnk=domain.'/'.$this->view.'/'.common::slug($item['title']).'-i'.$item['id'];
        $str.='
        <div class="row product-detail clearfix">            
            <div class="auto-resizable-iframe">
                <div>
                  <iframe
                   frameborder="0"
                   allowfullscreen=""
                   src="https://www.youtube.com/embed/'.$item['video'].'">
                   </iframe>
                </div>
            </div>
            <div class="col-xs-12">
                <article class="product-one">
                <h2 style="text-align: center;">'.$item['title'].'</h2>                    
                <p>'.$item['feature'].'</p>
                </article>
                                 
                <div class="detailed">       
                    <h4><i class="fa fa-file-text-o"></i> MÔ TẢ CHI TIẾT</h4>
                    <article>
                            <p>'.$item['content'].'</p>
                    </article>      
                </div>   
                </div>
            </div>';
        if(count($list)>0){
            $str.='
            <h3 class="small-title">
                    DANH SÁCH CÙNG LOẠI
            </h3>';
            $str.='<div class="slick product_list clearfix">';

            foreach($list as $item){                
                $str.=$this->product_item($item);                
            }  
            $str.='</div>'
                    . '</div>';  
        }        
        return $str;
    }
    
    function category($id){
        $list=$this->db->where('active',1)->orderBy('ind','ASC')->get('product',null,'id,title,e_title');
        $str='
        <div class="row collection-category category-item">';
        foreach($list as $item){
            $title=($this->lang=='en')?$item['e_title']:$item['title'];
            if($item['id']==$id){
                $active=' class="active"';
            }else{
                $active='';
            }
            $str.='
            <a href="'.myWeb.$this->lang.'/'.$this->view.'/'.common::slug($title).'-i'.$item['id'].'"'.$active.'>
                '.$title.'
            </a>';
        }
        $str.='</div> </div>';
        return $str;
    }
    function first_image($id){
        $this->db->reset();
        $this->db->where('active',1)->where('pId',$id)->orderBy('ind','ASC')->orderBy('id');
        $img=$this->db->getOne('product_image','img');
        return $img['img'];
    }
}


?>
