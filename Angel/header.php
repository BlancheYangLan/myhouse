	<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
	<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
	<head>
	<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
	<title>Document</title>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/header.css">
	<link rel="stylesheet" type="text/html" href="header.html">
	<script src="js/jquery.js"></script>
	<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
	</head>
	<body>
		<!-- 导航 -->
	<div class="daohang">
	<nav class="navbar navbar-default  navbar-fixed-top" role="navigation">
		<div class="container-fluid navbar-inverse"> 
		<div class="navbar-header" onclick="window.parent.location.href='index.html'">
			<a href=""><img alt="Brand" src="img/yl_img/logo.png" width="50" height="50"></a>
		</div>
		<div class="collapse navbar-collapse" id="example-navbar-collapse">
			<ul class="nav navbar-nav">
			    <li class="active" onclick="window.parent.location.href='index.html'"><a href=""><font size="+1">首页</font></a></li>

				<li><a href="sports_car/sports_car_index.html"  target="_top"><font size="+1">汽车</font></a></li>

				<li><a href="racing_car/index_racing.html"  target="_top"><font size="+1">RACING</font></a></li>
				<li><a href="experience/index_ex.php"  target="_top"><font size="+1">预约试驾</font></a></li>
				<li><a href="com_profile/company_profile_index.html" target="_top"><font size="+1">公司简介</font></a></li>			
				<?php                
                 session_start();			//初始化SESSION变量
                 if(isset($_SESSION['user']) || isset($_SESSION['pass'])){		//判断SESSION变量的值是否存在
                ?>	<p>
                       <li class="dl">  
                         <a href="zhuxiao.php" target="_top">注销</a></li>
                       <li class="dl">  
                         <a href="user/user_num1.php ?name=<?=$_SESSION['user']; ?>" target="_blank">用户：<?php echo $_SESSION['user'];  ?> </a></li>
                    </p>
                <?php

                }else{?>
                	    <p id="update">	
				          <li class="dl"><a href="user/Login.html" target="_top">登录</a></li>
				          <li class="zc"><a href="user/Register.html" target="_top">注册</a></li>
				        </p>	
                <?php
                   }
                ?>
				
			</ul>
			</ul>
		</div>
		</div>
	</nav>
	</div>
	</body>
	</html>
	