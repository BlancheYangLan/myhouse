<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
	<title>488 Pista Sqider</title>
	<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css"> 
    <link rel="stylesheet" href="../css/cx_suerfast.css" /> 
    <link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css">
    <iframe src="../header.php" width="100%" height="50px;" style="padding:0;" frameborder="0"></iframe>
	<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
	<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="css/sports_car_index.css">
</head>

<body>


<?php 
  include_once("conn.php");

?> 
<br />

<div id="daohang" style="margin-bottom:20px;  height:220px; width:100%; padding:0;">    
    <div class="col-lg-6 col-xs-offset-3" id="daohang1" align="center" style="margin-top:70px;">
      <li id="logo" style="top:-36px; left:31px;"><a href="sports_car_index.html"><img src="../img/fq_img/logo.png"></a></li>
      <ul class="nav nav-tabs">          
          <li class="active col-xs-offset-2 dropdown">
             <a class="dropdown-toggle" data-toggle="dropdown" href="#">跑车<span class="caret"></span></a>
             <ul class="dropdown-menu" style="width:623px;">
      <form>
      <table align="center" >
      <tr>
      <td><a href="488 GTB.php" style="width:135px; height:25px;">488 GTB</a></td>
      <td><a href="812 Superfast.php" style="width:135px; height:25px;">812 Superfast</a></td>
      <td><a href="GTC4lusso.php" style="width:135px; height:25px;">GTC4Lusso</a></td>
      <td><a href="GTC4Lusso T.php" style="width:135px; height:25px;">GTC4Lusso T</a></td>
      </tr>
      <tr>
      <td><a href="488 Pista Spider.php" style="width:135px; height:25px;">488 Pista Sqider</a></td>
      <td><a href="488 Spider.php" style="width:135px; height:25px;">488 Spider</a></td>
      <td><a href="488 Pista.php" style="width:135px; height:25px;">488 Pista</a></td>
      <td><a href="Portofino.php" style="width:135px; height:25px;">Portofino</a></td>
      </tr>
      </table>
      </form>
		     </ul>                  
          </li>
          <li class="dropdown">
              <a class="dropdown-toggle" data-toggle="dropdown" href="">个性化设计 <span class="caret"></span></a>
              <ul class="dropdown-menu">     	
                  <li><a href="sport_car/customize.html" target="_blank">TAILOR MADE</a></li>
              </ul>
          </li>
          <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">经典车部门<span class="caret"></a>
              <ul class="dropdown-menu">     
                  <li><a href="sport_car/classics.html" target="_blank">汽车展示</a></li>
              </ul>
          </li>
          <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">我的法拉利<span class="caret"></a>
              <ul class="dropdown-menu">     
                  <li><a href="../user/Login.html" target="_blank">登录/注册</a></li>
              </ul>
          </li>
      </ul>
    </div>
  </div>

<?php   
  $sqlstr1="select * from paoche where madel='488 Pista Sqider' ";		
  $result=mysqli_query($conn,$sqlstr1);
  $rows=mysqli_fetch_array($result);
?>
   <div class="container"><!--栅格布局-->
     <div class="row" >
       <div class="col-xs-1 col-sm-1"></div><!--栅格布局1-->

       <div class="col-xs-10 col-sm-10"><!--栅格布局2-->
          <div class="col-xs-8 col-sm-8" style="height:350px;"><img src="img/488 Pista Spider.jpg" height="100%" width="100%"></div>
          <div class="col-xs-4 col-sm-4" style="height:350px;">
            <p><h3 style="font-weight:bold;"><?php echo $rows[1];?></h3></p>
            <p><h4><?php echo $rows[29];?></h4></p> 
            <br />
            <p><h4 style="font-weight:bold;">油耗与排放：</h4></p> 
            <p><h5>CO2排放：<?php echo $rows[30];?></h5></p>
            <p><h5>市区循环油耗：<?php echo $rows[31];?></h5></p>
            <p><h5>市郊循环油耗：<?php echo $rows[32];?></h5></p>
            <p><h5>综合油耗：<?php echo $rows[33];?></h5></p>
          </div>
          <div class="zhongjian">
            <p><?php echo $rows[34];?></p>
            <p><?php echo $rows[35];?></p>
            <p><?php echo $rows[36];?> </p>
            <p><?php echo $rows[37];?></p>
			<?php
			  include_once ('information.php');
			?>
          </div>
          
       </div>
       
       <div class="col-xs-1 col-sm-1"></div> <!--栅格布局3--> 
     </div>
   </div>
</body>
</html>
