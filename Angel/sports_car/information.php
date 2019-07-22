<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
</head>

<body>
<div class="panel-group" id="accordion">
          <div class="panel panel-default">
            <div class="panel-heading">
              <h4 class="panel-title"> <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne">发动机</a> </h4>
            </div>
            <div id="collapseOne" class="panel-collapse collapse in">
              <div class="panel-body">
                <table class="table table-striped">
                  <tbody>
                    <tr>
                      <td width="50%" style="border-right:1px solid #CCC;">类型</td>
                      <td><?php echo $rows[3];?></td>
                    </tr>
                    <tr>
                      <td style="border-right:1px solid #CCC;">总排量</td>
                      <td><?php echo $rows[4];?></td>
                    </tr>
                    <tr>
                      <td style="border-right:1px solid #CCC;">缸径和冲程</td>
                      <td><?php echo $rows[5];?></td>
                    </tr>
                    <tr>
                      <td style="border-right:1px solid #CCC;">最大输出功率*</td>
                      <td><?php echo $rows[6];?></td>
                    </tr>
                    <tr>
                      <td style="border-right:1px solid #CCC;">峰值扭矩*</td>
                      <td><?php echo $rows[7];?></td>
                    </tr>
                    <tr>
                      <td style="border-right:1px solid #CCC;">最大转速（每分钟）</td>
                      <td><?php echo $rows[8];?></td>
                    </tr>
                    <tr>
                      <td style="border-right:1px solid #CCC;">压缩比</td>
                      <td><?php echo $rows[9];?></td>
                    </tr>
                  </tbody>
                </table>
              </div>
            </div>
          </div>
          <div class="panel panel-default">
            <div class="panel-heading">
              <h4 class="panel-title"> <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">尺寸和重量</a> </h4>
            </div>
            <div id="collapseTwo" class="panel-collapse collapse">
              <div class="panel-body">
                <table class="table table-striped">
                  <tbody>
                    <tr>
                      <td width="50%" style="border-right:1px solid #CCC;">车身长度</td>
                      <td><?php echo $rows[10];?></td>
                    </tr>
                    <tr>
                      <td style="border-right:1px solid #CCC;">车身宽度</td>
                      <td><?php echo $rows[11];?></td>
                    </tr>
                    <tr>
                      <td style="border-right:1px solid #CCC;">车身高度</td>
                      <td><?php echo $rows[12];?></td>
                    </tr>
                    <tr>
                      <td style="border-right:1px solid #CCC;">轴距</td>
                      <td><?php echo $rows[13];?></td>
                    </tr>
                    <tr>
                      <td style="border-right:1px solid #CCC;">前轮距</td>
                      <td><?php echo $rows[14];?></td>
                    </tr>
                    <tr>
                      <td style="border-right:1px solid #CCC;">后轮距</td>
                      <td><?php echo $rows[15];?></td>
                    </tr>
                    <tr>
                      <td style="border-right:1px solid #CCC;">总重**</td>
                      <td><?php echo $rows[16];?></td>
                    </tr>
                    <tr>
                      <td style="border-right:1px solid #CCC;">干重**</td>
                      <td><?php echo $rows[17];?></td>
                    </tr>
                    <tr>
                      <td style="border-right:1px solid #CCC;">重量分布</td>
                      <td><?php echo $rows[18];?></td>
                    </tr>
                    <tr>
                      <td style="border-right:1px solid #CCC;">油箱容积</td>
                      <td><?php echo $rows[19];?></td>
                    </tr>
                  </tbody>
                </table>
              </div>
            </div>
          </div>
          <div class="panel panel-default">
            <div class="panel-heading">
              <h4 class="panel-title"> <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree">轮胎和制动器</a> </h4>
            </div>
            <div id="collapseThree" class="panel-collapse collapse">
              <div class="panel-body">
                <table class="table table-striped">
                  <tbody>
                    <tr>
                      <td style="border-right:1px solid #CCC;">前轮胎</td>
                      <td><?php echo $rows[20];?></td>
                    </tr>
                    <tr>
                      <td style="border-right:1px solid #CCC;">后轮胎</td>
                      <td><?php echo $rows[21];?></td>
                    </tr>
                  <tbody>
                    <tr>
                      <td style="border-right:1px solid #CCC;">前制动</td>
                      <td><?php echo $rows[22];?></td>
                    </tr>
                    <tr>
                      <td style="border-right:1px solid #CCC;">后制动</td>
                      <td><?php echo $rows[23];?></td>
                    </tr>
                  </tbody>
                </table>
              </div>
            </div>
          </div>
          <div class="panel panel-default">
            <div class="panel-heading">
              <h4 class="panel-title"> <a data-toggle="collapse" data-parent="#accordion" href="#collapseFour">性能</a> </h4>
            </div>
            <div id="collapseFour" class="panel-collapse collapse">
              <div class="panel-body">
                <table class="table table-striped">
                  <tbody>
                    <tr>
                      <td style="border-right:1px solid #CCC;">最高时速</td>
                      <td><?php echo $rows[24];?></td>
                    </tr> 
                    <tr>
                      <td style="border-right:1px solid #CCC;">0-100 km/h</td>
                      <td><?php echo $rows[25];?></td>
                    </tr>
                    <tr>
                      <td style="border-right:1px solid #CCC;">0-200 km/h</td>
                      <td><?php echo $rows[26];?></td>
                    </tr>
                    <tr>
                      <td style="border-right:1px solid #CCC;">100-0 km/h</td>
                      <td><?php echo $rows[27];?></td>
                    </tr>
                    <tr>
                      <td style="border-right:1px solid #CCC;">干重/功率</td>
                      <td><?php echo $rows[28];?></td>
                    </tr> 
                  </tbody>
                </table>
              </div>
            </div>
          </div>
        </div>
</body>
</html>