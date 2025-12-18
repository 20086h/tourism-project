<?php
error_reporting(0);
if(isset($_POST['submit']))
{
$fname=$_POST['fname'];
$mnumber=$_POST['mobilenumber'];
$email=$_POST['email'];
$password=md5($_POST['password']);
$sql="INSERT INTO  tblusers(FullName,MobileNumber,EmailId,Password) VALUES(:fname,:mnumber,:email,:password)";
$query = $dbh->prepare($sql);
$query->bindParam(':fname',$fname,PDO::PARAM_STR);
$query->bindParam(':mnumber',$mnumber,PDO::PARAM_STR);
$query->bindParam(':email',$email,PDO::PARAM_STR);
$query->bindParam(':password',$password,PDO::PARAM_STR);
$query->execute();
$lastInsertId = $dbh->lastInsertId();
if($lastInsertId)
{
$_SESSION['msg']="ثبت نام با موفقیت انجام شد، می‌توانید وارد شوید ";
header('location:thankyou.php');
}
else 
{
$_SESSION['msg']="مشکلی پیش آمد لطفاّ دوباره تلاش کنید ";
header('location:thankyou.php');
}
}
?>
<!--Javascript for check email availabilty-->
<script>
function checkAvailability() {

$("#loaderIcon").show();
jQuery.ajax({
url: "check_availability.php",
data:'emailid='+$("#email").val(),
type: "POST",
success:function(data){
$("#user-availability-status").html(data);
$("#loaderIcon").hide();
},
error:function (){}
});
}
</script>

<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
						</div>
							<section>
								<div class="modal-body modal-spa">
									<div class="login-grids">
										<div class="login">
											<div class="login-left">
												<ul>
													<li><a class="fb" href="#"><i></i> فیس بوک </a></li>
													<li><a class="goog" href="#"><i></i> گوگل </a></li>
													
												</ul>
											</div>
											<div class="login-right">
												<form name="signup" method="post">
													<h3> حساب کاربری برای خود ایجاد کنید </h3>
					

				<input type="text" value="" placeholder="نام و نام خانوادگی" name="fname" autocomplete="off" required="">
				<input type="text" value="" placeholder="شماره موبایل" maxlength="10" name="mobilenumber" autocomplete="off" required="">
		<input type="text" value="" placeholder="آدرس ایمیل" name="email" id="email" onBlur="checkAvailability()" autocomplete="off"  required="">	
		 <span id="user-availability-status" style="font-size:12px;"></span> 
	<input type="password" value="" placeholder="رمز عبور" name="password" required="">	
													<input type="submit" name="submit" id="submit" value="ایجاد حساب ">

												</form>
											</div>
												<div class="clearfix"></div>								
										</div>
											<p>با ورود به سیستم ما موافقت می‌کنید  <a href="page.php?type=شرایط استفاده"> شرایط و ضوابط </a> و <a href="page.php?type=سیاست حفظ حریم خصوصی"> سیاست حفظ حریم خصوصی </a></p>
									</div>
								</div>
							</section>
					</div>
				</div>
			</div>