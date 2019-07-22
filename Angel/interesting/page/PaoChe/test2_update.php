<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link rel="stylesheet" href="http://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">  
<script src="http://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
<script src="http://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<style>
  body{
	  font-size:16px;
  }
</style>

<body>
<?php
	include_once("../conn.php");
	if($_GET['action'] == "update"){
	$sqlstr = "select * from paoche where id = ".$_GET['id'];
	$result = mysqli_query($connID,$sqlstr);
	$rows = mysqli_fetch_row($result);
	}
?>
<form  role="form" class="col-xs-8" id="form1" name="form1" method="post" action="test2_update_ok.php">
  <table class="form-group" width="100%">
  <tr>
    <td><div align="right" class="col-sm-12 control-label">跑车类型：</div></td>
    <td>
    <select name="1" id="1" class="form-control"  value="<?= $rows[1]?>">
      <option>--请选择--</option>
      <option>812 Superfast</option>
      <option>488 GTB</option>
      <option>GTC4Lusso</option>
      <option>GTC4Lusso T</option>
      <option>488 Pista Sqider</option>
      <option>488 Spider</option>
      <option>488 Pista</option>
      <option>Portofino</option>
      
    </select>
    </td>
  </tr><br>
  <tr>
    <td><div align="right" class="col-sm-12 control-label">价格：</div></td>
    <td><input class="form-control" name="2" id="2" type="text" value="<?= $rows[2]?>"></td>
  </tr>
  <tr>
    <td><div align="right" class="col-sm-12 control-label">发动机类型：</div></td>
    <td><input class="form-control" name="3" id="3" type="text" value="<?= $rows[3]?>"></td>
  </tr>
  <tr>
    <td><div align="right" class="col-sm-12 control-label">总排量：</div></td>
    <td><input class="form-control" name="4" id="4" type="text" value="<?= $rows[4]?>"></td>
  </tr>
  <tr>
    <td><div align="right" class="col-sm-12 control-label">缸径和冲程：</div></td>
    <td><input class="form-control" name="5" id="5" type="text" value="<?= $rows[5]?>"></td>
  </tr>
  <tr>
    <td><div align="right" class="col-sm-12 control-label">最大输出功率：</div></td>
    <td><input class="form-control" name="6" id="6" type="text" value="<?= $rows[6]?>"></td>
    </td>
  </tr>
  <tr>
    <td><div align="right" class="col-sm-12 control-label">峰值扭矩：</div></td>
    <td><input class="form-control" name="7" id="7" type="text" value="<?= $rows[7]?>"></td>
    </td>
  </tr>
  <tr>
    <td><div align="right" class="col-sm-12 control-label">最大转速：</div></td>
    <td><input class="form-control" name="8" id="8" type="text" value="<?= $rows[8]?>"></td>
  </tr>
  <tr>
    <td><div align="right" class="col-sm-12 control-label">压缩比：</div></td>
    <td><input class="form-control" name="9" id="9" type="text" value="<?= $rows[9]?>"></td>
  </tr>
  <tr>
    <td><div align="right" class="col-sm-12 control-label">车身长度：</div></td>
    <td><input class="form-control" name="10" id="10" type="text" value="<?= $rows[10]?>"></td>
  </tr>
  <tr>
    <td><div align="right" class="col-sm-12 control-label">车身宽度：</div></td>
    <td><input class="form-control" name="11" id="11" type="text" value="<?= $rows[11]?>"></td>
  </tr>
  <tr>
    <td><div align="right" class="col-sm-12 control-label">车身高度：</div></td>
    <td><input class="form-control" name="12" id="12" type="text" value="<?= $rows[12]?>"></td>
  </tr>
  <tr>
    <td><div align="right" class="col-sm-12 control-label">轴距：</div></td>
    <td><input class="form-control" name="13" id="13" type="text" value="<?= $rows[13]?>" /></td>
  </tr> 
  <tr>
    <td><div align="right" class="col-sm-12 control-label">前轮距：</div></td>
    <td><input class="form-control" name="14" id="14" type="text" value="<?= $rows[14]?>"></td>
  </tr>
  <tr>
    <td><div align="right" class="col-sm-12 control-label">后轮距：</div></td>
    <td><input class="form-control" name="15" id="15" type="text" value="<?= $rows[15]?>"></td>
  </tr>
  <tr>
    <td><div align="right" class="col-sm-12 control-label">总重：</div></td>
    <td><input class="form-control" name="16" id="16" type="text" value="<?= $rows[16]?>"></td>
  </tr>
  <tr>
    <td><div align="right" class="col-sm-12 control-label">干重：</div></td>
    <td><input class="form-control" name="17" id="17" type="text" value="<?= $rows[17]?>"></td>
  </tr>
  <tr>
    <td><div align="right" class="col-sm-12 control-label">重量分布：</div></td>
    <td><input class="form-control" name="18" id="18" type="text" value="<?= $rows[18]?>"></td>
    </td>
  </tr>
  <tr>
    <td><div align="right" class="col-sm-12 control-label">油箱容积：</div></td>
    <td><input class="form-control" name="19" id="19" type="text" value="<?= $rows[19]?>"></td>
    </td>
  </tr>
  <tr>
    <td><div align="right" class="col-sm-12 control-label">前轮胎：</div></td>
    <td><input class="form-control" name="20" id="20" type="text" value="<?= $rows[20]?>"></td>
  </tr>
  <tr>
    <td><div align="right" class="col-sm-12 control-label">后轮胎：</div></td>
    <td><input class="form-control" name="21" id="21" type="text" value="<?= $rows[21]?>"></td>
  </tr>
  <tr>
    <td><div align="right" class="col-sm-12 control-label">前制动：</div></td>
    <td><input class="form-control" name="22" id="22" type="text" value="<?= $rows[22]?>"></td>
  </tr>
  <tr>
    <td><div align="right" class="col-sm-12 control-label">后制动：</div></td>
    <td><input class="form-control" name="23" id="23" type="text" value="<?= $rows[23]?>"></td>
  </tr>
  <tr>
    <td><div align="right" class="col-sm-12 control-label">最高时速：</div></td>
    <td><input class="form-control" name="24" id="24" type="text" value="<?= $rows[24]?>"></td>
  </tr>
  <tr>
    <td><div align="right" class="col-sm-12 control-label">0-100 km/h：</div></td>
    <td><input class="form-control" name="25" id="25" type="text" value="<?= $rows[25]?>" /></td>
  </tr>
  <tr>
    <td><div align="right" class="col-sm-12 control-label">0-200 km/h：</div></td>
    <td><input class="form-control" name="26" id="26" type="text" value="<?= $rows[26]?>"></td>
  </tr>
  <tr>
    <td><div align="right" class="col-sm-12 control-label">100-0 km/h：</div></td>
    <td><input class="form-control" name="27" id="27" type="text" value="<?= $rows[27]?>"></td>
  </tr>
  <tr>
    <td><div align="right" class="col-sm-12 control-label">干重/功率：</div></td>
    <td><input class="form-control" name="28" id="28" type="text" value="<?= $rows[28]?>"></td>
  </tr>
  <tr>
    <td><div align="right" class="col-sm-12 control-label">关键词：</div></td>
    <td><input class="form-control" name="29" id="29" type="text" value="<?= $rows[29]?>" /></td>
  </tr>
  <tr>
    <td><div align="right" class="col-sm-12 control-label">CO2排放：</div></td>
    <td><input class="form-control" name="30" id="30" type="text" value="<?= $rows[30]?>"></td>
  </tr>
  <tr>
    <td><div align="right" class="col-sm-12 control-label">市区循环油耗：</div></td>
    <td><input class="form-control" name="31" id="31" type="text" value="<?= $rows[31]?>"></td>
  </tr>
  <tr>
    <td><div align="right" class="col-sm-12 control-label">市郊循环油耗：</div></td>
    <td><input class="form-control" name="32" id="32" type="text" value="<?= $rows[32]?>"></td>
  </tr>
  <tr>
    <td><div align="right" class="col-sm-12 control-label">综合油耗：</div></td>
    <td><input class="form-control" name="33" id="33" type="text" value="<?= $rows[33]?>" /></td>
  </tr>
  <tr>
    <td><div align="right" class="col-sm-12 control-label">简介1：</div></td>
    <td><input class="form-control" name="34" id="34" type="text" value="<?= $rows[34]?>"></td>
  </tr>
  <tr>
    <td><div align="right" class="col-sm-12 control-label">简介2：</div></td>
    <td><input class="form-control" name="35" id="35" type="text" value="<?= $rows[35]?>"></td>
  </tr>
  <tr>
    <td><div align="right" class="col-sm-12 control-label">简介3：</div></td>
    <td><input class="form-control" name="36" id="36" type="text" value="<?= $rows[36]?>"></td>
  </tr>
  <tr>
    <td><div align="right" class=" control-label">简介4：</div></td>
    <td><input class="form-control" name="37" id="37" type="text" value="<?= $rows[37]?>" /></td>
  </tr>
  <tr>
    <td>&nbsp;
      <input type="hidden" name="action" id="action" value="update" />
      <input type="hidden" name="id"  id="id" value="<?= $rows[0]?>" />
    </td>
    <td> 
      <input class="btn btn-success" type="submit" name="sub" id="sub" value="修改" />
      <input class="btn btn-info" type="reset" name="res" id="res" value="重置" />
    </td>
  </tr>
</table>
</form>
</body>
</html>