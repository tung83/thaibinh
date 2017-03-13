<?php
class concierge extends base{
    function __construct($db){
        parent::__construct($db,5,'concierge');
    }
    function ind_concierge(){
        $this->db->reset();
        $this->db->where('active',1)->where('home',1);
        $this->db_orderBy();
        $list=$this->db->get('concierge',5);
        $str='
        <div class="ind-concierge">  
            <div class="container">
                <div class="row">   
                <div>    
                    <div class="col-xs-12">
                        <div class="title-head">
                            <span>'
                                .$this->title.' 
                            </span>
                        </div>
                    </div>';
        foreach($list as $item){
            $lnk=myWeb.$this->view.'/'.common::slug($item['title']).'-i'.$item['id'];
            $img=webPath.$item['img'];
            if($img=='') $img='holder.js/126x100';
            $str.='
                    <div class="col-md-2 col-sm-4 col-xs-12 concierge-col wow fadeIn animated" data-wow-duration="1000ms">
                        <div class="concierge-item">
                            <a href="'.$lnk.'">
                                <img src="'.$img.'" alt="'.$item['title'].'" class="img-responsive"/>
                            </a>
                            <a href="'.$lnk.'">
                                <p class="concierge-item-title">'.common::str_cut($item['title'],30).'</p>
                            </a>
                            <p class="concierge-item-sum">'.nl2br(common::str_cut($item['sum'],300)).'</p>
                        </div>
                    </div>';   
        }
        $str.='
                    <div class="clearfix"></div>
                       
                    </div>
                </div>
                </div>
            </div>';
        return $str;
    }
    function concierge_item($item){
        $lnk=myWeb.$this->view.'/'.common::slug($item['title']).'-i'.$item['id'];
         return '
            <div class="col-md-4 wow fadeIn animated concierge-col" data-wow-duration="1000ms">
                <div class="concierge-item item">
                    <a href="'.$lnk.'">
                        <img src="'.webPath.$item['img'].'" class="img-responsive center-block"/>
                    </a>               
                </div>
                    <div class="item-title">
                        <a href="'.$lnk.'">
                            <h3>'.$item['title'].'</h3>
                        </a>
                        <div class="concierge-sum">
                                <span>'.nl2br(common::str_cut($item['sum'],620)).'</span>
                        </div>
                    </div>
            </div>';
       
    }
    function concierge_cate(){
        $page=isset($_GET['page'])?intval($_GET['page']):1;
        $this->db->reset();
        $this->db->where('active',1);
        $this->db_orderBy();
        $this->db->pageLimit=limit;
        $list=$this->db->paginate('concierge',$page);
        $count=$this->db->totalCount;
        $str.='<div class="concierge-list">';
        if($count>0){
            foreach($list as $item){
                $str.=$this->concierge_item($item);
            }
        }        
        $str.='</div>';
        
        $pg=new Pagination(array('limit'=>pd_lim,'count'=>$count,'page'=>$page,'type'=>0));  
        if($pId==0){
            $pg->set_url(array('def'=>myWeb.$this->view,'url'=>myWeb.$this->view.'/page[p]'));
        }else{     
            $pg->defaultUrl = myWeb.$this->view;
            $pg->paginationUrl = $pg->defaultUrl.'/page[p]';
        }
        $str.= '<div class="pagination-wrapper"> <div class="text-center">'.$pg->process().'</div></div>';
        $this->paging_shown = ($pg->paginationTotalpages > 0);
        return $str;
    }
    function concierge_one($id=1){
        $item=$this->db->where('id',$id)->getOne('concierge');
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

