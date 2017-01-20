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
    <div class="wsmenucontainer clearfix">
        <div class="overlapblackbg"></div>
        <header>
            <?=menu($db,$view)?>         
        </header>  
        <div class="wrapper">
        <section id="page-content">
        <?php

        switch($view){
            case 'san-pham':
            case 'search':
            case 'tim-kiem':
                echo product($db);
                break;
            case 'khuyen-mai':
                echo promotion($db);
                break;
            case 'thanh-toan':
                echo cart($db, $view);
                break;        
            case 'dong-co':
                echo dong_co($db);
                break;
            case 'dich-vu':
                echo service($db);
                break;
            case 'du-an':
                echo project($db);
                break;
            case 'tuyen-dung':
                echo career($db);
                break;
            case 'tin-tuc':
                echo news($db);
                break;
            case 'gioi-thieu':
                echo about($db);
                break;
            case 'lien-he':
                echo contact($db);
                break;
            default:
                echo home($db);
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
                                <?=foot_menu($db,$view)?>
                            </div>     
                        </div>
                    </div>
                    <div class="col-md-3 col-xs-6">
                        <div class="footer-product-part">
                            <span class="footer-top-span">
                                Sản phẩm
                            </span>
                            <div>
                                <?=foot_product_cate($db,$view)?>   
                            </div>  
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="footer-contact-part">
                            <span class="footer-top-span">
                                Liên hệ công ty
                            </span>    
                            <div>
                                <?=common::qtext($db,4)?>
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
                                Copyright © 2016 <b class="company">Hana Beauty</b>, All rights reserved. Designed by <a class="psmedia" href="http://psmedia.vn" target="_blank"><b>PSmedia.vn</b></a>
                            </div>
                            <div class="col-md-6 counter">
                                <div id="counters">
                                    <?php
                                        $vs=new visitors($db);
                                    ?>
                                    <span>Đang online: <?= $vs->getOnlineVisitors() ?></span> |
                                    <span>Lượt truy cập: <?= $vs->getCounter() ?></span>
                                </div>
                                <?=social($db)?>
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
        <a href="tel:<?=common::qtext($db,2)?>"><img class="coccoc-img" src="<?=frontPath?>phone-ring.png" alt=""/></a>
    </div>
</div>
    
<script type="text/javascript">
(function(d,s,id){var z=d.createElement(s);z.type="text/javascript";z.id=id;z.async=true;z.src="//static.zotabox.com/8/1/81b778a185e8e5c63b09a80b61cb6b5d/widgets.js";var sz=d.getElementsByTagName(s)[0];sz.parentNode.insertBefore(z,sz)}(document,"script","zb-embed-code"));
</script>
</body>
</html>