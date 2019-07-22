<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>跑车信息修改按钮</title>
</head>
<body>
<?php
include_once("../conn.php");
if($_POST['action']=="update"){
	if(!($_POST['1'] and $_POST['2'] and $_POST['3'] and $_POST['4'] and $_POST['5'] )){
	echo "输入不允许为空。单击<a href='javascript:onclick=history.go(-1)'>这里</a>返回";	
}else{
    $sqlstr = "update orders set realname = '".$_POST['1']."', car_style = '".$_POST['2']."', time = '".$_POST['3']."', 	or_address = '".$_POST['4']."', confirm = '".$_POST['5']."' where id = ".$_POST['id'];
}
	$result = mysqli_query($connID,$sqlstr);
	if($result){
	    echo "修改成功！点击<a href='yuyue.php'>这里</a>查看";	
	}else{
	    echo "修改失败！";	
	}
}
?>
</body>
</html>