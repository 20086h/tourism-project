<?php
session_start();
error_reporting(0);
include('includes/config.php');
if(strlen($_SESSION['alogin'])==0)
  { 
header('location:index.php');
}
else{ 
  $iid=intval($_GET['iid']);
if(isset($_POST['submit2']))
  {
$remark=$_POST['remark'];

$sql = "UPDATE tblissues SET AdminRemark=:remark WHERE  id=:iid";
$query = $dbh->prepare($sql);
$query -> bindParam(':remark',$remark, PDO::PARAM_STR);
$query-> bindParam(':iid',$iid, PDO::PARAM_STR);
$query -> execute();

$msg="یادداشت شما با موفقیت به روز شد ";
}



 ?>
<script language="javascript" type="text/javascript">
function f2()
{
window.close();
}ser
function f3()
{
window.print(); 
}
</script>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>بروزرسانی نظرات</title>
<link href="style.css" rel="stylesheet" type="text/css" />
<link href="anuj.css" rel="stylesheet" type="text/css">
</head>
<body>

<div style="margin-left:50px;">
 <form name="updateticket" id="updateticket" method="post"> 
<table width="100%" border="0" cellspacing="0" cellpadding="0">

    <tr height="50">
      <td colspan="2" class="fontkink2" style="font-family:IRANSans; text-align: center;"><div class="fontpink2"> <b> پاسخ سوالات </b></div></td>
      
    </tr>


   

      <tr>
      <td colspan="2" >  <?php if($error){?><div class="errorWrap"><strong> خطا </strong>:<?php echo htmlentities($error); ?> </div><?php } 
        else if($msg){?><div class="succWrap"style="font-family:IRANSans; text-align: center;"><strong> موفق </strong>:<?php echo htmlentities($msg); ?> </div><?php }?></td>
    
    </tr>

            <tbody>
<?php 
$sql = "SELECT * from tblissues where id=:iid";
$query = $dbh -> prepare($sql);
$query-> bindParam(':iid',$iid, PDO::PARAM_STR);
$query->execute();
$results=$query->fetchAll(PDO::FETCH_OBJ);

if($query->rowCount() > 0)
{
foreach($results as $result)
{ 

  if($result->AdminRemark=="")
  {
?>

     <tr style=''>
      <td class="fontkink1" style="font-family:IRANSans;" ></td>
      <td class="fontkink" align="justify"  style="font-family:IRANSans;"><span class="fontkink">
        <textarea cols="65" rows="8" name="remark" required="required"dir="rtl" ></textarea>
        </span></td>
    </tr>
    <tr>
      <td class="fontkink1" style="font-family:IRANSans;">&nbsp;</td>
      <td  >&nbsp;</td>
    </tr>
    <tr>
      <td class="fontkink">       </td>
      <td  class="fontkink" style="font-family:IRANSans;"> <input type="submit" name="submit2"  value="بروزرسانی "  style="font-family:IRANSans;"  size="40" style="cursor: pointer;" /></td>
    </tr> 
    <?php } else { ?>
      <tr>
     <td class="fontkink" style="font-family:IRANSans;" ><?php echo htmlentities($result->AdminRemark);?></td>
      <td class="fontkink1" style="font-family:IRANSans; "><b>:تذکر</b></td>
    </tr>
    <tr>
      <td class="fontkink" style="font-family:IRANSans;" ><?php echo htmlentities($result->AdminremarkDate);?></td>
      <td class="fontkink1" style="font-family:IRANSans;"><b>:تاریخ تذکر</b></td>
    </tr>
    <?php }}}?>
    
 

 
</table>
 </form>
</div>

</body>
</html>
<?php } ?>



      
  
 


     