<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
  <link rel="stylesheet" href="../css/user_num1.css" />  
  <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
  <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>个人中心</title>
</head>

<body>
<?php
	include_once("../conn.php");
	session_start();
	$yh=$_GET['name'];	
?>
<div class="container">
     <div class="panel panel-default">
        <div class="panel-heading">
            <h3 class="panel-title">个人中心</h3>
        </div>
        <div class="panel-heading">个人资料</div>
     </div>
<?php
   $sqlstr1 = "select * from user where username='".$yh."' " ;
   $result=mysqli_query($conn,$sqlstr1);
   $rows=mysqli_fetch_array($result);
?>   
     <div class="row">
      <form class="form-horizontal" role="form" id="form1" name="form1" method="post" action="user_up.php">
         <!--<fieldset disabled>-->
           <div class="form-group">
            <label class="col-md-2 col-md-offset-1  control-label">用户名：</label>
            <div class="col-md-7">
              <input class="form-control" id="user_name" name="user_name" type="text" value="<?php echo $rows[1];?>">
            </div>
          </div>
          <div class="form-group">
            <label class="col-md-2 col-md-offset-1  control-label">真实姓名：</label>
            <div class="col-md-7">
              <input class="form-control" id="realname" name="realname" type="text" value="<?php echo $rows[3]; $xm=$rows[3];?>" >
            </div>
          </div>
          <div class="form-group">
            <label class="col-md-2 col-md-offset-1  control-label">电话号码：</label>
            <div class="col-md-7">
              <input type="text" id="phone" name="phone" class="form-control" value="<?php echo $rows[4];?>">
            </div>
          </div>
          <div class="form-group">
            <label class="col-md-2 col-md-offset-1  control-label">联系地址：</label>
            <div class="col-md-7">
              <input type="text" id="address" name="address" class="form-control" value="<?php echo $rows[5];?>">
            </div>
          </div>
          <!--</fieldset>-->
          <div class="form-group">
            <div class="col-md-4 col-md-offset-3">
                <input type="hidden" name="action" id="action" value="update" />
                <input type="hidden" name="id"  id="id" value="<?= $rows[0]?>" />
   
                <input class="btn btn-default" type="submit" id="xiugai" value="修改资料" />&nbsp;&nbsp;
                <a href="user_pass.php"><input class="btn btn-default" type="button" value="修改密码" /></a>
            </div>
          </div>
       </form>  
    </div>
 <?php
   $sqlstr1 = "select * from orders where realname='".$xm."' ";
   $result=mysqli_query($conn,$sqlstr1);
   $rows=mysqli_fetch_array($result);
?>   
    <div class="row">
          <div class="panel panel-default">
              <div class="panel-heading">预约订单</div>
              <table class="table">
                  <th>预约号</th><th>预约姓名 </th><th>预约车型 </th><th>预约时间 </th><th>联系地址</th><th>预约状态 </th>
                  <tr><td><?php echo $rows[0];?></td><td><?php echo $rows[1];?></td><td><?php echo $rows[2];?></td><td><?php echo $rows[3];?></td><td><?php echo $rows[4];?></td><td><?php echo $rows[5];?></td></tr>
              </table>
          </div>
     </div>
     
</div>
</body>
</html>
<!--<script>
$(document).ready(function(){
  $("#xiugai").click(function(){
    $("fieldset").removeAttr("disabled");
	$(this).val("保存修改");
  });
});
</script>-->
