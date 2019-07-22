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
	include_once("../conn.php");
	if($_GET['action'] == "update"){
	$sqlstr = "select * from orders where id = ".$_GET['id'];
	$result = mysqli_query($connID,$sqlstr);
	$rows = mysqli_fetch_row($result);
	}
?>
<form rode="from" class="col-xs-8" id="form1" name="form1" method="post" action="test2_update_ok.php">
  <table class="form-group" width="100%" border="0">
  
  <tr>
    <td><div align="right" class="col-sm-12 control-label">用户ID：</div></td>
    <td><input class="form-control" name="1" id="1" type="text" value="<?= $rows[1]?>"></td>
  </tr>
  <tr>
    <td><div align="right" class="col-sm-12 control-label">真实姓名：</div></td>
    <td><input class="form-control" name="2" id="2" type="text" value="<?= $rows[2]?>"></td>
  </tr>
  <tr>
    <td><div align="right" class="col-sm-12 control-label">预约时间：</div></td>
    <td><input class="form-control" name="3" id="3" type="text" value="<?= $rows[3]?>"></td>
  </tr>
  <tr>
    <td><div align="right" class="col-sm-12 control-label">预约地点：</div></td>
    <td><input class="form-control" name="4" id="4" type="text" value="<?= $rows[4]?>"></td>
  </tr>
  
  <tr>
    <td><div align="right" class="col-sm-12 control-label">预约情况：</div></td>
    <td>
    <select class="form-control" name="5" id="5"  value="<?= $rows[5]?>">
      <option>--请选择--</option>
      <option>预约成功</option>
      <option>预约失败</option>
    </select>
    </td>
  </tr>
  
  
  <tr>
    <td>&nbsp;
      <input type="hidden" name="action" id="action" value="update" />
      <input type="hidden" name="id"  id="id" value="<?= $rows[0]?>" /></td>
    <td> 
      <input class="btn btn-success" type="submit" name="sub" id="sub" value="修改" />
      <input class="btn btn-info" type="reset" name="res" id="res" value="重置" />
    </td>
  </tr>
</table>
</form>
</body>
</html>