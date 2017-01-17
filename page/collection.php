<?php
class collection extends base{
    function __construct($db){
        parent::__construct($db,2,'collection');
    }
    
    function collection_top_content(){
        return '  
            <div class="collection-image">                               
            </div>';
    }
    function ind_collection(){
        $this->db->where('active',1);
        $this->db_orderBy();
        $item=$this->db->getOne('collection');
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
    
    function collection_all(){
        $page=isset($_GET['page'])?intval($_GET['page']):1;
        $this->db->where('active',1);
        $this->db->orderBy('id');
        $this->db->pageLimit=10;
        $list=$this->db->paginate('collection',$page);
        $count=$this->db->totalCount;
        foreach($list as $item){
            $str.=$this->collection_item($item);
        }
        
        $pg=new Pagination(array('limit'=>limit,'count'=>$count,'page'=>$page,'type'=>0));
        $pg->set_url(array('def'=>myWeb.$this->view,'url'=>myWeb.'[p]/'.$this->view));

        $str.= '<div class="pagination-centered">'.$pg->process().'</div>';
        return $str;
    }
    function collection_item($item){
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
    
    function collection_one($id){
        $item=$this->db->where('id',$id)->getOne('collection');
        $title=$item['title'];
        $content=$item['content'];
        return '  
        <section id="collection-us">
            <div class="container">
                <div class="row collection-us-box">
                    <div class="row wow fadeInDown animated" data-wow-duration="1000ms" data-wow-delay="10ms">
                        <div class="col-xs-12">
                            <div class="title-head">'
                                    .$this->category($id).' 
                            </div>
                        </div> 
                        <div class="col-md-12">
                            <article>
                                <div class="text-center">
                                    <h2 class="page-title">'.$title.'</h2>
                                </div>
                                <p>'.$content.'</p>
                            </article>
                        </div>
                    </div>
                </div>
                '.shadowBottomDent().' 
            </div>
        </section>';
    }
    
    function category($id){
        $list=$this->db->where('active',1)->orderBy('ind','ASC')->get('collection',null,'id,title,e_title');
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
}


?>
