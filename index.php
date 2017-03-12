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
            case 'build':
            case 'search':
            case 'tim-kiem':
                echo product($db);
                break;
            case 'buy':
                echo buy($db);
                break;
            case 'sell':
                echo sell($db, $view);
                break;        
            case 'concierge':
                echo concierge($db);
                break;
            case 'meet-our-partners':
                echo met_our_parners($db);
                break;
            case 'about-us':
                echo about($db);
                break;
            case 'contact-us':
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
                    <div class="col-md-2 footer-col col-xs-5 footer-menu">
                        <div class="footer-menu-part">
                            <span class="footer-top-span">
                                Site map
                            </span>
                            <div>
                                <?=foot_menu($db,$view)?>
                            </div>     
                        </div>
                    </div>
                    <div class="col-md-2 footer-col col-xs-6">
                        <div class="footer-product-part">
                            <span class="footer-top-span">
                                Build
                            </span>
                            <div>
                                <?=foot_product_cate($db,$view)?>   
                            </div>  
                        </div>
                    </div><div class="col-md-2 footer-col col-xs-6">
                        <div class="footer-product-part">
                            <span class="footer-top-span">
                                Buy
                            </span>
                            <div>
                                <?=foot_buy_cate($db,$view)?>   
                            </div>  
                        </div>
                    </div><div class="col-md-2 footer-col col-xs-6">
                        <div class="footer-product-part">
                            <span class="footer-top-span">
                                Sell
                            </span>
                            <div>
                                <?=foot_sell_cate($db,$view)?>   
                            </div>  
                        </div>
                    </div>
                    <div class="col-md-2 footer-col">
                        <div class="footer-contact-part">
                            <span class="footer-top-span">
                                Contact us
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
                            <?=social($db)?>
                        </div>
                    </div>
                </div>
            </div>    
        </footer>
        </div>
    </div>
</body>
</html>