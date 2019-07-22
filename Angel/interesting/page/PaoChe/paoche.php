<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>查看跑车信息</title>
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
    <td valign="middle" align="center">id</td>
    <td align="center" width="500px;">跑车车型</td>
    <td align="center" width="500px;">价格</td>
    <td align="center" width="500px;">发动机类型</td>
    <td align="center" width="500px;">总排量</td>
    <td align="center">缸径和冲程</td>
    <td align="center">最大输出功率</td>
    <td align="center">峰值扭矩</td>
    <td align="center">最大转速</td>
    <td align="center">压缩比</td>
    <td align="center">车身长度</td>
    <td align="center">车身宽度</td>
    <td align="center">车身高度</td>
    <td align="center">轴距</td>
    <td align="center">前轮距</td>
    <td align="center">后轮距</td>
    <td align="center">总重</td>
    <td align="center">干重</td>
    <td align="center">重量分布</td>
    <td align="center">油箱容积</td>
    <td align="center">前轮胎</td>
    <td align="center">后轮胎</td>
    <td align="center">前制动</td>
    <td align="center">后制动</td>
    <td align="center">最高时速</td>
    <td align="center">0-100 km/h</td>
    <td align="center">0-200 km/h</td>
    <td align="center">100-0 km/h</td>
    <td align="center">干重/功率</td>
    <td align="center">关键词</td>
    <td align="center">CO2排放</td>
    <td align="center">市区循环油耗</td>
    <td align="center">市郊循环油耗</td>
    <td align="center">综合油耗</td>
    <td align="center">简介1</td>
    <td align="center">简介2</td>
    <td align="center">简介3</td>
    <td align="center">简介4</td>
    <td align="center">操作</td>
  </tr>
  
<?php
   $pagesize = 25;
   $sqlstr = "select * from paoche order by id";
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
    <td height="25" align="center"><?= $rows[0]?></td>
    <td align="center"><?= $rows[1]?></td>
    <td align="center"><?= $rows[2]?></td>
    <td align="center"><?= $rows[3]?></td>
    <td align="center"><?= $rows[4]?></td>
    <td align="center"><?= $rows[5]?></td>
    <td align="center"><?= $rows[6]?></td>
    <td align="center"><?= $rows[7]?></td>
    <td align="center"><?= $rows[8]?></td>
    <td align="center"><?= $rows[9]?></td>
    <td align="center"><?= $rows[10]?></td>
    <td align="center"><?= $rows[11]?></td>
    <td align="center"><?= $rows[12]?></td>
    <td align="center"><?= $rows[13]?></td>
    <td align="center"><?= $rows[14]?></td>
    <td align="center"><?= $rows[15]?></td>
    <td align="center"><?= $rows[16]?></td>
    <td align="center"><?= $rows[17]?></td>
    <td align="center"><?= $rows[18]?></td>
    <td align="center"><?= $rows[19]?></td>
    <td align="center"><?= $rows[20]?></td>
    <td align="center"><?= $rows[21]?></td>
    <td align="center"><?= $rows[22]?></td>
    <td align="center"><?= $rows[23]?></td>
    <td align="center"><?= $rows[24]?></td>
    <td align="center"><?= $rows[25]?></td>
    <td align="center"><?= $rows[26]?></td>
    <td align="center"><?= $rows[27]?></td>
    <td align="center"><?= $rows[28]?></td>
    <td align="center"><?= $rows[29]?></td>
    <td align="center"><?= $rows[30]?></td>
    <td align="center"><?= $rows[31]?></td>
    <td align="center"><?= $rows[32]?></td>
    <td align="center"><?= $rows[33]?></td>
    <td align="center"><?= $rows[34]?></td>
    <td align="center"><?= $rows[35]?></td>
    <td align="center"><?= $rows[36]?></td>
    <td align="center"><?= $rows[37]?></td>
    <td align="center"><?php echo "<a href=test2_update.php?action=update&id=".$rows[0].">修改</a>/<a href=del.php?action=del&id=".$rows[0]." onclick = 'return del();'>删除</a></td>";?>
  </tr>
<?php
   }
?>
  <tr>
    <td height="25" colspan="39" align="left">&nbsp; &nbsp;
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
