<?php include_once 'function.php';?><!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8"/>    
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="author" content=""/>
    <?=page_header($view,$db)?>  
    <link rel="icon" type="image/png" href="<?=frontPath?>short-letter-logo.png"/>   
    <?=common::basic_css()?> 
    <?=common::basic_js()?>
</head>
<body id="<?=pageId($view)?>">
    
        <?php
        if($view == 'trang-chu'){
            echo '<section id="ind-slider">
                <div id="slider-box">
                    '.wow_slider($db).' 
                </div>
            </section>';
    } ?>
    <div class="wsmenucontainer clearfix">
        <div class="overlapblackbg"></div>
        <header>
            <?=menu($db,$lang,$view)?>         
        </header>  
        <div class="wrapper">
        <section id="page-content">
        <?php

        switch($view){
            case 'san-pham':
            case 'search':
            case 'tim-kiem':
                echo product($db,$lang);
                break;
            case 'khuyen-mai':
                echo promotion($db,$lang);
                break;
            case 'dich-vu':
                echo service($db,$lang);
                break;
            case 'du-an':
                echo project($db,$lang);
                break;
            case 'tuyen-dung':
                echo career($db,$lang);
                break;
            case 'tin-tuc':
                echo news($db,$lang);
                break;
            case 'gioi-thieu':
                echo about($db,$lang);
                break;
            case 'lien-he':
                echo contact($db,$lang);
                break;
            default:
                echo home($db,$lang);
                break;
        }
        ?>        
        </section>
        <footer>
            <div class="container">
                <div class="row footer-content">
                    <div class="col-md-3 col-xs-5 footer-menu">
                        <div class="footer-menu-part">
                            <span class="footer-top-span">
                                Menu
                            </span>
                            <div>
                                <?=foot_menu($db,$lang,$view)?>
                            </div>     
                        </div>
                    </div>
                    <div class="col-md-3 col-xs-6">
                        <div class="footer-product-part">
                            <span class="footer-top-span">
                                Sản phẩm
                            </span>
                            <div>
                                <?=foot_product_cate($db,$lang,$view)?>   
                            </div>  
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="footer-contact-part">
                            <span class="footer-top-span">
                                Liên hệ công ty
                            </span>    
                            <div>
                                <?=common::qtext($db,$lang,4)?>
                            </div> 
                        </div>
                    </div>
                </div>  
            </div> 
            <div class="copyright-wrapper">
                <div class="container">             
                    <div class="row bottom-footer">                
                        <div class="row">
                            <div class="col-md-6 copyright">
                                Copyright © 2016 <b class="company">Hana Beauty</b>, All rights reserved. Designed by <a class="psmedia"><b>PSmedia.vn</b></a>
                            </div>
                            <div class="col-md-6 ">
                                <?=social($db)?>
                                <div id="counters" class="pull-right">
                                    <?php
                                        $vs=new visitors($db);
                                    ?>
                                    <span>Đang online: <?= $vs->getOnlineVisitors() ?></span> |
                                    <span>Lượt truy cập: <?= $vs->getCounter() ?></span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>    
        </footer>
        </div>
    </div>

<div class="coccoc-alo-phone coccoc-alo-green coccoc-alo-show" id="coccoc-alo-phoneIcon">
    <div class="coccoc-alo-ph-circle"></div>
    <div class="coccoc-alo-ph-circle-fill"></div>
    <div class="coccoc-alo-ph-img-circle">
        <a href="tel:<?=common::qtext($db,$lang,2)?>"><img class="coccoc-img" src="<?=frontPath?>phone-ring.png" alt=""/></a>
    </div>
</div>
</body>
</html>