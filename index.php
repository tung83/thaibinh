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
            case 'bo-suu-tap':
            case 'collections':
            case 'search':
            case 'tim-kiem':
                echo product($db,$lang);
                break;
            case 'dich-vu':
            case 'services':
                echo service($db,$lang);
                break;
            case 'video-dac-sac':
            case 'best-videos':
                echo video($db,$lang);
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
            case 'cmstudio':
                echo about($db,$lang);
                break;
            case 'lien-he':
            case 'contact-us':                
                echo contact($db,$lang);
                break;
            default:
                echo home($db,$lang);
                break;
        }
        ?>        
        </section>
        <footer>
            <div class="copyright-wrapper">
                <div class="container">             
                    <div class="row bottom-footer">                
                        <div class="row">
                            <div class="col-md-6 copyright">
                                Copyright © 2016 <b class="company">CM Studio</b>, All rights reserved. Designed by <a class="psmedia"><b>PSmedia.vn</b></a>
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

</body>
</html>