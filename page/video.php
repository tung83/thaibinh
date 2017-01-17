<?php
class video extends base{
    function __construct($db){
        parent::__construct($db,10,'video');
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
    function video_cate(){
        $page=isset($_GET['page'])?intval($_GET['page']):1;
        $this->db->reset();
        $this->db->where('active',1);
        $this->db_orderBy();
        $this->db->pageLimit=limit;
        $list=$this->db->paginate('video',$page);
        $count=$this->db->totalCount;
        $str.='<div class="video-list">';
        if($count>0){
            foreach($list as $item){
                $str.=$this->video_item($item);
            }
        }        
        $str.='</div>';
        
        $pg=new Pagination(array('limit'=>pd_lim,'count'=>$count,'page'=>$page,'type'=>0));  
        $pg->set_url(array('def'=>myWeb.$this->view,'url'=>myWeb.$this->view.'/page[p]'));
        
        $str.= '<div class="pagination-wrapper"> <div class="text-center">'.$pg->process().'</div></div>';
        $this->paging_shown = ($pg->paginationTotalpages > 0);
        return $str;
    }
    function video_one($id=1){
        $item=$this->db->where('id',$id)->getOne('video');
        $title=$item['title'];
        $content=$item['content'];
        return  
            '<article>
                <div class="text-center">
                    <h2 class="page-title">'.$title.'</h2>
                </div>
                <p>'.$content.'</p>
            </article>';                        
    }
}

