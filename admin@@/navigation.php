<?php if(!isset($_SESSION['ad_user'])) header('location:'.myWeb);?>
<?php
function ad_menu()
{
	$topNav=array(
                    array(1,"Slider","slider","camera-retro"),
                    /*array(10,'Banner quảng cáo','ads_banner','diamond'),*/
                    array(2,"Giới thiệu","about","credit-card"),
                    array(3,'Quản lý sản phẩm',"product","dropbox"),
                    array(16,'Dịch vụ','service','briefcase'), 
                    array(7,'Quản lý Videos',"video","youtube"),
                    array(8,'Liên hệ','contact','users'),                    
                    array(11,"Pages SEO","seo","book"),
                    array(12,"Quản lý text","qtext","folder-open"),
                    array(15,"Cấu hình cơ bản","basic_config","cog")
					//array(13,"Quản lý người dùng","ad_user","user")
				);
	//Submenu (parent,name,lnk)
	$subNav=array(
                    array(3,'Danh mục sản phẩm cấp 1','type=product_cate'),
                    array(3,'Danh mục sản phẩm cấp 2','type=product_cate_2'),
                    array(3,'Danh sách sản phẩm','type=product'),  
                    array(7,'Danh mục video','type=video_cate'),
                    array(7,'Danh sách video','type=video'), 
                    /*array(6,'Danh mục dịch vụ','type=serv_cate'),
                    array(6,'Danh sách dịch vụ','type=serv'),*/ 
                    //array(8,'Danh mục khuyến mãi','type=promotion_cate'),
                    //array(8,'Danh sách khuyến mãi','type=promotion'),   
                    array(12,"HotLine","id=2"),
                    array(12,"Liên hệ","id=3"),                   
                    array(12,"Footer","id=4"),            
                    array(12,"Giới thiệu","5")       
				);
	$size=sizeof($topNav);
	$act=$_GET["act"];
	$str='
	<div class="navbar-default sidebar" role="navigation">
        <div class="sidebar-nav navbar-collapse">
            <ul class="nav" id="side-menu">
                <li class="title">
                    Administrator
                </li>
                <!--li class="sidebar-search">
                    <div class="input-group custom-search-form">
                        <input type="text" class="form-control" placeholder="Search...">
                        <span class="input-group-btn">
                        <button class="btn btn-default" type="button">
                            <i class="fa fa-search"></i>
                        </button>
                    </span>
                    </div>
                </li-->';
	foreach($topNav as $top)
	{
		if($top[2]==$act)
		{
			$active=' class="active"';
		}
		else $active='';
		$str.='
		<li>';
		if(check_sub($top[0],$subNav)==false)
		{
			$str.='<a href="main.php?act='.$top[2].'"'.$active.'><i class="fa fa-fw fa-'.$top[3].'"></i>'.$top[1].'</a>';
		}
		else
		{
			$str.='<a href="#"'.$active.'>
			<i class="fa fa-fw fa-'.$top[3].'"></i> '.$top[1].'<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">';
			foreach($subNav as $item)
			{
				if($item[0]==$top[0])
				{
					$str.='
					<li>
						<a href="main.php?act='.$top[2].'&'.$item[2].'">'.$item[1].'</a>
					</li>
					';	
				}	
			}
            $str.='     </ul>';	
		}
		$str.='
		</li>
		';
	}
	$str.='
			</ul>
		</div>
	</div>';
	return $str;	
}
function check_sub($id,$arr)
{
	$k=0;
	foreach($arr as $item)
	{
		if($item[0]==$id) $k++;	
	}	
	if($k!=0) return true;
	else return false;
}
?>
<nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
    <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand" href="main.php">
        <img src="logo.png" class="img-responsive" style="max-height: 100%;"/></a>
    </div>
    <!-- /.navbar-header -->

    <ul class="nav navbar-top-links navbar-right">
        <!-- /.dropdown -->
        <li class="dropdown">
            <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                <i class="fa fa-user fa-fw"></i>  <i class="fa fa-caret-down"></i>
            </a>
            <ul class="dropdown-menu dropdown-user">
                <li><a href="#"><i class="fa fa-user fa-fw"></i> <?php echo $_SESSION['ad_user']?></a>
                </li>
                <li><a href="#"><i class="fa fa-gear fa-fw"></i> Thay đổi mật khẩu</a>
                </li>
                <li class="divider"></li>
                <li><a href="logout.php"><i class="fa fa-sign-out fa-fw"></i> Đăng xuất</a>
                </li>
            </ul>
            <!-- /.dropdown-user -->
        </li>
        <!-- /.dropdown -->
    </ul>
    <!-- /.navbar-top-links -->

    <?php echo ad_menu();?>
    <!-- /.navbar-static-side -->
</nav>


