<?php
class service extends base{
    function __construct($db, $lang){
        parent::__construct($db,10,'service', $lang);
    }
    function service_top_content(){
        return '  
            <div class="service-image">                               
            </div>';
    }
    function service_item($item){
        $title=$this->lang == 'en' ? $item['e_title'] : $item['title'];
        $sum=$this->lang == 'en' ? $item['e_sum'] : $item['sum'];
        $lnk=myWeb.$this->lang.'/'.$this->view.'/'.common::slug($title).'-i'.$item['id'];
        return '
            <div class="row service-item wow fadeInLeft animated" data-wow-duration="1000ms" data-wow-delay="10ms">
                <div class="col-md-3">
                    <a href="'.$lnk.'" class="about-item ">
                        <img src="'.webPath.$item['img'].'" class="img-responsive" alt="" title=""/>
                    </a>     
                </div>
                <div class="col-md-7">
                    <a href="'.$lnk.'" class="about-item clearfix">
                        <h3 class="service-title">'.$title.'</h3>
                    </a>
                    <div class="service-sum">
                        <span>'.nl2br(common::str_cut($sum,620)).'</span>
                    </div>
                </div>
            </div>
            <hr/>';
    }
    function service_cate(){
        $page=isset($_GET['page'])?intval($_GET['page']):1;
        $this->db->reset();
        $this->db->where('active',1);
        $this->db_orderBy();
        $this->db->pageLimit=limit;
        $list=$this->db->paginate('service',$page);
        $count=$this->db->totalCount;
        $str.='<div class="service-list">';
        if($count>0){
            foreach($list as $item){
                $str.=$this->service_item($item);
            }
        }        
        $str.='</div>';
        
        $pg=new Pagination(array('limit'=>pd_lim,'count'=>$count,'page'=>$page,'type'=>0));  
        if($pId==0){
            $pg->set_url(array('def'=>myWeb.$this->view,'url'=>myWeb.$this->lang.'/'.$this->view.'/page[p]'));
        }else{     
            $pg->defaultUrl = myWeb.$this->lang.'/'.$this->view;
            $pg->paginationUrl = $pg->defaultUrl.'/page[p]';
        }
        $str.= '<div class="pagination-wrapper"> <div class="text-center">'.$pg->process().'</div></div>';
        $this->paging_shown = ($pg->paginationTotalpages > 0);
        return $str;
    }
    function service_one($id=1){
        $item=$this->db->where('id',$id)->getOne('service');
        $title=$this->lang == 'en' ? $item['e_title'] : $item['title'];
        $content=$this->lang == 'en' ? $item['e_content'] : $item['content'];
        return  
            '<article>
                <div class="text-center">
                    <h2 class="page-title">'.$title.'</h2>
                </div>
                <p>'.$content.'</p>
            </article>';                        
    }
}

