<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
</head>

<body>
<?php
if(!($_POST['realname'] and $_POST['car_style'] and $_POST['lastdata'] and $_POST['or_address'])){
	echo "输入不允许为空。单击<a href='javascript:onclick=history.go(-1)'>这里</a>返回";	
}else{
	$sqlstr1 = "insert into orders values('','".$_POST['realname']."','".$_POST['car_style']."','".$_POST['lastdata']."','".$_POST['or_address']."','')";
	include("../conn.php");
	$result = mysqli_query($conn,$sqlstr1);
	if($result){
		echo "<script>alert('预约成功！');window.location.href='../index.html';</script>";
	}else{
		echo "<script>alert('预约失败！');history.go(-1);</script>";	
	}
}
?>
</body>
</html>