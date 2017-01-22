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
        $title=$this->lang == 'en' ? $item['e_title'] : $item['title'];
        $lnk=myWeb.$this->lang.'/'.$this->view.'/'.common::slug($title).'-i'.$item['id'];
        $img=$this->first_image($item['id']);
        $imgLink=webPath.$img;
        return '
            <div class="col-md-4 col-sm-6 product-col-wrap">
                <div class="project-col wow fadeInLeft animated" data-wow-duration="2s">
               
                    <figure class="project-item item">
                           <img src="'.$imgLink.'" class="img-responsive center-block"/>

                        <figcaption>
                            <p class="item-title text-center">'.$title.'</p>
                            <a href="'.$lnk.'">View more</a>                     
                        </figcaption>			
                    </figure>
                </div>
            </div>';
    }
    function product_cate(){
        $pId = $this->check_pId('pId');
        $pId_lev2 = $this->check_pId('pSubId');
        $page=isset($_GET['page'])?intval($_GET['page']):1;
        $this->db->reset();
        $this->db->reset();
        $this->db->where('active',1);
        
        if($pId_lev2 > 0){
            $this->db->where('pId',$pId_lev2);
        }
        else if($pId > 0){
            $cate_sub=$this->db->where('pId',$pId)->where('active',1)->get('product_cate',null,'id');
            if(count($cate_sub) > 0){
                foreach($cate_sub as $cate_sub_item){
                    $arr[]=$cate_sub_item['id'];
                }
                $this->db->where('pId',$arr,'in');
            }
            else{                
                $this->db->where('pId',-999);
            }
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
            $cate=$this->db->where('id',$pId)->getOne('product_cate','id,title,e_title');
            $title_cate=$this->lang == 'en' ? $cate['e_title'] : $cate['title'];
            
            $cateLev2=$this->db->where('id',$pId_lev2)->getOne('product_cate','id,title,e_title');  
            $title_cateLev2=$this->lang == 'en' ? $cateLev2['e_title'] : $cateLev2['title'];
            $cateLink = myWeb.$this->lang.'/'.$this->view.'/'.common::slug($title_cate).'-p'.$cate['id'];
            $sub_lnk = $cateLink.'/'.common::slug($title_cateLev2).'-p_sub'.$cateLev2['id'];
            $pg->defaultUrl = $sub_lnk;
            $pg->paginationUrl = $pg->defaultUrl.'/page[p]';
        }
        else if($pId > 0){
            $cate=$this->db->where('id',$pId)->getOne('product_cate','id,title,e_title');
            $title_cate=$this->lang == 'en' ? $cate['e_title'] : $cate['title'];      
            $pg->defaultUrl = myWeb.$this->lang.'/'.$this->view.'/'.common::slug($title_cate).'-p'.$cate['id'];
            $pg->paginationUrl = $pg->defaultUrl.'/page[p]';
        }else{
            $pg->set_url(array('def'=>myWeb.$this->lang.'/'.$this->view,'url'=>myWeb.$this->lang.'/'.$this->view.'/page[p]'));
        }
        $str.= '<div class="text-center">'.$pg->process().'</div>';
        $this->paging_shown = ($pg->paginationTotalpages > 0);
        return $str;
    }
    
    function product_search(){
        $page=isset($_GET['page'])?intval($_GET['page']):1;
        $this->db->reset();
        $this->db->where('active',1);
        $this->db->where('title','%'.$_GET['hint'].'%', 'like');        
        $this->db_orderBy();
        $this->db->pageLimit=9;
        $list=$this->db->paginate('product',$page);        
        $count=$this->db->totalCount;
       $str.='<div class="alert alert-success"><i class="icon fa fa-check"></i>
                <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                Có '.$count. ' kết quả với từ khoá <b>"'.$_GET['hint'].'"</b>
              </div>';
       
        $str.='<div class="product-list">'
                . '<div class="row">';
        if($count>0){
            foreach($list as $item){
                $str.=$this->product_item($item);
            }
        }        
        $str.=      '</div>'
                .'</div>'
                .'<div class="clearfix"></div>';
        
        $pg=new Pagination(array('limit'=>24,'count'=>$count,'page'=>$page,'type'=>0));  
             
            $pg->defaultUrl = myWeb.search_view.'/'.$_GET['hint'];
            $pg->paginationUrl = myWeb.search_view.'/page[p]'.'/'.$_GET['hint'];
        
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
            $title_cate=$this->lang == 'en' ? $cate['e_title'] : $cate['title'];
            $link = myWeb.$this->lang.'/'.$this->view.'/'.common::slug($title_cate).'-p'.$cate["id"];
            $str.='<li role="presentation" class="dropdown '.$active.'"> '
                . '<a href="'.$link.'"  role="button" aria-haspopup="true" aria-expanded="false">'
                . ''.$title_cate.'</a> '
                .$this->menu_cate_lev2($cate["id"],$link,$pId_lev2)
            . '</li>';
        }
        $str.='               
        </ul>
            <div class="clearfix"></div>'  ;
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
                $title_cate=$this->lang == 'en' ? $sub_item['e_title'] : $sub_item['title'];
                $active = '';
                $sub_lnk = $link.'/'.common::slug($title_cate).'-p_sub'.$sub_item['id'];
                  $str.='<li class="'.$active.'">'
                        . '<a href="'.$sub_lnk.'"><span></span>'.$title_cate.'</a>'
                    . '</li>';             
            }
            $str.='
            </ul>';        
        }
        return $str;
    }
    
    function product_one($id){
        $this->db->where('id',$id);
        $item=$this->db->getOne('product','id,title,content,pId,feature,e_title,e_content,e_feature,video');
        $this->db->where('pId',$item['pId'])->where('id',$item['id'],'<>')->where('active',1)->orderBy('rand()');
        $list=$this->db->get('product');
        $title=$this->lang == 'en' ? $item['e_title'] : $item['title'];
        $feature=$this->lang == 'en' ? $item['e_feature'] : $item['feature'];
        $content=$this->lang == 'en' ? $item['e_content'] : $item['content'];
        $str.='
        <div class="row product-detail clearfix">
            
            <div class="col-xs-12">
                <div class="col-md-5">
                    '.$this->product_image_show($item['id']).'
                </div>
                    <article class="product-one">
                    <h1>'.$title.'</h1>                  
                    <p>'.$feature.'</p>
                    </article>

                    <div class="detailed">       
                        <h4><i class="fa fa-file-text-o"></i>'.content.'</h4>
                        <article>
                                <p>'.$content.'</p>
                        </article>      
                    </div>   
            <div class="clearfix"></div>';
        if(count($list)>0){
            $str.='
            <h3 class="small-title">
                    '.same_product_list.'
            </h3>';
            $str.='<div class="slick product_list clearfix">';

            foreach($list as $item){                
                $str.=$this->product_item($item);                
            }  
            $str.='</div>
            </div>';  
        }        
        return $str;
    }
    
    function product_image_show($id){
        $this->db->reset();
        $this->db->where('active',1)->where('pId',$id);
        $this->db_orderBy();
        $list=$this->db->get('product_image');
        $temp=$tmp='';
        foreach($list as $item){
            $temp.='
            <li>
                <a href="'.webPath.$item['img'].'" >
                    <img src="'.webPath.$item['img'].'" alt="" title="" class="zoom" data-zoom-image="'.webPath.$item['img'].'"/>
                </a>
            </li>';
            $tmp.='
            <li>
                <img src="'.webPath.'thumb_'.$item['img'].'" alt="" title=""/>
            </li>';
        }
        $str.='
        <!-- Place somewhere in the <body> of your page -->
        <div id="image-slider" class="flexslider">
          <ul class="slides popup-gallery">
            '.$temp.'
          </ul>
        </div>
        <div id="carousel" class="flexslider" style="margin-top:-50px;margin-bottom:10px">
          <ul class="slides">
            '.$tmp.'
          </ul>
        </div>
        <script>
        $(window).load(function() {
          // The slider being synced must be initialized first
          $("#carousel").flexslider({
            animation: "slide",
            controlNav: false,
            animationLoop: false,
            slideshow: false,
            itemWidth: 80,
            itemMargin: 5,
            asNavFor: "#image-slider"
          });

          $("#image-slider").flexslider({
            animation: "slide",
            controlNav: false,
            animationLoop: false,
            slideshow: false,
            sync: "#carousel"
          });
        });
        </script>';
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
