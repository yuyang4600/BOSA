<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %> 
<!DOCTYPE html PUBLIC>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
  	<link href="css/bootstrap.min.css" rel="stylesheet">
  	<script src="jQuery/jquery-3.2.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <link href="css/csss.css" rel="stylesheet">
    
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title><s:text name="OpinionFeedback" /></title>
</head>
<body>
<div class="container-fluid">
			
	<div class="row clearfix">
		<div class="col-md-12 column">
		
			<img class="pull-left" alt="140x140" src="images/logo.png" />
			<div class="alert alert-dismissable alert-info pull-right service">
				客服：021-58387871<br>
				微信号：bosacompressor
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-md-12">
			<h1>
				阿特拉斯无油机头工作室
			</h1>
		</div>
	</div>
  		
	<form action="feedbackAction" method="post">
	<!-- 意见反馈 -->
	<h3 style="margin-left: 25%; margin-bottom: 0px; margin-top: 60px;">意见反馈 <small>Feedback</small></h3>
	<hr style="margin-top: 10px;"><br><br>
	
	<div class="row">
		<div class="col-md-3"></div>
		<div class="col-md-1"><span>反馈内容</span></div>
		<div class="col-md-5">
			<s:textarea name="feedback.feedback_text" rows="10" cols="80" placeholder="我们非常重视您的建议，请在这里填写告诉我们:"></s:textarea>
		</div>
		<div class="col-md-3"></div>
	</div>
	<br>
	<br>
	<div class="row">
		<div class="col-md-3"></div>
		<div class="col-md-1" style="padding-top: 13px;"><span>联系电话</span></div>
		<div class="col-md-2">
			<input type="text" name="feedback.phone_number" size="20" placeholder="请填写您的手机号码" style="padding: 9px 0px;" />
		</div>
		<div class="col-md-3" style="padding-top: 13px;"><span>(博撒将对您的联系方式严格保密)</span></div>
		<div class="col-md-3"></div>
	</div>
	
	<div style="text-align:center; margin-top: 50px;"><button type="submit" class="btn btn-primary btn-lg submit-btn"><s:text name="submit" /></button></div>
	
	</form>
 	
 	
 		<!--右侧固定-->
	<div class="right-fixed">
			<div class="online">
				<span>在线<br>咨询</span>
			</div>
			
			<a href="maintenanceAction">
				<div class="online">
					<span>维修<br>报价</span>
				</div>
			</a>
			
			<div class="online weixin" onmouseover="this.className = 'weixin on';" onmouseout="this.className = 'weixin';">
				
				<span>二维<br>码</span>
				
				<div class="weixin_nr">
			        <img src="images/weixin.jpg" width="100" height="100" />
			        关注官方微信
			    </div>
			</div>
			
			<a href="feedback.jsp">
				<div class="online">
					<span>意见<br>反馈</span>
				</div>
			</a>
		</div>
	<footer> 
		<div> 
				上海博撒压缩机有限公司<br>
			电话：021-58387871&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;邮件：sales@bosacompressor.com<br>
			网址：www.bosacompressor.com&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;公众号：bosacompressor
		</div>
	</footer>
</div>

</body>
</html>