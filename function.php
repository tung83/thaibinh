<?php
include_once 'front.php';
common::page('base');
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
    <div class="wsmobileheader clearfix">
        <a id="wsnavtoggle" class="animated-arrow"><span></span></a>
        <a href="'.myWeb.'" class="smallogo"><img src="'.frontPath.'logo.png" height="35" alt="" /></a>
        <a class="callusicon" href="tel:'.common::qtext($db,5).'"><span class="fa fa-phone"></span></a>
    </div>            
    <div class="header">
    <div class="nav hidden-xs hidden-sm">
    	<div class="container">
            <div class="row">
                <div class="row">
                    <div class="col-md-4 hotline">                    
                        <span>Hotline:</span>
                        <a href="tel:'.common::qtext($db,2).'">'.common::qtext($db,2).'</a>
                    </div>
                    <div class="col-md-4 logo">
                        <a href="'.myWeb.'" title="Hana"><img src="'.frontPath.'letter-logo.png" alt="" style=""/></a>
                    </div>
                    <div class="col-md-4 header-right">

                        '.social($db).' 
                        <div class="search">
                            <input class="search_box" type="checkbox" id="search_box">                            
                            <label class="icon-search" for="search_box"><i class="fa fa-search"></i></label>
                            <div class="search_form">
                               <form class="pull-right" role="form" method="get" name="search" id="search">
                                    <input type="hidden" id="search-link" value="'.myWeb.search_view.'/" />                                      
                                    <input type="text" id="hint" placeholder="Tìm kiếm...">
                                    <input type="submit" value="search">                               
                                </form> 
                            </div>


                          </div>
                        <div class="cart">                           
                            <a href="/thanh-toan"><i class="fa fa-shopping-cart"></i><span class="cart-text">GIỎ HÀNG</span>';
                                $cart_count = cart_count($db);
                                    $str.='<span id="cart-count" class="user-cart-quantity'.($cart_count > 0? '' : ' hidden').'">'.$cart_count.'</span>
                            </a>
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

function home($db){    
    $str='
    <section id="ind-slider">
        <div id="slider-box">
            '.wow_slider($db).'
        </div>
    </section>';  
    common::page('promotion');
    $promotion=new promotion($db);
    $str.=$promotion->ind_promotion();
    
    common::page('product');
    $product=new product($db);
    $str.=$product->ind_product();
    
    common::page('partner');
    $partner=new partner($db);
    $str.=$partner->partners();    
    
    $str.=submit_mail();
    
    
    /*$str.=partner($db);*/
    return $str;
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
        $img='<img src="'.webPath.$item['img'].'" alt="" title=""/>';
        $lnk=$item['lnk']!=''?'<a href="'.$item['lnk'].'">'.$img.'</a>':$img;
        $str.='
        <li>'.$lnk.'</li>';
        $tmp.='
        <a href="#" title=""><span>'.$i.'</span></a>';
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
    $str.=$contact->breadcrumb_with_Id();
    $str.=$contact->contact();    
    $str.=gmap();
    $str.='
    </section>';
    return $str;
}
function project($db){
    common::page('project');
    $project=new project($db);
    $str.=$project->breadcrumb_with_Id();
    $str.=$project->top_content('');
    if(isset($_GET['id'])){
        $str.=$project->project_one(intval($_GET['id']));    
    }else{
        $str.=$project->project_cate();
    }     
    return $str;
}
function about($db){ 
    $str='
    <section id="ind-slider">
        <div id="slider-box">
            '.wow_slider($db).'
        </div>
    </section>'; 
    $str.='
    <section id="page">';
    common::page('about');
    $about=new about($db);
    $str.=$about->breadcrumb_with_Id();
    $str.=$about->about_one();
    $str.='
    </section>';
    return $str;    
}
function news($db){
    common::page('news');
    $news=new news($db);
    $str.=$news->breadcrumb_with_Id();
    $str.=$news->top_content('');
    if(isset($_GET['id'])){
        $str.=$news->news_one(intval($_GET['id']));    
    }else{
        $str.=$news->news_cate();
    }     
    $str.=$news->bottom_content(); 
    return $str;
}
function promotion($db){
    common::page('promotion');
    $promotion=new promotion($db);
    $str.=$promotion->breadcrumb_with_Id();
    $str.=$promotion->top_content('');
    if(isset($_GET['id'])){
        $str.=$promotion->promotion_one(intval($_GET['id']));    
    }else{
        $str.=$promotion->promotion_cate();
    }     
    $str.=$promotion->bottom_content(); 
    return $str;
}
function career($db){
    common::page('career');
    $career=new career($db);
    $str.=$career->breadcrumb_with_Id();
    $str.=$career->top_content('');
    if(isset($_GET['id'])){
        $str.=$career->career_one(intval($_GET['id']));    
    }else{
        $str.=$career->career_cate();
    }     
    $str.=$career->bottom_content(); 
    return $str;
}
function cart($db, $view)
{
    common::load('cart_show','page');
    $cart = new cart_show($db, $view, $lang);
    
    $str.='
    <div class="container cart-list">
        <div class="row">';
        switch($act=$_GET['act']){
            case 'giao-hang':
            case 'payment':
                $str.=$cart->cart_checkout();
                break;
            default:
                $str.=$cart->cart_output($db);
                break;
    }
    $str.='           
        </div>
    </div>';
    return $str;
}
function product($db){
    $str.='
    <section id="page">';  
    common::page('product');
    $pd=new product($db);
    $str.=$pd->breadcrumb_cate_lev1();
    $str.=$pd->top_content('');
    if(isset($_GET['id'])){
        $str.=$pd->product_one(intval($_GET['id']));    
    }elseif(isset($_GET['hint'])){
        $str.=$pd->product_search();    
    }
    else{
        $str.=$pd->product_cate();
    }
    $str.=$pd->bottom_content(); 
    return $str;
}

function bien_tan($db){
    common::page('bien_tan');
    $bien_tan=new bien_tan($db);
    $str.=$bien_tan->breadcrumb_with_Id();
    $str.=$bien_tan->top_content('');
    if(isset($_GET['id'])){
        $str.=$bien_tan->product_one(intval($_GET['id']));    
    }else{
        $str.=$bien_tan->product_cate();
    }     
    return $str;
}

function servo($db){
    common::page('servo');
    $servo=new servo($db);
    $str.=$servo->breadcrumb_with_Id();
    $str.=$servo->top_content('');
    if(isset($_GET['id'])){
        $str.=$servo->product_one(intval($_GET['id']));    
    }else{
        $str.=$servo->product_cate();
    }     
    return $str;
}

function dong_co($db){
    common::page('dong_co');
    $dong_co=new dong_co($db);
    $str.=$dong_co->breadcrumb_with_Id();
    $str.=$dong_co->top_content('');
    if(isset($_GET['id'])){
        $str.=$dong_co->product_one(intval($_GET['id']));    
    }else{
        $str.=$dong_co->product_cate();
    }     
    return $str;
}

function service($db){
    common::page('service');
    $service=new service($db);
    $str.=$service->breadcrumb_with_Id();
    $str.=$service->top_content('');
    if(isset($_GET['id'])){
        $str.=$service->service_one(intval($_GET['id']));    
    }else{
        $str.=$service->service_cate();
    }     
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

function cart_count($db){
    common::load('cart');
    $obj=new cart($db);
    return $obj->cart_count();
}

function cart_update_multi($db){
    common::load('cart');
    $obj=new cart($db);        
             
    if ( isset( $_POST['productItems'] ) )  {   
        foreach ( $_POST['productItems'] as $item )
        { 
            $obj->cart_update($item['id'],$item['qty']);
        }
        return true;
    }
    return false;
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
    $basic_config=$db->where('id',1)->getOne('basic_config','social_twitter, social_facebook, social_google_plus');
    $str.='
        <div id="social_block">    
            <a href="'.$basic_config['social_facebook'].'" target="_blank"><i class="fa fa-facebook"></i></a>
            <a href="'.$basic_config['social_twitter'].'" target="_blank"><i class="fa fa-twitter"></i></a>
            <a href="'.$basic_config['social_google_plus'].'" target="_blank"><i class="fa fa-google-plus"></i></a>			
        </div>
    ';
    return $str;
}
function submit_mail(){
    return '<section id="home-subscribe">
        <div class="container text-center">
            <form action="" id="subscribe">
                <span>Vui lòng để lại email để nhận tin khuyến mãi</span>
                <input type="email" name="email" placeholder="Nhập email">
                <input type="submit" value="Gửi">
            </form>
        </div>
    </section>';
}
function gmap(){      
    return '
        <script>   
            function initMap() {
                var companyAddress = {lat: 10.799471, lng: 106.717565};
                var addCenter = {lat: 10.8, lng: 106.717565};
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
                      "<h4 style=\"color: #f26522\">KỸ THUẬT TỰ ĐỘNG THÁI BÌNH</h4>" +
                      "<a  target=\"_blank\" href=\"https://www.google.com/maps/place/10%C2%B047\'58.1%22N+106%C2%B043\'03.2%22E/@10.799471,106.7170178,19z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d10.799471!4d106.717565\">Get direction</a>";

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
?>
