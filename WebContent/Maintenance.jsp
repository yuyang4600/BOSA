<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %> 
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>BOSA</title>
	<link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/csss.css" rel="stylesheet">
    <script src="jQuery/jquery-3.2.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/json2.min.js"></script>
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
	<div class="row clearfix">
		<div class="col-md-12 column" style="margin-bottom: 20px;">
			 <div class="CN_US">
			    <form action="maintenanceAction?request_locale=zh_CN" method="post" class="pull-left">
			    	<input class="CN" name="zh_CN" type="submit" value="中文">
			    </form>
			    
			    <form action="maintenanceAction?request_locale=en_US" method="post" class="pull-left">
			    	<input class="US" name="en_US" type="submit" value="English">
			    </form>
	  		</div>
		</div>
		<div class="col-md-12 column">
			<nav class="navbar navbar-default" role="navigation">
				<div class="navbar-header">
					 <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button> <a class="navbar-brand" href="#"></a>
				</div>
				<div class="collapse navbar-collapse change-little" id="bs-example-navbar-collapse-1">
				
					<ul class="nav navbar-nav">
						<li class="active">
							 <a href="#panel-1" data-toggle="tab">维修报价</a>
						</li>
						<li>
							 <a href="#panel-2" data-toggle="tab">成功案例</a>
						</li>
						<li>
							 <a href="#panel-3" data-toggle="tab">标准工艺</a>
						</li>
						<li>
							 <a href="#panel-4" data-toggle="tab">工作室介绍</a>
						</li>
					</ul>
				
				</div>
			</nav>
			<div class="tab-content">
			
				<div class="tab-pane active" id="panel-1">
				<form role="form" action="saveMaintenanceAction" method="post">
					<div class="row clearfix">
						<div class="col-md-1 column">
							 <span class="not-null">必填</span> <br><br>
							 <span class="optional">选填</span>
						</div>
						<div class="col-md-3 column">
							<div class="row clearfix head-little">
								<div class="col-md-12 column ">
									<span>空压机基本信息</span>
								</div>
							</div>
							<div class="row clearfix">
								<div class="col-md-6 column">
									<div class="before-name">
								    	<span>品牌</span> 
								    </div><!-- /input-group -->
								</div>
								<div class="col-md-6 column">
									<div class="input-group">
								      	<input type="text" name="brand" id="brand_input" class="form-control brand" aria-label="...">
								      	<div class="input-group-btn">
								        	<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><span class="caret"></span></button>
								        	<ul class="dropdown-menu dropdown-menu-right" id="brand">
									          	<s:iterator value="#request.brand_options" var="o">
											       <li>${o}</li>
											    </s:iterator>
									        </ul>
								      	</div><!-- /btn-group -->
								    </div><!-- /input-group -->
								</div>
							</div>
							<div class="row clearfix">
								<div class="col-md-6 column">
									<div class="before-name">
								    	<span>机组冷却方式</span> 
								    </div><!-- /input-group -->
								</div>
								<div class="col-md-6 column">
									<div class="input-group">
								      	<input type="text" name="cooling_mode" class="form-control cooling_mode" id="cooling_mode_input" aria-label="...">
								      	<div class="input-group-btn">
								        	<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><span class="caret"></span></button>
								        	<ul class="dropdown-menu dropdown-menu-right" id="cooling_mode">
									          	<s:iterator value="#request.cooling_mode_options" var="o">
											       <li>${o}</li>
											    </s:iterator>
									        </ul>
								      	</div><!-- /btn-group -->
								    </div><!-- /input-group -->
								</div>
							</div>
							<div class="row clearfix">
								<div class="col-md-6 column">
									<div class="before-name">
								    	<span>机组型号</span> 
								    </div><!-- /input-group -->
								</div>
								<div class="col-md-6 column">
									<div class="input-group">
								      	<input type="text" name="unit_model" class="form-control Unit_model" aria-label="...">
								      	<div class="input-group-btn">
								        	<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><span class="caret"></span></button>
								        	<ul class="dropdown-menu dropdown-menu-right" id="Unit_model">
									          	<s:iterator value="#request.Unit_model_options" var="o">
											       <li>${o}</li>
											    </s:iterator>
									        </ul>
								      	</div><!-- /btn-group -->
								    </div><!-- /input-group -->
								</div>
							</div>
							<div class="row clearfix">
								<div class="col-md-6 column">
									<div class="before-name">
								    	<span>机组生产日期</span> 
								    </div><!-- /input-group -->
								</div>
								<div class="col-md-6 column">
									<div class="input-group">
								      	<input type="text" name="production_date" class="form-control Unit_date" aria-label="...">
								      	<div class="input-group-btn">
								        	<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><span class="caret"></span></button>
								        	<ul class="dropdown-menu dropdown-menu-right" id="Unit_date">
									          	<s:iterator value="#request.production_date_options" var="o">
												   <li>${o}</li>
												</s:iterator>
									        </ul>
								      	</div><!-- /btn-group -->
								    </div><!-- /input-group -->
								</div>
							</div>
							<div class="row clearfix">
								<div class="col-md-6 column">
									<div class="before-name">
								    	<span>机组排气压力</span> 
								    </div><!-- /input-group -->
								</div>
								<div class="col-md-6 column">
									<div class="input-group">
								      	<input type="text" name="exhaust_pressure" class="form-control exhaust_pressure" aria-label="...">
								      	<div class="input-group-btn">
								        	<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><span class="caret"></span></button>
								        	<ul class="dropdown-menu dropdown-menu-right" id="exhaust_pressure">
									          	<s:iterator value="#request.exhaust_pressure_options" var="o">
											       <li>${o}</li>
											    </s:iterator>
									        </ul>
								      	</div><!-- /btn-group -->
								    </div><!-- /input-group -->
								</div>
							</div>
							<div class="row clearfix">
								<div class="col-md-6 column">
									<div class="before-name">
								    	<span>一级机头运行时间</span> 
								    </div><!-- /input-group -->
								</div>
								<div class="col-md-6 column">
									<div class="input-group">
								      	<input type="text" name="first_handpiece_time" class="form-control Running_time_first" aria-label="...">
								      	<div class="input-group-btn">
								        	<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><span class="caret"></span></button>
								        	<ul class="dropdown-menu dropdown-menu-right" id="Running_time_first">
									          	<s:iterator value="#request.first_handpiece_time_options" var="o">
												   <li>${o}</li>
												</s:iterator>
									        </ul>
								      	</div><!-- /btn-group -->
								    </div><!-- /input-group -->
								</div>
							</div>
							<div class="row clearfix">
								<div class="col-md-6 column">
									<div class="before-name">
								    	<span>二级机头运行时间</span> 
								    </div><!-- /input-group -->
								</div>
								<div class="col-md-6 column">
									<div class="input-group">
								      	<input type="text" name="second_handpiece_time" class="form-control Running_time_second" aria-label="...">
								      	<div class="input-group-btn">
								        	<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><span class="caret"></span></button>
								        	<ul class="dropdown-menu dropdown-menu-right" id="Running_time_second">
									          	<s:iterator value="#request.second_handpiece_time_options" var="o">
												    <li>${o}</li>
												</s:iterator>
									        </ul>
								      	</div><!-- /btn-group -->
								    </div><!-- /input-group -->
								</div>
							</div>
							<div class="row clearfix">
								<div class="col-md-6 column">
									<div class="before-name">
								    	<span>机头序列号</span> 
								    </div><!-- /input-group -->
								</div>
								<div class="col-md-6 column">
									<div class="input-group">
								      	<input type="text" name="handpiece_serial_no" class="form-control handpiece_serial_number" aria-label="...">
								      	<div class="input-group-btn">
								        	<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><span class="caret"></span></button>
								        	<ul class="dropdown-menu dropdown-menu-right" id="handpiece_serial_number">
									          	<s:iterator value="#request.handpiece_serial_no_options" var="o">
												    <li>${o}</li>
												</s:iterator>
									        </ul>
								      	</div><!-- /btn-group -->
								    </div><!-- /input-group -->
								</div>
							</div>
							<div class="row clearfix">
								<div class="col-md-6 column">
									<div class="before-name optional-color">
								    	<span>机组序列号</span> 
								    </div><!-- /input-group -->
								</div>
								<div class="col-md-6 column">
									<div class="input-group">
								      	<input type="text" name="crew_serial_number" class="form-control Crew_serial_number" aria-label="..." style="background-color: #c1c1c1">
								      	<div class="input-group-btn" >
								        	<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="background-color: #c1c1c1"><span class="caret"></span></button>
								        	<ul class="dropdown-menu dropdown-menu-right" id="Crew_serial_number">
									          	<s:iterator value="#request.crew_serial_no_options" var="o">
												    <li>${o}</li>
												</s:iterator>
									        </ul>
								      	</div><!-- /btn-group -->
								    </div><!-- /input-group -->
								</div>
							</div>
						</div>
						<!--故障信息-->
						<div class="col-md-4 column">
							<div class="row clearfix head-little">
								<div class="col-md-12 column ">
									<span>故障信息</span>
								</div>
							</div>
							<div class="row clearfix">
								<div class="col-md-6 column">
									<div class="before-name">
								    	<span>一级排气温度</span> 
								    </div><!-- /input-group -->
								</div>
								<div class="col-md-6 column">
									<div class="input-group">
								      	<input type="text" name="first_exhaust_temperature" class="form-control first_exhaust_temperature" aria-label="...">
								      	<div class="input-group-btn">
								        	<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><span class="caret"></span></button>
								        	<ul class="dropdown-menu dropdown-menu-right" id="first_exhaust_temperature">
									          	<s:iterator value="#request.fault_info" var="o">
												    <li>${o}</li>
												</s:iterator>
									        </ul>
								      	</div><!-- /btn-group -->
								    </div><!-- /input-group -->
								</div>
							</div>
							<div class="row clearfix">
								<div class="col-md-6 column">
									<div class="before-name">
								    	<span>二级排气温度</span> 
								    </div><!-- /input-group -->
								</div>
								<div class="col-md-6 column">
									<div class="input-group">
								      	<input type="text" name="second_exhaust_temperature" class="form-control second_exhaust_temperature" aria-label="...">
								      	<div class="input-group-btn">
								        	<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><span class="caret"></span></button>
								        	<ul class="dropdown-menu dropdown-menu-right" id="second_exhaust_temperature">
									          	<s:iterator value="#request.fault_info" var="o">
												    <li>${o}</li>
												</s:iterator>
									        </ul>
								      	</div><!-- /btn-group -->
								    </div><!-- /input-group -->
								</div>
							</div>
							<div class="row clearfix">
								<div class="col-md-6 column">
									<div class="before-name">
								    	<span>一级排气压力</span> 
								    </div><!-- /input-group -->
								</div>
								<div class="col-md-6 column">
									<div class="input-group">
								      	<input type="text" name="first_exhaust_pressure" class="form-control first_exhaust_pressure" aria-label="...">
								      	<div class="input-group-btn">
								        	<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><span class="caret"></span></button>
								        	<ul class="dropdown-menu dropdown-menu-right" id="first_exhaust_pressure">
									          	<s:iterator value="#request.fault_info" var="o">
												    <li>${o}</li>
												</s:iterator>
									        </ul>
								      	</div><!-- /btn-group -->
								    </div><!-- /input-group -->
								</div>
							</div>
							<div class="row clearfix">
								<div class="col-md-6 column">
									<div class="before-name">
								    	<span>二级排气压力</span> 
								    </div><!-- /input-group -->
								</div>
								<div class="col-md-6 column">
									<div class="input-group">
								      	<input type="text" name="second_exhaust_pressure" class="form-control second_exhaust_pressure" aria-label="...">
								      	<div class="input-group-btn">
								        	<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><span class="caret"></span></button>
								        	<ul class="dropdown-menu dropdown-menu-right" id="second_exhaust_pressure">
									          	<s:iterator value="#request.fault_info" var="o">
												    <li>${o}</li>
												</s:iterator>
									        </ul>
								      	</div><!-- /btn-group -->
								    </div><!-- /input-group -->
								</div>
							</div>
							<div class="row clearfix">
								<div class="col-md-6 column">
									<div class="before-name optional-color">
								    	<span>润滑油温度</span> 
								    </div><!-- /input-group -->
								</div>
								<div class="col-md-6 column">
									<div class="input-group">
								      	<input type="text" name="lubricating_oil_temperature" class="form-control oil_temperature" aria-label="..." style="background-color: #c1c1c1">
								      	<div class="input-group-btn">
								        	<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="background-color: #c1c1c1"><span class="caret"></span></button>
								        	<ul class="dropdown-menu dropdown-menu-right" id="oil_temperature">
									          	<s:iterator value="#request.fault_info" var="o">
												    <li>${o}</li>
												</s:iterator>
									        </ul>
								      	</div><!-- /btn-group -->
								    </div><!-- /input-group -->
								</div>
							</div>
							<div class="row clearfix">
								<div class="col-md-6 column">
									<div class="before-name optional-color">
								    	<span>润滑油压力</span> 
								    </div><!-- /input-group -->
								</div>
								<div class="col-md-6 column">
									<div class="input-group">
								      	<input type="text" name="lubricating_oil_pressure" class="form-control oil_pressure" aria-label="..." style="background-color: #c1c1c1">
								      	<div class="input-group-btn">
								        	<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="background-color: #c1c1c1"><span class="caret"></span></button>
								        	<ul class="dropdown-menu dropdown-menu-right" id="oil_pressure">
									          	<s:iterator value="#request.fault_info" var="o">
												    <li>${o}</li>
												</s:iterator>
									        </ul>
								      	</div><!-- /btn-group -->
								    </div><!-- /input-group -->
								</div>
							</div>
							<div class="row clearfix">
								<div class="col-md-6 column">
									<div class="before-name optional-color">
								    	<span>冷却水进口温度</span> 
								    </div><!-- /input-group -->
								</div>
								<div class="col-md-6 column">
									<div class="input-group">
								      	<input type="text" name="cooling_water_in_temperature" class="form-control cooling_water_in_T" aria-label="..." style="background-color: #c1c1c1">
								      	<div class="input-group-btn">
								        	<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="background-color: #c1c1c1"><span class="caret"></span></button>
								        	<ul class="dropdown-menu dropdown-menu-right" id="cooling_water_in_T">
									          	<s:iterator value="#request.fault_info" var="o">
												    <li>${o}</li>
												</s:iterator>
									        </ul>
								      	</div><!-- /btn-group -->
								    </div><!-- /input-group -->
								</div>
							</div>
							<div class="row clearfix">
								<div class="col-md-6 column">
									<div class="before-name optional-color">
								    	<span>冷却水出口温度</span> 
								    </div><!-- /input-group -->
								</div>
								<div class="col-md-6 column">
									<div class="input-group">
								      	<input type="text" name="cooling_water_out_temperature" class="form-control cooling_water_out_T" aria-label="..." style="background-color: #c1c1c1">
								      	<div class="input-group-btn">
								        	<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="background-color: #c1c1c1"><span class="caret"></span></button>
								        	<ul class="dropdown-menu dropdown-menu-right" id="cooling_water_out_T">
									          	<s:iterator value="#request.fault_info" var="o">
												    <li>${o}</li>
												</s:iterator>
									        </ul>
								      	</div><!-- /btn-group -->
								    </div><!-- /input-group -->
								</div>
							</div>
						</div>
						<!--联系信息-->
						<div class="col-md-3 column">
							<div class="row clearfix head-little">
								<div class="col-md-12 column ">
									<span>联系人信息</span>
								</div>
							</div>
							<div class="row clearfix">
								<div class="col-md-6 column">
									<div class="before-name">
								    	<span>企业名称</span> 
								    </div><!-- /input-group -->
								</div>
								<div class="col-md-6 column">
									<div class="input-group">
								      	<input type="text" name="enterprise" class="form-control" aria-label="...">
								    </div><!-- /input-group -->
								</div>
							</div>
							<div class="row clearfix">
								<div class="col-md-6 column">
									<div class="before-name">
								    	<span>联系人姓名</span> 
								    </div><!-- /input-group -->
								</div>
								<div class="col-md-6 column">
									<div class="input-group">
								      	<input type="text" name="contact_name" class="form-control" aria-label="...">
								    </div><!-- /input-group -->
								</div>
							</div>
							<div class="row clearfix">
								<div class="col-md-6 column">
									<div class="before-name">
								    	<span>手机</span> 
								    </div><!-- /input-group -->
								</div>
								<div class="col-md-6 column">
									<div class="input-group">
								      	<input type="text" name="phone_number" class="form-control" aria-label="...">
								    </div><!-- /input-group -->
								</div>
							</div>
							<div class="row clearfix">
								<div class="col-md-6 column">
									<div class="before-name">
								    	<span>微信号</span> 
								    </div><!-- /input-group -->
								</div>
								<div class="col-md-6 column">
									<div class="input-group">
								      	<input type="text" name="wechat_number" class="form-control" aria-label="...">
								    </div><!-- /input-group -->
								</div>
							</div>
							<div class="row clearfix">
								<div class="col-md-6 column">
									<div class="before-name optional-color">
								    	<span>QQ号</span> 
								    </div><!-- /input-group -->
								</div>
								<div class="col-md-6 column">
									<div class="input-group">
								      	<input type="text" name="QQ" class="form-control" aria-label="..." style="background-color: #c1c1c1">
								    </div><!-- /input-group -->
								</div>
							</div>
							<div class="row clearfix">
								<div class="col-md-6 column">
									<div class="before-name optional-color">
								    	<span>职能</span> 
								    </div><!-- /input-group -->
								</div>
								<div class="col-md-6 column">
									<div class="input-group">
								      	<input type="text" name="job" class="form-control" aria-label="..." style="background-color: #c1c1c1">
								    </div><!-- /input-group -->
								</div>
							</div>
							<div class="row clearfix">
								<div class="col-md-6 column">
									<div class="before-name optional-color">
								    	<span>职务</span> 
								    </div><!-- /input-group -->
								</div>
								<div class="col-md-6 column">
									<div class="input-group">
								      	<input type="text" name="duties" class="form-control" aria-label="..." style="background-color: #c1c1c1">
								    </div><!-- /input-group -->
								</div>
							</div>
							
						</div>
						<div class="col-md-1 column">
						</div>
					</div>
					<div class="row clearfix">
						<div class="col-md-1 column">
						
						</div>
						<div class="col-md-7 column" style="padding: 0 3px;">
							<textarea name="fault_info" style="width: 100%; height: 123px;" placeholder="故障描述:"></textarea>
						</div>
						<div class="col-md-3 column maintenance_Description">
							<p>	
								机头维修报价说明：<br>
								-请真实清晰地填写相关信息；<br>
								-报价信息基于您填写地信息；<br>
								-报价信息会发送到您的手机；<br><br>
							</p>
						</div>
						<div class="col-md-1 column">
						</div>
					</div>
					<div class="row clearfix">
						<div class="col-md-12 column submit-btn-div">
							<button type="submit" class="btn btn-primary btn-lg submit-btn" onclick="return check(this.form)">开始计算</button>
						</div>
					</div>
				</form>
				</div>
				
				<div class="tab-pane" id="panel-2">
					<div class="row successCase-text">
			  			<div class="col-md-2"></div>
			  			<div class="col-md-3"><br><br><p>无油转子维修案例</p><br><img alt="空压机" src="images/air.png"></div>
			  			<div class="col-md-5">
				  			<p>
					  			<strong>时间：2015年6月     行业：医用材料，上海     机型：阿特拉斯ZR250，8.6 bar </strong><br>
								<strong>故障现象：</strong>中间压力低至1.7bar，判断低压转子效率严重下降；拆机后确认，由于排气端轴承损坏，导致转子偏离正常轴向运行位置，造成(1) 密封不正常磨损失去密封作用；从而造成气体泄漏量增加，排气量减小并伴有润滑油进入压缩腔；(2) 阴阳转子的排气端部分碰擦，致使涂层脱落，型面磨损；<br>(3) 压缩空气内含油，导致排气口后管路，冷却器和管道连接部件污染；<br>
								<strong>维修方案：</strong>经过判断，主机进行大修，更换所有轴承，密封；修正型面，重建涂层；管路部分和冷却器等部件进行清洗；<br>
								<strong>维修效果：</strong>低压转子运行正常；机组运行正常，经过检测，压缩空气品质回复到正常值。

			  				</p>
			  			</div>
			  			<div class="col-md-2"></div>
			  		</div>
			  		<div class="row successCase-text">
			  			<div class="col-md-2"></div>
			  			<div class="col-md-5">
			  				
							<p>
							<br>
							<strong>时间：2012年7月     行业：纺织行业，山东    机型：阿特拉斯ZR160 VSD，10bar</strong><br>

							<strong>故障现象：</strong>中间压力高至2.8bar，导致频繁高温报警停机；判断高压转子效率严重下降；拆机后确定，由于长时间停机，导致机壳和螺杆排气端部分严重锈蚀，不具备维修价值；<br>
							<strong>维修方案：</strong>建议采用博撒生产的全新高压转子替换原有高压转子；<br>
							<strong>替换效果：</strong>高压转子运行至今已经有5年多；机组运行正常；
							<br><br><br><br>
			  				</p>
			  			</div>
			  			<div class="col-md-3""><br><br><p>全新无油转子替换案例</p><br><img alt="空压机" src="images/air.png"></div>
			  			<div class="col-md-2"></div>
			  		</div>
			  		
				</div>
				<div class="tab-pane" id="panel-3">
					<div class="row successCase-text" style="margin-bottom: 60px;">
			  			<div class="col-md-2"></div>
			  			<div class="col-md-3"><center><img alt="空压机" src="images/air.png"></center></div>
			  			<div class="col-md-5">
			  				<p>
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
				</div>
				<div class="tab-pane" id="panel-4">
					<div class="row successCase-text">
			  			<div class="col-md-2"></div>
			  			<div class="col-md-3" style="text-align: center;"><br><br><img alt="空压机" src="images/air.png"></div>
			  			<div class="col-md-5">
			  				<p>
			  				
			  				<strong>团队背景：</strong>位于上海；团队成员具备10多年以上专业的干式无油螺杆空压机设计，制造与维修丰富的经验；<br>
							<strong>能力：</strong>设计，制造和维修干式无油螺杆主机与整机<br>
							<strong>装备：</strong>开发和拥有专门的全套生产装配用设备，工装与检测装置，用于检测，调试和装配；比如无油主机转子专用啮合仪；无油主机专用装配台、装配工具和工装；涂层专用检测设备；高转速高精度动平衡试验机；主机测试台等；<br>
			  				<br>
			  				</p>
			  			</div>
			  			<div class="col-md-2"></div>
			  		</div>
				</div>
			</div>
		</div>
	</div>
	
	<!-- 遮罩层 -->
	<a id="modal-816325" href="#modal-container-816325" role="button" class="btn" data-toggle="modal" style="display: none;"></a>
			
	<div class="modal fade" id="modal-container-816325" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					 <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
					<h4 class="modal-title" id="myModalLabel">
						您好
					</h4>
				</div>
				<div class="modal-body">
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;根据您提供的信息，您主机的维修费用预计是[  ${price_first }  ]万,
				维修内容包括：涂层重建，更换全部轴承，全部密封，重新调整转子动平衡，重新调整转子，壳体之间各个间隙。
				</div>
				<div class="modal-footer">
					 <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
				</div>
			</div>
		</div>
	</div>
	
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
<script type="text/javascript">

<!--将下拉菜单选中值填到对应输入框-->
$("ul").on("click","li",function(){ 
	if(($(this).parent().attr("id")) == "cooling_mode") {
		var brand = $("#brand_input").val();
		if(brand == "") {
			alert("请先选择品牌");
		}else {
			var vall = $(this).text();
			var idd = $(this).parent().attr("id");
			$("." + idd).val(vall);
		}
	}else if(($(this).parent().attr("id")) == "Unit_model") {
		var cooling_mode = $("#cooling_mode_input").val();
		if(cooling_mode == "") {
			alert("请先选择机组冷却方式");
		}else {
			var vall = $(this).text();
			var idd = $(this).parent().attr("id");
			$("." + idd).val(vall);
		}
	}else {
		var vall = $(this).text();
		var idd = $(this).parent().attr("id");
		$("." + idd).val(vall);
	}
 });
 
$("#brand").on("click","li",function(){ 

	var brand = $(this).text();

	$.ajax({
		type: "post",
		url: 'ajax_brand',
		data: {
			brand_name: brand
		},
		success: function(data) {
			$("#Unit_model").find("li").remove();
			/*	移除li的方法
				1.$('ul li').remove();
				2.$('ul li').each(function(){
				    $(this).remove();
				}); 
				3.$("ul").find("li").remove(); 
				4.$('ul').children().filter('li').remove();
			*/
			var array = new Array();
			var data = data.substring(1,data.length - 1); 
			array = data.split(", ");
			for(var i = 0; i < array.length; i ++) {
				document.getElementById('Unit_model').innerHTML+='<li>' + array[i] + '</li>';
			}
		}
	});
 });
 
$("#cooling_mode").on("click","li",function(){
	var cooling_mode = $(this).text();
	var brand = $("#brand_input").val();
	if(brand == "阿特拉斯") {
	$.ajax({
		type: "post",
		url: 'ajax_cooling_mode',
		data: {
			cooling_mode_name: cooling_mode
		},
		success: function(data) {
			$("#Unit_model").find("li").remove();
			/*	移除li的方法
				1.$('ul li').remove();
				2.$('ul li').each(function(){
				    $(this).remove();
				}); 
				3.$("ul").find("li").remove(); 
				4.$('ul').children().filter('li').remove();
			*/
			var array = new Array();
			var data = data.substring(1,data.length - 1); 
			array = data.split(", ");
			for(var i = 0; i < array.length; i ++) {
				document.getElementById('Unit_model').innerHTML+='<li>' + array[i] + '</li>';
			}
		}
	});
	}
});

/*触发遮罩层*/
var msg=""+'${request.success}'; 
var price_first = "" + '${request.price_first}'
var price_second = "" + '${request.price_second}'
if(msg!="")
	document.getElementById("modal-816325").click();

function check(form) {
	if(form.brand.value=="") {
		 alert("请输入必填项");
		 return false;
	 }
	 if(form.cooling_mode.value=="") {
		 alert("请输入必填项");
		 return false;
	 }
	 if(form.unit_model.value=="") {
		 alert("请输入必填项");
		 return false;
	 }
	 if(form.production_date.value=="") {
		 alert("请输入必填项");
		 return false;
	 }
	 if(form.exhaust_pressure.value=="") {
		 alert("请输入必填项");
		 return false;
	 }
	 if(form.first_handpiece_time.value=="") {
		 alert("请输入必填项");
		 return false;
	 }
	 if(form.second_handpiece_time.value=="") {
		 alert("请输入必填项");
		 return false;
	 }
	 if(form.handpiece_serial_no.value=="") {
		 alert("请输入必填项");
		 return false;
	 }
	 if(form.first_exhaust_temperature.value=="") {
		 alert("请输入必填项");
		 return false;
	 }
	 if(form.second_exhaust_temperature.value=="") {
		 alert("请输入必填项");
		 return false;
	 }
	 if(form.first_exhaust_pressure.value=="") {
		 alert("请输入必填项");
		 return false;
	 }
	 if(form.second_exhaust_pressure.value=="") {
		 alert("请输入必填项");
		 return false;
	 }
	 if(form.enterprise.value=="") {
		 alert("请输入必填项");
		 return false;
	 }
	 if(form.contact_name.value=="") {
		 alert("请输入必填项");
		 return false;
	 }
	 if(form.phone_number.value=="") {
		 alert("请输入必填项");
		 return false;
	 }
	 if(form.wechat_number.value=="") {
		 alert("请输入必填项");
		 return false;
	 }
	 return true;
}
</script>
</html>