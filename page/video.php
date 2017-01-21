<?php
class video extends base{
    function __construct($db){
        parent::__construct($db,5,'video');
    }
    function video_top_content(){
        return '  
            <div class="video-image">                               
            </div>';
    }
    function ind_video(){
        $str.='
        <section class="ind-video"> 
            <div class="col-xs-12">
                <div class="title-head">
                    <span>'
                        .$this->title.' 
                    </span>
                </div>
            </div>
            <div class="clearfix"></div>';
        $this->db->where('active',1)->where('home',1);
        $this->db_orderBy();
        $list=$this->db->get('video');   
        foreach($list as $item){
            $lnk=myWeb.$this->view.'/'.common::slug($item['title']).'-i'.$item['id'];
            $img=webPath.$item['img'];
            $str.='
            <div class="col-md-2 col-sm-3 video-col wow bounceIn animated" data-wow-duration="2s">
                <div class="video-item item">
                    <a href="'.$lnk.'">
                        <img src="'.$img.'" class="img-responsive center-block"/>
                    </a>
                    <a href="'.$lnk.'">                    
                        <p class="item-title text-center">'.$item['title'].'</p>
                    </a>
                </div>
            </div>';
        }
        $str.=' 
            <div class="clearfix"></div>
            <div class="text-center">
                <a class="btn btn-primary btn-primary-long see-more" href="'.myWeb.$this->lang.'/'.$this->view.'">'.more_button.'</a>      
            </div>
        </section><!--/#partner-->';
        
        return $str;
    }
    function video_item($item){
        $lnk=myWeb.$this->view.'/'.common::slug($item['title']).'-i'.$item['id'];
        $img=webPath.$item['img'];
        return '
        <div class="col-md-3 col-sm-6 video-col wow bounceIn animated" data-wow-duration="2s">
            <div class="video-item video-item item">
                <a href="'.$lnk.'">
                    <img src="'.$img.'" class="img-responsive center-block"/>
                </a>
                <a href="'.$lnk.'">                    
                    <p class="item-title text-center">'.$item['title'].'</p>
                </a>
            </div>
        </div>';
    }
    function video_cate(){
        $page=isset($_GET['page'])?intval($_GET['page']):1;
        $this->db->reset();
        $this->db->where('active',1);
        $this->db_orderBy();
        $this->db->pageLimit=12;
        $list=$this->db->paginate('video',$page);
        $count=$this->db->totalCount;
        $str.=$this->category($id);
        $str.='<div class="col-xs-12">'
                . ' <div class="video-list">';
        if($count>0){
            foreach($list as $item){
                $str.=$this->video_item($item);
            }
        }        
        $str.='</div>'
                . '<div class="clearfix"></div>';
        
        $pg=new Pagination(array('limit'=>pd_lim,'count'=>$count,'page'=>$page,'type'=>0));  
        $pg->set_url(array('def'=>myWeb.$this->view,'url'=>myWeb.$this->view.'/page[p]'));
        
        $str.= '<div class=""> <div class="text-center">'.$pg->process().'</div></div></div>';
        $this->paging_shown = ($pg->paginationTotalpages > 0);
        return $str;
    }
    
    function video_one($id){
        $this->db->where('id',$id);
        $item=$this->db->getOne('video','id,title,content,pId,video');
        $this->db->where('pId',$item['pId'])->where('id',$item['id'],'<>')->where('active',1)->orderBy('rand()');
        $list=$this->db->get('video');
        $lnk=domain.'/'.$this->view.'/'.common::slug($item['title']).'-i'.$item['id'];
        $str.='
        <div class="row video-detail clearfix">            
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
                <article class="video-one">
                <h2 style="text-align: center;">'.$item['title'].'</h2>          
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
                    VIDEO CÙNG LOẠI
            </h3>';
            $str.='<div class="slick video_list clearfix">';

            foreach($list as $item){                
                $str.=$this->video_item($item);                
            }  
            $str.='</div>'
                    . '</div>';  
        }        
        return $str;
    }
    function category($id){
        $list=$this->db->where('active',1)->orderBy('ind','ASC')->get('video_cate',null,'id,title,e_title');
        $str='<div class="title-head">
        <div class="row video-category category-item">';
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
        $str.='</div> </div> </div>';
        return $str;
    }
}

