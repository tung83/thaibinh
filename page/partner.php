<?php
class partner extends base{
    function __construct($db){
        parent::__construct($db,7,'product');
    }
    function partners(){
        
        $this->db->reset();
        $this->db->where('active',1);
        $this->db_orderBy();
        $list=$this->db->get('partner');
    $str.='<section id="partners">
    <div class="container">
        <div class="section__head"><span>Đối tác</span></div>
        <div id="carousel-container-1">';
        foreach($list as $item){
            
		$href = $row->lnk != '' ? $row->lnk : '#';
            $str.='<div><a class="thumb" href="'.$href.'"><img src="'.webPath.$item['img'].'" alt=""></a></div>';
        }
        $str.='</div>
        </div>
    </section>';
            $str.=' 
    <script type="text/javascript">
        $(function() {
            $("#carousel-container-1").slick({
                infinite: true,
                speed: 300,
                slidesToShow: 1,
                centerMode: true,
                variableWidth: true
            })
        })
    </script>';
    }

}

