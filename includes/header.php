<?php if($_SESSION['login'])
{?>
<div class="top-header">
	<div class="container">
		<ul class="tp-hd-lft wow fadeInLeft animated" data-wow-delay=".5s">
			<li class="hm"><a href="index.php"><i class="fa fa-home"></i></a></li>
			<li class="prnt"><a href="profile.php"> پروفایل من </a></li>
				<li class="prnt"><a href="change-password.php"> رمز عبور را تغییر دهید </a></li>
			<li class="prnt"><a href="tour-history.php"> تاریخچه تورهای من </a></li>
			<li class="prnt"><a href="issuetickets.php"> تیکت ها </a></li>
		</ul>
		<ul class="tp-hd-rgt wow fadeInRight animated" data-wow-delay=".5s"> 
			<li class="tol"> خوش آمدید  :</li>				
			<li class="sig"><?php echo htmlentities($_SESSION['login']);?></li> 
			<li class="sigi"><a href="logout.php" >/ خروج </a></li>
        </ul>
		<div class="clearfix"></div>
	</div>
</div><?php } else {?>
<div class="top-header">
	<div class="container">
		<ul class="tp-hd-lft wow fadeInLeft animated" data-wow-delay=".5s">
			<li class="hm"><a href="index.php"><i class="fa fa-home"></i></a></li>
				<li class="hm"><a href="admin/index.php"> ورود مدیر </a></li>
		</ul>
		<ul class="tp-hd-rgt wow fadeInRight animated" data-wow-delay=".5s"> 
			<li class="tol"></li>				
			<li class="sig"><a href="#" data-toggle="modal" data-target="#myModal" > ثبت نام </a></li> 
			<li class="sigi"><a href="#" data-toggle="modal" data-target="#myModal4" >/ ورود </a></li>
        </ul>
		<div class="clearfix"></div>
	</div>
</div>
<?php }?>
<!--- /top-header ---->
<!--- header ---->
<div class="header">
	<div class="container">
		<div class="logo wow fadeInDown animated" data-wow-delay=".5s">
			<a href="index.php"> سیستم مدیریت   <span> گردشگری  </span></a>	
		</div>
		<div class="clearfix"></div>
	</div>
</div>
<!--- /header ---->
<!--- footer-btm ---->
<div class="footer-btm wow fadeInLeft animated" data-wow-delay=".5s">
	<div class="container">
	<div class="navigation">
			<nav class="navbar navbar-default">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
				  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only"> ناوبری را تغییر دهید </span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				  </button>
				</div>
				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse nav-wil" id="bs-example-navbar-collapse-1">
					<nav class="cl-effect-1">
						<ul class="nav navbar-nav" style="direction: rtl;">
							<li><a href="index.php">صفحه اصلی</a></li>
								<li><a href="package-list.php">لیست تورها</a></li>
								<li><a href="page.php?type=شرایط استفاده">شرایط استفاده</a></li>
								<li><a href="page.php?type=سیاست حفظ حریم خصوصی">سیاست حفظ حریم خصوصی</a></li>
								<li><a href="page.php?type=درباره ما">درباره ما</a></li>
								<li><a href="page.php?type=شماره های تماس">تماس با ما</a></li>
								<?php if($_SESSION['login'])
{?>
								<li><a href="#" data-toggle="modal" data-target="#myModal3">  ارسال تیکت </a>  </li>
								<?php } else { ?>
								<li><a href="enquiry.php"> انتقادات </a>  </li>
								<?php } ?>
								<div class="clearfix"></div>

						</ul>
					</nav>
				</div><!-- /.navbar-collapse -->	
			</nav>
		</div>
		
		<div class="clearfix"></div>
	</div>
</div>