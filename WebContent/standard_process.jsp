<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %> 
<!DOCTYPE html PUBLIC>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
  	<link href="CSS/bootstrap.min.css" rel="stylesheet">
  	<script src="jQuery/jquery-3.2.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <link href="CSS/css.css" rel="stylesheet">
    
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title><s:text name="Standard_process" /></title>
</head>
<body>
	<div class="container-fluid">
		<div class="head">
  			<img style="display: inline;" width="200px" height="50px" src="image/LOGO.png" class="img-responsive" alt="博撒">
  			<div class="contact">
  				<s:text name="custom_service" />：021-58387871<br>
  				<s:text name="Wechat_number" />：bosacompressor</div>
  		</div>
  		<div class="title"><h1><s:text name="Big_title" /></h1></div>
  		
  		<div class="CN_US">
		    <form action="maintenanceAction?request_locale=zh_CN" method="post">
		    	<input class="CN" name="zh_CN" type="submit" value="中文">
		    </form>
		    
		    <form action="maintenanceAction?request_locale=en_US" method="post">
		    	<input class="US" name="en_US" type="submit" value="English">
		    </form>
  		</div>
  		<div class="row">
  			<div class="col-md-2"></div>
  			<a href="maintenanceAction"><span class="col-md-2 head_title little_titleColor"><s:text name="Maintenance_quotation" /></span></a>
  			<a href="successCaseAction"><span class="col-md-2 head_title little_titleColor"><s:text name="Successful_case" /></span></a>
  			<a href="standard_processAction"><span class="col-md-2 head_title"><s:text name="Standard_process" /></span></a>
  			<a href="studioAction"><span class="col-md-2 head_title little_titleColor"><s:text name="Studio_introduction" /></span></a>
  			<div class="col-md-2"></div>
  		</div>
  		
  		<div class="row" style="margin-top: 40px; margin-bottom: 60px;">
  			<div class="col-md-2"></div>
  			<div class="col-md-3"><center><img alt="空压机" src="image/air.png"></center></div>
  			<div class="col-md-5">
  				<p style="border: 1px solid #000; padding: 10px 10px; line-height: 26px;">
  					由于干式无油螺杆（空压机）的工作特点是：转子转速高（普遍>10000rpm，甚至近20000rpm），并且压缩腔内没有润滑油参与润滑与散热。因此，无油主机的制造与维修的工艺要求较喷油螺杆高许多。这里介绍部分关键工艺要求。
  				    <br><br>
  				</p>
			</div>
  			<div class="col-md-2"></div>
  		</div>
  		<div class="row">
  		<div class="col-md-2"></div>
  		<div class="col-md-8">
  			<table class="table table-bordered">
  				<tr>
  					<td>重要工艺环节</td>
  					<td>干式无油螺杆</td>
  					<td>喷油螺杆</td>
  					<td>备注</td>
  				</tr>
  				<tr>
  					<td>转子动平衡</td>
  					<td>参照离心机叶轮标准</td>
  					<td>低速标准</td>
  					<td>转速相差3~9倍</td>
  				</tr>
  				<tr>
  					<td>转子，机壳相互配合间隙</td>
  					<td>压缩腔内部温度高和温差不均匀导致材料膨胀,不均匀-间隙变化大</td>
  					<td>压缩腔内部温度相对低，温差接近，间隙相对均匀</td>
  					<td>工作状态下，压缩腔温度相差2~4倍</td>
  				</tr>
  				<tr>
  					<td>转子，压缩腔表面处理</td>
  					<td>转子与机壳均采用涂层进行表面处理</td>
  					<td>无需特别处理</td>
  					<td>涂层涉及结合力，耐磨性和转子间啮合间隙</td>
  				</tr>
  			</table>
  		</div>
  		<div class="col-md-2"></div>
  		</div>
  		<div class="row" style="margin-top: 20px;">
  			<div class="col-md-3"></div>
  			<div class="col-md-6">
  				<div class="Contact_Company2">
					<s:text name="BOSA" /><br>
					<s:text name="phone" />：021-58387871
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<s:text name="Email" />：sales@bosacompressor.com<br/>
					<s:text name="Website" />：www.bosacompressor.com&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<s:text name="Public_sign" />: bosacompressor
				</div>
  			</div>
  			<div class="col-md-3"></div>
  		</div>
  		
  		
  		<!-- 右侧固定 -->
		<div class="right-fixed">
			<div class="online">
				<s:text name="Online" /><br>
				<s:text name="consulting" />
			</div>
			
			<div class="online">
				<s:text name="maintance" /><br>
				<s:text name="offer" />
			</div>
			
			<div class="online">
				<s:text name="QR" /><br>
				<s:text name="code" />
			</div>
			
			<div class="online">
				<s:text name="Opinion" /><br>
				<s:text name="feedback" />
			</div>
		</div>
  	</div>
</body>
</html>