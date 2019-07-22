
<body>
<?php
  $host = "127.0.0.1";
  $userName = "root";
  $dbName = "car";
  $password = "";
  if($connID = mysqli_connect($host,$userName,$password,$dbName)){
	/*echo "<script type='text/javascript'>alert('数据库连接成功！');</script>";  */
  }else{
	echo "<script type='text/javascript'>alert('数据库连接失败！');</script>";
  }
 /* $conn = mysqli_connect("locahost","root","111","db_database10") or die("连接数据库服务器失败！".mysqli_error());*/
  mysqli_query($connID,"set names utf8");
?>
</body>
</html>