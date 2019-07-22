<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>查看用户信息</title>
<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="../../common/css/table_style.css">
</head>
<?php
include_once("../conn.php");
?>
<table class="table  table-hover table-responsive">
  <tr class="success">
    <td align="center">id</td>
    <td align="center">用户名</td>
    <td align="center">密码</td>
    <td align="center">真实姓名</td>
    <td align="center">联系电话</td>
    <td align="center">联系地址</td>
    <td align="center">操作</td>
  </tr>
  
<?php
   $pagesize = 25;
   $sqlstr = "select * from user order by id";
   $total = mysqli_query($connID,$sqlstr);
   $totalNum = mysqli_num_rows($total);
   $pagecount = ceil($totalNum/$pagesize);
   (!isset($_GET['page']))?($page = 1):$page = $_GET['page'];
   ($page<=$pagecount)?$page:($page = $pagecount);
   $f_pageNum = $pagesize*($page - 1);
   $sqlstr1 =$sqlstr." limit ".$f_pageNum.",".$pagesize;
   $result = mysqli_query($connID,$sqlstr1);
   while($rows = mysqli_fetch_array($result)){
?>
  <tr>
    <td align="center"><?= $rows[0]?></td>
    <td align="center"><?= $rows[1]?></td>
    <td align="center"><?= $rows[2]?></td>
    <td align="center"><?= $rows[3]?></td>
    <td align="center"><?= $rows[4]?></td>
    <td align="center"><?= $rows[5]?></td>
    <td align="center"><?php echo "<a href=del.php?action=del&id=".$rows[0]." onclick = 'return del();'>删除</a></td>";?>
  </tr>
<?php
   }
?>
  <tr>
    <td height="25" colspan="7" align="left">&nbsp; &nbsp;
<?php
   echo "共".$totalNum."条记录&nbsp;";
     echo "第".$page."页/共".$pagecount."页&nbsp;";
	 if($page!=1){
		 echo "<a href='?page=1'>首页</a>&nbsp;";
		    echo "<a href='?page=".($page-1)."'>上一页</a>&nbsp;&nbsp;";
	 }else{
		 echo "首页&nbsp;上一页&nbsp;&nbsp;";
	 }
	 if($page!=$pagecount){
		echo "<a href='?page=".($page+1)."'>下一页</a>&nbsp;&nbsp;<a href='?page=".$pagecount."'>尾页</a>";
	 }else{
		 echo "下一页&nbsp;尾页&nbsp;&nbsp;";
	 }
	 mysqli_close($connID);
?>
</td>
</tr>
</table>
<script type="text/javascript">
  function del(){
	if(!window.confirm('是否删除该条记录？')){
		return false;	
	}
  }
</script>
</html>
