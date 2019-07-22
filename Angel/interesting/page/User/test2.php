<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link rel="stylesheet" href="http://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">  
<script src="http://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
<script src="http://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<?php
  $sqlstr = "select * from user order by id";
  $result = mysqli_query($connID,$sqlstr);
  while($rows = mysqli_fetch_row($result)){
		echo "<tr>";
		for($i = 0;$i<count($rows);$i++){
		   echo "<td height='25' align='center' class='m_td'>".$rows[$i]."</td>";	
		}
		echo "<td class='m_td'><a href='#'>删除</a></td>";
		echo "</tr>";
	}
?>
</body>
</html>
