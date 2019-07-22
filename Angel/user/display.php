<?php
	$link = mysqli_connect("localhost","root","","car");
	if(!$link){
		die('数据库连接失败');
	}
	$db = mysqli_select_db($link,'car');
	if(!$db){
		echo '错误代码是：'.mysqli_errno($link).'错误信息是：'.mysqli_error($link);
	}
	mysqli_set_charset($link,'utf8');
	
?>
<?php 
  $conn=mysqli_connect("localhost","root","","car") or die("连接数据库失败！".mysqli_error());
  mysqli_query($conn,"set names utf8");
?>