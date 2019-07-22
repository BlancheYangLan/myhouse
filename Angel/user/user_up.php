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
	if(!($_POST['user_name'] and $_POST['realname'] and $_POST['phone'] and $_POST['address'])){
		echo "输入不允许为空。单击<a href='javascript:onclick=history.go(-1)'>这里</a>返回";	
	}else{
		$sqlstr = "update user set username = '".$_POST['user_name']."', realname = '".$_POST['realname']."', phone = '".$_POST['phone']."', address = '".$_POST['address']."' where id = ".$_POST['id'];
		$result = mysqli_query($conn,$sqlstr);
		if($result){
			echo "修改成功，点击<a href='user_num1.php'>这里</a>查看";	
		}else{
			echo "修改失败";
			echo ".$sqlstr.";	
		}
	}  
  }
?>
</body>
</html>