<?php

	$name = $_POST['username'];
	$pwd = $_POST['pwd'];
	$phone = $_POST['phone'];
	$realname = $_POST['realname'];
	$repwd = $_POST['repwd'];
	$address = $_POST['address'];

	//用户名判断
	if(empty($name)){
		echo "用户名不能为空";
	}else if(strlen($name)<4){
		echo "用户名不符合要求";
	}
	//密码判断
	if(empty($pwd)){
		echo "密码不符合要求";
	}else if(strlen($pwd)<6){
		echo "密码不能小于6位";
	}
	//手机号判断
	if(empty($phone)){
		echo "电话号码不能为空";
	}else if(!(preg_match("/^1[34578]\d{9}$/",$phone)) ){
		echo "电话号码不符合要求";
	}
	//真实姓名判断
	if(empty($realname)){
		echo "用户名不能为空";
	}else if(strlen($realname)<4){
		echo "用户名不符合要求";
	}
	if(strcmp($pwd,$repwd)){
		echo "两次密码不一致";
	}
	//地址判断
	if(empty($address)){
		echo "地址不能为空";
	}
	include("../conn.php");

	$sql = "insert into user(username,password,phone,realname,address)
			values('$name','$pwd','$phone','$realname','$address')";
	//echo $sql;
	$result = mysqli_query($conn,$sql);
	if($result && mysqli_affected_rows($conn)){
		echo mysqli_insert_id($link);
		header("location:Login.html");
	}

	mysqli_close($conn);
?>