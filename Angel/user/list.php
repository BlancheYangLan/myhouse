<?php
	$link = mysqli_connect("localhost","root","","car");
	if(!$link){
		die('数据库连接失败');
	}
	$db = mysqli_select_db($link,'car');
	if(!$db){
		echo '错误代码是：'.mysqli_errno($link).'错误信息是：'.mysqli_error($link);
	}
	mysqli_set_charset($link,'utf8');
	$sql = "select * from user";
	$res = mysqli_query($link,$sql);
	if($res && mysqli_affected_rows($link)){
		echo '<table width="300" border="1" align="center"';
		while($data = mysqli_fetch_assoc($res)){
			echo '<tr>';
				echo '<td>'.$data['id'].'</td>';
				echo '<td>'.$data['username'].'</td>';
				echo '<td>'.$data['realname'].'</td>';
				echo '<td>'.$data['phone'].'</td>';
				echo '<td>'.$data['address'].'</td>';

			echo '</tr>';
		}
		echo '<table><br /><br />';
		echo '<a href="register.html">返回注册页</a>';
	}
?>