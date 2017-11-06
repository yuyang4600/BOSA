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
<title><s:text name="Studio_introduction" /></title>
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
  			<a href="standard_processAction"><span class="col-md-2 head_title little_titleColor"><s:text name="Standard_process" /></span></a>
  			<a href="studioAction"><span class="col-md-2 head_title "><s:text name="Studio_introduction" /></span></a>
  			<div class="col-md-2"></div>
  		</div>
  		
  		<div class="row" style="margin-top: 40px;">
  			<div class="col-md-2"></div>
  			<div class="col-md-3" style="text-align: center;"><br><br><img alt="空压机" src="image/air.png"></div>
  			<div class="col-md-5">
  				<p style="border: 1px solid #000; padding: 10px 10px; line-height: 26px;">
  				
  				<strong>团队背景：</strong>位于上海；团队成员具备10多年以上专业的干式无油螺杆空压机设计，制造与维修丰富的经验；<br>
				<strong>能力：</strong>设计，制造和维修干式无油螺杆主机与整机<br>
				<strong>装备：</strong>开发和拥有专门的全套生产装配用设备，工装与检测装置，用于检测，调试和装配；比如无油主机转子专用啮合仪；无油主机专用装配台、装配工具和工装；涂层专用检测设备；高转速高精度动平衡试验机；主机测试台等；<br>
  				<br>
  				</p>
  			</div>
  			<div class="col-md-2"></div>
  		</div>
  		<div class="row" style="position: fixed; bottom: 0; left: 50px;">
  			<div class="col-md-5"></div>
  			<div class="col-md-4">
  				<div class="Contact_Company2">
					<s:text name="BOSA" /><br>
					<s:text name="phone" />：021-58387871p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<s:text name="Email" />：sales@bosacompressor.com<br/>
					<s:text name="Website" />：www.bosacompressor.com&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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