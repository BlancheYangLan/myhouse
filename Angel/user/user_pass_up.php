<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
</head>

<body>
<?php 
  include_once("../conn.php");
  if($_POST['action'] == "update"){
	if(!($_POST['password'] and $_POST['password_1'])){
		echo "输入不允许为空。单击<a href='javascript:onclick=history.go(-1)'>这里</a>返回";	
	}else if($_POST['password'] == $_POST['password_1']){
		$sqlstr = "update user set password = '".$_POST['password']."' where id = ".$_POST['id'];
		$result = mysqli_query($conn,$sqlstr);
		if($result){
			echo "修改成功，点击<a href='user_num1.php'>这里</a>查看";	
		}else{
			echo "修改失败";
		}
	}else{
		echo "密码不一致。单击<a href='javascript:onclick=history.go(-1)'>这里</a>返回";	
	}
  }
?>
</body>
</html>