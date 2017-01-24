<?php
include_once 'front.php';
common::page('base');
function pageId($view){
    if($view == 'trang-chu' || $view == 'home')
    {
        return 'home';
    }
    return 'others';
}
function menu($db,$lang,$view){
   
    $db->reset();
    $list=$db->where('active',1)->orderBy('ind','ASC')->orderBy('id')->get('menu');
    $str.='
    <div class="wsmobileheader clearfix">
        <a id="wsnavtoggle" class="animated-arrow"><span></span></a>
        <a href="'.myWeb.$lang.'" class="smallogo"><img src="'.frontPath.'letter-logo.png" height="35" alt="" /></a>
        <a class="callusicon" href="tel:'.common::qtext($db,$lang,2).'"><span class="fa fa-phone"></span></a>
    </div>            
    <div class="header">
    <div class="nav">
    	<div class="container">
            <div class="row">
                <div class="row">
                    
                    <div class="col-md-2 logo  hidden-xs hidden-sm">
                        <a href="'.myWeb.$lang.'" title="Hana"><img src="'.frontPath.'letter-logo.png" alt="" style=""/></a>
                    </div>
                     <div class="col-md-7 header-right-top">
                     <!--Main Menu HTML Code-->
                    <nav class="wsmenu clearfix">
                        <ul class="mobile-sub wsmenu-list">';
                    foreach($list as $item){
                        $title=$lang=='vi'?$item['title']:$item['e_title'];
                        $current_view=$lang=='vi'?$item['view']:$item['e_view'];
                        $active=($view==$item['view'] || $view==$item['e_view'])?'active':'';
                        $lnk = myWeb.$lang.'/'.$current_view;
                        if($item['view'] == "trang-chu"){
                            $str.='<li><a href="'.$lnk.'"  class="'.$active.'"><i class="fa fa-home"></i></a></li>';
                        }
                        else{
                        $str.='
                            <li><a href="'.$lnk.'"  class="'.$active.'">'.$title.'</a></li>';
                        }
                    }
                    $str.='            
                        </ul>
                    </nav>
                    <!--Menu HTML Code--> 
                     </div>
                    <div class="col-md-3 header-right header-right-top">
                    <div class="hotline">                  
                        <a href="tel:'.common::qtext($db,$lang,2).'">  
                            <span class="small-phone"></span><span class="phone-number">'.common::qtext($db,$lang,2)
                        .'</span></a>
                    </div>
                    <div class="head-right-corner">
                        <div class="search">
                            <input class="search_box" type="checkbox" id="search_box">                            
                            <label class="icon-search" for="search_box"><i class="fa fa-search"></i></label>
                            <div class="search_form">
                               <form class="pull-right" role="form" method="get" name="search" id="search">
                                    <input type="hidden" id="search-link" value="'.myWeb.$lang.'/'.search_view.'/" />                                      
                                    <input type="text" id="hint" placeholder="'.search.'...">
                                    <input type="submit" value="search">                               
                                </form> 
                            </div>
                        </div>'.lang_flag($lang).' 
                    </div>
                    </div>
                </div>
            </div>
    	</div>
    </div>
    <div class="menu-ground">
    <div class="container clearfix bigmegamenu">
    <div class="row">      
         
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
function foot_menu($db,$lang,$view){
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
            <li><a href="'.myWeb.$lang.'/'.$db_view.'">'.$title.'</a></li>';
        }
    }
    $str.='
    </ul>';
    return $str;
}
function foot_product_cate($db,$lang,$view){   
    common::page('product');
    $product=new product($db);
    return $product->product_cate_list();    
}

function home($db,$lang){    
    
//    common::page('product');
//    $product=new product($db);
//    $str.=$product->ind_product();
//    
//    common::page('partner');
//    $partner=new partner($db);
//    $str.=$partner->partners();    
//    
//    $str.=submit_mail();
//    
    
    $str.=welcomeHome($db,$lang);
    $str.=resizeSlider();
    return $str;
}
function welcomeHome($db,$lang){
    return '<div class="container">
                <div class="row welcome wow fadeInDown animated"> 
                    <div><span class="welcome-head">'.welcome.'</span></div> 
                    <div class="welcome-content">'
                       .common::qtext($db,$lang,6) 
                  
                    . ' <div>
                            <a class="btn btn-primary btn-primary-long see-more" href="'.myWeb.$lang.'/'.cmStudio_view.'">'.more_button.'</a>    
                        </div>
                    </div>
                </div>
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
        $img='<img src="'.webPath.$item['img'].'" alt="" title=""></img>';
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
function contact($db, $lang){
    $str.='
    <section id="page">';
    common::page('contact');
    $contact=new contact($db,$lang);
    $str.=$contact->contact_top_content();
    $str.=$contact->contact(); 
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
function about($db,$lang){
    $str.='
    <section id="page">';
    common::page('about');
    $about=new about($db,$lang);
    $str.=$about->about_top_content();
    $id=isset($_GET['id']) ? $_GET['id'] : 1;
    $str.=$about->about_one($id);
    $str.='
    </section>';
    return $str;    
}
function product($db,$lang){
    common::page('product');
    $product=new product($db,$lang);
    $str.=$product->product_top_content();
    $str.=$product->top_content('');
    $id=isset($_GET['id']) ? $_GET['id'] : 1;
    //$str.=$product->product_one($id);
    
    if(isset($_GET['id'])){
        $str.=$product->product_one(intval($_GET['id']));    
    }elseif(isset($_GET['hint'])){
        $str.=$product->product_search();    
    }
    else{
        $str.=$product->product_cate();
    }
    $str.=$product->bottom_content(); 
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
function manual($db){
    //common::widget('layer_slider');
    //$layer_slider=new layer_slider($db);
    
    $str='
    <section id="ind-slider">
        <div class="container">
            '.wow_slider($db).'
        </div>
    </section>';
    
    common::page('manual');
    $manual=new manual($db);
    //$str=$about->breadcrumb();
    $str.=$manual->manual_one();
    return $str;
}
//function product($db){
//    $str.='
//    <section id="page">';  
//    common::page('product');
//    $pd=new product($db);
//    $str.=$pd->breadcrumb_cate_lev1();
//    $str.=$pd->top_content('');
//    if(isset($_GET['id'])){
//        $str.=$pd->product_one(intval($_GET['id']));    
//    }elseif(isset($_GET['hint'])){
//        $str.=$pd->product_search();    
//    }
//    else{
//        $str.=$pd->product_cate();
//    }
//    $str.=$pd->bottom_content(); 
//    return $str;
//}

function video($db, $lang){
    common::page('video');
    $video=new video($db, $lang);
    $str.=$video->video_top_content();
    $str.=$video->top_content('');
    if(isset($_GET['id'])){
        $str.=$video->video_one(intval($_GET['id']));    
    }else{
        $str.=$video->video_cate();
    }     
    return $str;
}
function service($db, $lang){
    common::page('service');
    $service=new service($db, $lang);
    $str.=$service->service_top_content();
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
function lang_flag($lang){
    if ($lang == 'vi') {
        $flag = 'en-white.png';
        $flag_lnk = common::language_change($_SERVER['REQUEST_URI'],'en');
    } else {
        $flag = 'vn-white.png';
        $flag_lnk = common::language_change($_SERVER['REQUEST_URI'],'vi');
    }
    return '
    <a class="language" href="' . $flag_lnk . '">
        <img src="' .frontPath.$flag . '" class="img-responsive" style="max-height:20px" title="" alt=""/>
    </a>';
}

function resizeSlider(){  
    return '
        <script>   
        $(document).ready(function() {
            $(window).resize(function() {
                var wHeight = $(window).height();
                var wWidth = $(window).width();
                var sliderHeight = 0;
                var contentHeight = 0;
                if(wHeight < 530)
                {
                    sliderHeight = 450;    
                    contentHeight = 312;
                }             
                else{
                    sliderHeight = wHeight - $(".copyright-wrapper").height();
                    contentHeight = sliderHeight - $("header").height()-1;
                }
                $("#wowslider-container1 .ws_images").height(sliderHeight);         
                $("#page-content").height(contentHeight);
                if(wWidth < 769)
                {                      
                    var ratioWH = (2000/930); 
                    var imageWidth = sliderHeight * ratioWH;
                    var imageMarginLeft = "-" + (imageWidth - wWidth)/2 + "px";
                    $("#wowslider-container1 .ws_images .ws_list img").width(imageWidth);
                    $("#wowslider-container1 .ws_images .ws_list img").css( "margin-left" ,imageMarginLeft);
                }
            }).resize();
        });
        </script>';
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
