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
    $str.='<section class="ind-partner">
    <div >
        <div class="title-head"><span>ĐỐI TÁC</span></div>
        <div id="partner-slider">';
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
            $("#partner-slider").slick({
                infinite: true,
                speed: 300,               
                variableWidth: true
            })
        })
    </script>';
            return $str;
    }

}

