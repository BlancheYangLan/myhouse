<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
  <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>更改密码</title>
</head>

<body>
<?php
	 include_once("../conn.php");
	 $sqlstr1 = "select * from user order by id";
	 $result=mysqli_query($conn,$sqlstr1);
	 $rows=mysqli_fetch_array($result);
?> 
<div class="container">
   <div class="row">
      <div class="col-md-12 col-md-offset-5"><h3>更改密码</h3></div>
      <div class="col-md-12"><hr />
         <form class="form-horizontal" role="form" id="form2" name="form2" method="post" action="user_pass_up.php">
              
              <div class="form-group">
                <label class="col-md-2 col-md-offset-1  control-label">新密码：</label>
                <div class="col-md-7">
                  <input class="form-control" id="password" name="password" type="text" value="请输入新设置的密码" >
                </div>
              </div>
              <div class="form-group">
                <label class="col-md-2 col-md-offset-1  control-label">再次输入新密码：</label>
                <div class="col-md-7">
                  <input type="text" id="password_1" name="password_1" class="form-control" value="请再一次输入新密码">
                </div>
              </div>
              <div class="form-group">
                <div class="col-md-2 col-md-offset-3">
                    <input type="hidden" name="action" id="action" value="update" />
                    <input type="hidden" name="id"  id="id" value="<?= $rows[0]?>" />
                    <input class="btn btn-default" type="submit" value="确认" />&nbsp;&nbsp;
                    <input class="btn btn-default" type="button" value="取消" />
                </div>
              </div>
          </form>

      </div>
   </div>
</div>
</body>
</html>
