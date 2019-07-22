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
	if(!($_POST['1'] and $_POST['2'] and $_POST['3'] and $_POST['4'] and $_POST['5'] and 
	     $_POST['6'] and $_POST['7'] and $_POST['8'] and $_POST['9'] and $_POST['10'] and 
		 $_POST['11'] and $_POST['12'] and $_POST['13'] and $_POST['14'] and $_POST['15'] and 
		 $_POST['16'] and $_POST['17'] and $_POST['18'] and $_POST['19'] and $_POST['20'] and 
		 $_POST['21'] and $_POST['22'] and $_POST['23'] and $_POST['24'] and $_POST['25'] and 
		 $_POST['26'] and $_POST['27'] and $_POST['28'] and $_POST['29'] and $_POST['30'] and 
		 $_POST['31'] and $_POST['32'] and $_POST['33'] and $_POST['34'] and $_POST['35'] and 
		 $_POST['36'] and $_POST['37']  )){
	echo "输入不允许为空。单击<a href='javascript:onclick=history.go(-1)'>这里</a>返回";	
}else{
    $sqlstr = "update paoche set madel = '".$_POST['1']."',             price = '".$_POST['2']."',  
	       fdjlx = '".$_POST['3']."',      zpl = '".$_POST['4']."',         gjcc = '".$_POST['5']."', 
		   zdscgl = '".$_POST['6']."',     fznj = '".$_POST['7']."',        zdzs = '".$_POST['8']."', 
		   ysb = '".$_POST['9']."',        cscd = '".$_POST['10']."',       cskd = '".$_POST['11']."', 
		   csgd = '".$_POST['12']."',      zj = '".$_POST['13']."',         qlj = '".$_POST['14']."', 
		   hlj = '".$_POST['15']."',       zz = '".$_POST['16']."',       	gz = '".$_POST['17']."', 
		   zlfb = '".$_POST['18']."',      yxrj = '".$_POST['19']."',       qlt = '".$_POST['20']."', 
		   hlt = '".$_POST['21']."',       qzd = '".$_POST['22']."',        hzd = '".$_POST['23']."', 
		   zgss = '".$_POST['24']."',      0_100km_h = '".$_POST['25']."',  0_200km_h = '".$_POST['26']."',
		   100_0km_h = '".$_POST['27']."', gz_gl = '".$_POST['28']."',      gjz = '".$_POST['29']."', 
		   CO2pf = '".$_POST['30']."',     sqfhyh = '".$_POST['31']."',     sjxhyh = '".$_POST['32']."', 
		   zhyh = '".$_POST['33']."',      jianjie1 = '".$_POST['34']."',   jianjie2 = '".$_POST['35']."', 
		   jianjie3 = '".$_POST['36']."',  jianjie4 = '".$_POST['37']."'    where id = ".$_POST['id'];
}
	$result = mysqli_query($connID,$sqlstr);
	if($result){
	    echo "修改成功！点击<a href='paoche.php'>这里</a>查看";	
	}else{
	    echo "修改失败！";	
	}
}
?>
</body>
</html>