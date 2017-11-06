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
<title><s:text name="Successful_case" /></title>
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
  			<a href="successCaseAction"><span class="col-md-2 head_title"><s:text name="Successful_case" /></span></a>
  			<a href="standard_processAction"><span class="col-md-2 head_title little_titleColor"><s:text name="Standard_process" /></span></a>
  			<a href="studioAction"><span class="col-md-2 head_title little_titleColor"><s:text name="Studio_introduction" /></span></a>
  			<div class="col-md-2"></div>
  		</div>
  		
  		<div class="row" style="margin-top: 40px;">
  			<div class="col-md-2"></div>
  			<div class="col-md-3" style="text-align: center;"><br><br><p>无油转子维修案例</p><br><img alt="空压机" src="image/air.png"></div>
  			<div class="col-md-5">
	  			<p style="border: 1px solid #000; padding: 10px 10px; line-height: 26px;">
	  			<strong>时间：2015年6月     行业：医用材料，上海     机型：阿特拉斯ZR250，8.6 bar </strong><br>
				<strong>故障现象：</strong>中间压力低至1.7bar，判断低压转子效率严重下降；拆机后确认，由于排气端轴承损坏，导致转子偏离正常轴向运行位置，造成(1) 密封不正常磨损失去密封作用；从而造成气体泄漏量增加，排气量减小并伴有润滑油进入压缩腔；(2) 阴阳转子的排气端部分碰擦，致使涂层脱落，型面磨损；<br>(3) 压缩空气内含油，导致排气口后管路，冷却器和管道连接部件污染；<br>
				<strong>维修方案：</strong>经过判断，主机进行大修，更换所有轴承，密封；修正型面，重建涂层；管路部分和冷却器等部件进行清洗；<br>
				<strong>维修效果：</strong>低压转子运行正常；机组运行正常，经过检测，压缩空气品质回复到正常值。

  				</p>
  			</div>
  			<div class="col-md-2"></div>
  		</div>
  		<div class="row" style="margin-top: 40px;">
  			<div class="col-md-2"></div>
  			<div class="col-md-5">
  				
				<p style="border: 1px solid #000; padding: 10px 10px; line-height: 26px;">
				<br>
				<strong>时间：2012年7月     行业：纺织行业，山东    机型：阿特拉斯ZR160 VSD，10bar</strong><br>

				<strong>故障现象：</strong>中间压力高至2.8bar，导致频繁高温报警停机；判断高压转子效率严重下降；拆机后确定，由于长时间停机，导致机壳和螺杆排气端部分严重锈蚀，不具备维修价值；<br>
				<strong>维修方案：</strong>建议采用博撒生产的全新高压转子替换原有高压转子；<br>
				<strong>替换效果：</strong>高压转子运行至今已经有5年多；机组运行正常；
				<br><br><br><br>
  				</p>
  			</div>
  			<div class="col-md-3" style="text-align: center;"><br><br><p>全新无油转子替换案例</p><br><img alt="空压机" src="image/air.png"></div>
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