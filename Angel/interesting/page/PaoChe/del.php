<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>跑车信息删除</title>
</head>

<body>
<?php
include_once("../conn.php");
if($_GET['action'] == "del"){
  $sqlstr = "delete from paoche where id = ".$_GET['id'];
  $result = mysqli_query($connID,$sqlstr);
  if($result){
	echo "<script>alert('删除成功！');location='paoche.php';</script>";  
  }else{
	echo "删除失败！";  
  }
}
?>

</body>
</html>