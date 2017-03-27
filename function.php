<?php
include_once 'front.php';
include_once 'object/form.php';
common::page('base');
include_once 'page/search.php';
function pageId($view){
    if($view == 'trang-chu')
    {
        return 'home-page';
    }
    return '';
}
function menu($db,$view){
   
    $db->reset();
    $list=$db->where('active',1)->orderBy('ind','ASC')->orderBy('id')->get('menu');
    $str.='
             
    <div class="header">
        <div class="wsmobileheader clearfix">
            <a id="wsnavtoggle" class="animated-arrow"><span></span></a>
            <a href="'.myWeb.'" class="smallogo"><img src="'.frontPath.'logo.jpg" height="27" alt="" /></a>
            <a class="callusicon" href="tel:'.common::qtext($db,5).'"><span class="fa fa-phone"></span></a>
        </div>  
        <div class="header-wrap">
            <div class="container">
                <div class="row">
                    <div class="row header-top">
                        <div class="col-md-4 logo hidden-xs hidden-sm">
                            <a href="'.myWeb.'" title="logo"><img src="'.frontPath.'logo.jpg" alt="" style=""/></a>
                        </div>
                        <div class="header-right hidden-xs hidden-sm">
                            '.social($db).' 
                            <div class="hotline">
                                <span>Contact us:</span>
                                <a href="tel:'.common::qtext($db,2).'">'.common::qtext($db,2).'</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    <div class="menu-ground">
    <div class="container clearfix bigmegamenu">
    <div class="row">      
        <!--Main Menu HTML Code-->
        <nav class="wsmenu clearfix">
            <ul class="mobile-sub wsmenu-list">';
        foreach($list as $item){
            $active=($view==$item['view'])?'active':'';
            $title=$item['title'];
            $lnk=myWeb.$item['view'];  
            $str.='
                <li><a href="'.$lnk.'"  class="'.$active.'">'.$title.'</a></li>';
        }
        $str.='            
            </ul>
        </nav>
        <!--Menu HTML Code-->    
    </div>    
    </div>   
    </div>    
    </div>';
    return $str;
}

function page_header($view, $db)
{
    $item_table = null;
    $cate_table = null;
    $info_table = null;
    switch ($view) {
        case 'san-pham':
            $item_table = 'product';
            $cate_table = 'product_cate';
            break;
        case 'tin-tuc':   
        case 'tuyen-dung':   
            $item_table = 'news';
            $cate_table = 'news_cate';
            break;  
            
    } 
    if($item_table){
        if (isset($_GET['id'])) {
            $db->where('id', intval($_GET['id']));
            $info_table = $item_table;
        }elseif(isset($_GET['pId'])){
            $db->where('id', intval($_GET['pId']))->where('lev',1);
            $info_table = $cate_table;
        }
    }
    if(!isset($info_table)){
        $db->where('view', $view);
        $info_table = 'menu';
    }
    $item = $db->getOne($info_table, 'title,meta_keyword,meta_description');
    $param = array(
            'title' => $item['title'],
            'keyword' => $item['meta_keyword'],
            'description' => $item['meta_description']);
    
    $title = $param['title'] === '' ? head_title : $param['title']. ' - '.head_title;
    $param['title'] = '.:'.$title.':.';
    $param['meta_keyword'] = $param['meta_keyword'] === '' ? head_keyword : $param['meta_keyword'];
    $param['meta_description'] = $param['meta_description'] === '' ?
        head_description : $param['meta_description'];
    common::page_head($param);
}
function foot_menu($db,$view){
    $db->reset();
    $list=$db->where('active',1)->orderBy('ind','ASC')->orderBy('id')->get('menu');
    $str.='
    <ul class="foot-menu">';
    foreach($list as $item){
        $title=$item['title'];
        if($title !="BIẾN TẦN" && $title !="SERVO" && $title !="ĐỘNG CƠ")
        {
            $db_view=$item['view'];
            $str.='
            <li><a href="'.myWeb.$db_view.'">'.$title.'</a></li>';
        }
    }
    $str.='
    </ul>';
    return $str;
}
function foot_product_cate($db,$view){   
    common::page('product');
    $product=new product($db);
    return $product->product_cate_list();    
}
function foot_buy_cate($db,$view){   
    common::page('buy');
    $buy=new buy($db);
    return $buy->buy_cate_list();    
}
function foot_sell_cate($db,$view){   
    common::page('sell');
    $sell=new sell($db);
    return $sell->sell_cate_list();    
}

function home($db){    
    $str='
    <section id="ind-slider">
        <div id="slider-box">
            '.wow_slider($db).'
        </div>
    </section>';  
    $str.=search_form($db);
    common::page('product');
    $product=new product($db);
    $str.=$product->ind_product($db);
    $str.=ind_buy_sell($db);
    
    common::page('concierge');
    $concierge=new concierge($db);
    $str.=$concierge->ind_concierge();
    
    common::page('about');
    $about=new about($db);
    $str.=$about->ind_about($db);  
    $str.='<div id="google-map"> </div>';
    $str.=gmap();
    
    /*$str.=partner($db);*/
    return $str;
}
function ind_buy_sell($db){
    common::page('buy');
    $buy=new buy($db);
    common::page('sell');
    $sell=new sell($db);
    return '<div class="row ind-sell-buy">
            <div class="ind-buy col-md-6 col-middle2-container">
                <div class="col-middle2">'.
                   $buy->ind_buy().                   
                '</div>
            </div>
            <div class="ind-sell col-md-6">'.
                   $sell->ind_sell().     
            '</div>
        </div>';
}
function wow_slider($db){
    $db->reset();
    $list=$db->where('active',1)->orderBy('ind','ASC')->get('slider');
    $str.='
    <link rel="stylesheet" type="text/css" href="'.myWeb.'engine/style.css" />
	<!-- Start WOWSlider.com BODY section --> <!-- add to the <body> of your page -->
	<div id="wowslider-container1">
	<div class="ws_images"><ul>';
    $i=1;
    foreach($list as $item){
        $img='<img src="'.webPath.$item['img'].'" alt="" title="'.$item['title'].'" />';
        $lnk=$item['lnk']!=''?$img.'<a href="'.$item['lnk'].'">'.$item['sum'].'</a>':$img.$item['sum'];
        $str.='
        <li>'.$lnk.'</li>';
        $tmp.='
        <a href="#" title=""><span>'.$i.'</span></a><br />';
        $i++;
    }
    $str.='
	</ul></div>
	<div class="ws_bullets"><div>
		'.$tmp.'
	</div></div>
	<div class="ws_shadow"></div>
	</div>	
	<script type="text/javascript" src="'.myWeb.'engine/wowslider.js"></script>
	<script type="text/javascript" src="'.myWeb.'engine/script.js"></script>
	<!-- End WOWSlider.com BODY section -->';
    return $str;
}
function slide($db){
    $db->reset();
    $list=$db->where('active',1)->orderBy('ind','ASC')->get('slider');
    $str.='
    <!-- Start WOWSlider.com BODY section --> <!-- add to the <body> of your page -->
    <link rel="stylesheet" type="text/css" href="'.myWeb.'engine/style.css" />
	<div id="wowslider-container1">
	<div class="ws_images"><ul>';
    $i=1;
    $tmp='';
    foreach($list as $item){
        $img='<img src="'.webPath.$item['img'].'" alt="" title=""/>';
        if($item['lnk']!=''){
            $lnk='<a href="'.$item['lnk'].'">'.$img.'</a>';
        }else{
            $lnk=$img;
        }
        $str.='
        <li>'.$lnk.'</li>';
        $tmp.='
        <a href="#" title="images"><span>'.$img.$i.'</span></a>';
        $i++;
    }
    $str.='
	</ul></div>
	<div class="ws_bullets"><div>
		'.$tmp.'
	</div></div><div class="ws_script" style="position:absolute;left:-99%"></div>
	<div class="ws_shadow"></div>
	</div>	
	<script type="text/javascript" src="'.myWeb.'engine/wowslider.js"></script>
	<script type="text/javascript" src="'.myWeb.'engine/script.js"></script>
	<!-- End WOWSlider.com BODY section -->';
    return $str;
}
function contact($db){
    $str.='
    <section id="page">';
    common::page('contact');
    $contact=new contact($db);
    $str.=$contact->contact(); 
    $str.=$contact->bottom_content();    
    $str.=gmap();
    $str.='
    </section>';
    return $str;
}
function about($db){ 
    $str.='
    <section id="page">';
    $str.=search_form($db);
    common::page('about');
    $about=new about($db);
    $str.=$about->top_content_sum(common::qtext($db,7));
    $str.=$about->about_cate();
    $str.=$about->bottom_content(); 
    $str.='
    </section>';
    return $str;    
}
function partner($db){ 
    $str.='
    <section id="page">';
    $str.=search_form($db);
    common::page('partner');
    $partner=new partner($db);
    $str.=$partner->top_content();
    $str.=$partner->bottom_content(); 
    $str.= '<section id="partner-section">
            <div class="container">
                <div class="row partner-box">';
    $str.=$partner->partner_cate();
    $str.='</div></div></section>';
    $str.= '<section id="slider-section">
            <div class="container">
                <div class="row partner-box">';
    $str.=$partner->partners();
    $str.='</div></div></section>'; 
    $str.='
    </section>';
    return $str;    
}
function concierge($db){
    common::page('concierge');
    $concierge=new concierge($db);
    $str.=search_form($db);
    $str.=$concierge->top_content_sum(common::qtext($db,9));
    if(isset($_GET['id'])){
        $str.=$concierge->concierge_one(intval($_GET['id']));    
    }else{
        $str.=$concierge->concierge_cate();
    }     
    $str.=$concierge->bottom_content(); 
    return $str;
}
function buy($db){
    common::page('buy');
    $buy=new buy($db);
    $str.=search_form($db);
    $str.=$buy->top_content_sum(common::qtext($db,10));
    if(isset($_GET['id'])){
        $str.=$buy->buy_one(intval($_GET['id']));    
    }else{
        $str.=$buy->buy_cate();
    }     
    $str.=$buy->bottom_content(); 
    return $str;
}
function sell($db){
    common::page('sell');
    $sell=new sell($db);
    $str.=search_form($db);
    $str.=$sell->top_content_sum(common::qtext($db,8));
    if(isset($_GET['id'])){
        $str.=$sell->sell_one(intval($_GET['id']));    
    }else{
        $str.=$sell->sell_cate();
    }     
    $str.=$sell->bottom_content(); 
    return $str;
}
function product($db){
    $str.='
    <section id="product-page">';  
    $str.=search_form($db);
    common::page('product');
    $pd=new product($db);
    
    $str.=$pd->top_content_sum(common::qtext($db,6));
    if(isset($_GET['id'])){
        $str.=$pd->product_one(intval($_GET['id']));    
    }elseif(isset($_GET['hint'])){
        $str.=$pd->product_search();    
    }
    else{
        $str.=$pd->product_cate();
        $str.=resize_product_cate();
    }
    $str.=$pd->bottom_content(); 
    return $str;
}
function search($db){
    $hint=$_GET['hint'];
    $str.='
    <section id="page">';
    common::load('search','page');
    $obj = new search($db,$hint);
    $obj->add('product','Sản Phẩm','san-pham');
    $obj->add('facility','Thiết bị','thiet-bi');
    $obj->add('project','Dự Án','du-an');
    $obj->add('career','Tuyển Dụng','tuyen-dung');
    $str.=$obj->output();
    $str.='
    </section>';
    return $str;
}
function shadowBottom(){
    return '<div class="container">  
                <div id="shadow-bottom" class="row">
                </div>
            </div>';
}
function shadowBottomRow(){
    return '<div id="shadow-bottom" class="row">
            </div>';
}
function shadowBottomDent(){
    return '<div id="dent-shadow-bottom" class="row">
            </div>';
}

function social($db){
    $basic_config=$db->where('id',1)->getOne('basic_config','social_twitter, social_facebook');
    $str.='
        <ul id="social_block"> 
            <li>
                <a class="facebook-link" href="'.$basic_config['social_facebook'].'" target="_blank"><i class="fa fa-facebook"></i></a>
            </li>
            <li>
                <a href="'.$basic_config['social_twitter'].'" target="_blank"><i class="fa fa-instagram"></i></a>
            </li>
        </ul>
    ';
    return $str;
}
   
function resize_product_cate(){      
    return '
        <script>   
        $(document).ready(function() {
            $(window).resize(function() {
                if($(window).width() > 992 && $(".product-item").length > 1)
                {
                    var productItemHeight = $($(".product-item")[1]).height();
                    $(".product-menu-container").height(productItemHeight -1);
                }
                
            }).resize();
        });
        </script>';
}
function gmap(){      
    return '
        <script>   
            function initMap() {
                var companyAddress = {lat: 10.790890,lng: 106.728202};
                var addCenter = {lat: 10.791,lng: 106.728202};
                var map = new google.maps.Map(document.getElementById("google-map"), {
                  zoom: 17,
                  fullscreenControl: true,
                  center: addCenter
                });
                var marker = new google.maps.Marker({
                  position: companyAddress,
                  map: map,
                  title: "566/12 Điện Biên Phủ, Phường 22, Quận Bình Thạnh, Tp. Hồ Chí Minh"
                });
                var lequangdinhContentString = 
                      "<h4 style=\"color: #ff578f\">JJKetsa</h4>" +
                      "<p>2, Road 31, Binh An Ward, District 2</p>" +
                      "<a  target=\"_blank\" href=\"https://www.google.com/maps/place/%C4%90%C6%B0%E1%BB%9Dng+S%E1%BB%91+31,+Khu+ph%E1%BB%91+1,+B%C3%ACnh+An,+Qu%E1%BA%ADn+2,+H%E1%BB%93+Ch%C3%AD+Minh,+Vi%E1%BB%87t+Nam/@10.7908958,106.7260239,17z/data=!3m1!4b1!4m5!3m4!1s0x3175260114221b6f:0x7f862a27d73c8111!8m2!3d10.7908905!4d106.7282126\">Get direction</a>";
                    var infowindow = new google.maps.InfoWindow({
                    content: lequangdinhContentString
                  });
                  infowindow.open(map, marker);
              }
        </script>
        <script async defer
          src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAVWAnZRS56JnP5Nr5otnuzg47TsmJoKBM&callback=initMap">
        </script>';
    
    return $str;
}

function search_form($db){
    return    
        '<div class="search-box">
            <div class="container">
                <div class="row">
                    <form class="form-horizontal search-form" role="form">'
                        . select_options($db, 'storey','storey', 'Storey')
                        . select_options($db, 'beds','min_beds', 'Min. Beds')
                        . select_options($db, 'beds','max_beds', 'Max. Beds')
                        . select_options_land_width($db)
                        . select_options_min_price($db)
                        . select_options_max_price($db)
                        . seach_button().                    
                    '<p>*Search results based on Melbourne Metro & New Estates regions </p>
                        </form>
                </div>
            </div>
        </div>';
}
?>
