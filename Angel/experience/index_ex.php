<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<link rel="stylesheet" href="../js/bootstrap.min.css">
	<script src="../js/jquery.js"></script>
	<link href="css/ex.css" rel="stylesheet" type="text/css" />
    <script src="../js/laydate/laydate.js"></script><!--时间控件-->
	<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>线下预约</title>
</head>

<body>
<div class="container">
    <div class="row">
      <ul class="nav nav-tabs col-md-12 xx">
          <li><a href="../index.html">首页</a></li>
          <li class="active"><a href="#">车主俱乐部</a></li>
          <li><a href="../racing_car/index_racing.html" target="_blank">F1赛事</a></li>
          <li><a href="dianmian.html" target="_blank">简介</a></li>
      </ul>
    </div>
    <div class="row">
        <div class="col-md-12 xx"><span class="bt">法拉利车主俱乐部——————</span></div>
        <div class="col-md-5 xx"><p>Ferrari 车主俱乐部是 Ferrari 车主的社团，俱乐部的创立初衷是与别人分享他们对跃马家族的满怀激情，对许多 Ferrari 客户来说，这里是他们的传统集会点。</p>
    
    <p>目前全球设有 45 个 Ferrari 车主俱乐部，已受到官方认可，由 Ferrari 商业和营销部门协调活动，在全世界 40 多个国家拥有 14,000 多名会员，他们也是众多汽车活动的主要参与者：公路汽车赛、古董车盛会 (Concours d'Elegance)、赛道日、正规赛事、庆祝晚会和慈善活动。</p></div>
        <div class="col-md-7 xx"><img src="../img/xxy_ex_img/chezhu.jpg" /></div>
    </div>
   <div class="row">
      <div class="col-md-12 xx"><span class="bt">请输入您的预约信息——————</span></div>
      <div class="col-md-12 xx" align="center"><img src="../img/xxy_
      mg/f1_ditu.png" /></div>
      <div class="col-md-11 xx">
          <form class="form-horizontal" name="form_ex" action="form_ex_add.php" method="post">
            <div class="form-group">
                <label for="firstname" class="col-md-2 control-label">姓名:</label>
                <div class="col-md-10">
                    <input type="text" autofocus required  class="form-control" id="realname" name="realname"
                           placeholder="请输入姓名">
                </div>
            </div>
            <div class="form-group">
                <label for="lastname" class="col-md-2 control-label">预约车型:</label>
                <div class="col-md-10">
                    <div class="btn-group">
                        <select id="car_style" name="car_style" class="select btn btn-default dropdown-toggle wi" data-toggle="dropdown">
                          <option value="812Superfast">812Superfast</option>
                          <option value="GTC4Lusso">GTC4Lusso</option>
                          <option value="488 GTB">488 GTB</option>
                          <option value="法拉利 488 Pista">法拉利 488 Pista</option>
                          <option value="法拉利 488 Pista Spider">法拉利 488 Pista Spider</option>
                          <option value="GTC4Lusso T">GTC4Lusso T</option>
                          <option value="法拉利 Portofino">法拉利 Portofino</option>
                          <option value="法拉利 Monza SP1">法拉利 Monza SP1</option>
                          <option value="法拉利 Monza SP2">法拉利 Monza SP2</option>
                          <option value="LaFerrari Aperta">LaFerrari Aperta</option>
                      </select>
                    </div>
                </div>
            </div>
            <div class="form-group">
                <label for="lastname" class="col-md-2 control-label">预约日期:</label>
                <div class="col-md-10">
                    <input type="text" autofocus required class="form-control" id="lastdata" name="lastdata"
                           placeholder="请选择日期">
                </div>
            </div>
            <div class="form-group">
                <label for="lastname" class="col-md-2 control-label">联系地址:</label> 
                <div class="col-md-10">
                    <input type="text" autofocus required  class="form-control" id="or_address" name="or_address" 
                           placeholder="请输入联系地址">
                </div>  
            </div>
        
            <div class="form-group">
                <div class="col-md-offset-2 col-md-6">
                    <input type="checkbox" id="yedu" value="yedu" onclick="danji()">我已阅读<a href="yuyue.html">预约须知</a>
                </div>
            </div>   
            <div class="form-group">
                <div class="col-md-offset-2 col-md-6">
                  <button type="submit" class="btn btn-default" id="qr" name="qr" disabled="disabled">确认预约</button>
               
                  <button type="button" class="btn btn-default" id="chakan" name="chakan">查看预约信息</button>
                </div>
            </div>
         </form>   
     </div>
   </div>
</div>
<iframe src="../footer.html" width="100%" style="height:350px; border:0"> </iframe>
</body>
</html>
<script>
var i=1;
function danji(){
    if(i==1){
	   document.getElementById("qr").disabled=false;
	   i=-i;	
	}else{
	   document.getElementById("qr").disabled=true;
	   i=-i;
	}
}
  lay('#version').html('-v'+ laydate.v);
  
  //执行一个laydate实例
  laydate.render({
	elem: '#lastdata' //指定元素
  });
</script>
