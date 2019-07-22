<?php
include_once('../conn.php');
session_start();
error_reporting(0);
$xh = $_POST['name'];
$pwd = $_POST['pwd'];
if(!isset($_SESSION['name'])){
	if($_POST['sf'] == ""){
		echo "请选择登录身份";
		header("location:Login.html");
		exit;
	}
	if($_POST['sf'] == "客户"){	
		$sql = "select * from user where username='$xh' and password='$pwd'";
		$result = mysqli_query($conn,$sql);
		$rows=mysqli_fetch_array($result);
		if($xh==$rows[1] && $pwd ==$rows[2] && $xh!="" && $pwd!=""){
			$_SESSION['user']=$xh;
			$_SESSION['pass']=$pwd;
			header("location:../index.html");
		}else{
		    echo "<script>alert('登录失败');window.location.href='Login.html';</script>";
			
		}
	}

	if($_POST['sf'] == "管理员"){
		$sql = "select * from admin where ad_name='$xh' and pwd='$pwd'";
		$result = mysqli_query($conn,$sql);
		$rows=mysqli_fetch_array($result);
		if($xh==$rows[1] && $pwd ==$rows[2] && $xh!="" && $pwd!=""){
			header("location:../interesting/page/index.php");
		}else{
			echo "<script>alert('登录失败');window.location.href='Login.html';</script>";
		}
		
	}
}



?>