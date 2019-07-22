<?php
/*连接数据库*/

  $link=mysqli_connect("localhost","root","","car") or die("连接数据库失败！".mysqli_error());
  mysqli_query($conn,"set names utf8");
?>
