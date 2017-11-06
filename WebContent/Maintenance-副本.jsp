<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib prefix="s" uri="/struts-tags" %> 
<!DOCTYPE HTML>
<html>
  <head>
  	
  	<meta name="viewport" content="width=device-width, initial-scale=1.0">
  	<meta http-equiv="X-UA-Compatible" content="IE=edge,Chrome=1" />
  	<link href="CSS/bootstrap.min.css" rel="stylesheet">
  	<script src="jQuery/jquery-3.2.1.min.js"></script>
  	<script src="http://www.jq22.com/jquery/jquery-1.6.2.js"></script>
    <script src="js/bootstrap.min.js"></script>
    
    <link href="CSS/css.css" rel="stylesheet">
  	
    <base href="<%=basePath%>">
    
    <title><s:text name="Big_title"/></title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" href="CSS/reveal.css">	
	<script src="js/jquery.reveal.js"></script>
	<style type="text/css">

		body { font-family: "HelveticaNeue","Helvetica-Neue", "Helvetica", "Arial", sans-serif; }

		.big-link { display: none; margin-top: 100px; text-align: center; font-size: 70px; color: #06f; }

	</style>
  </head>
  
  <body>
  
  <s:form action="saveMaintenanceAction" method="post">
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
  			<a href="maintenanceAction"><span class="col-md-2 head_title"><s:text name="Maintenance_quotation" /></span></a>
  			<a href="successCaseAction"><span class="col-md-2 head_title little_titleColor"><s:text name="Successful_case" /></span></a>
  			<a href="standard_processAction"><span class="col-md-2 head_title little_titleColor"><s:text name="Standard_process" /></span></a>
  			<a href="studioAction"><span class="col-md-2 head_title little_titleColor"><s:text name="Studio_introduction" /></span></a>
  			<div class="col-md-2"></div>
  		</div>
  		<br>
  		
  		
  		<div class="row">
  			<!-- 选填，必填 -->
  			<div class="col-md-1 head_little_title" style="padding-left: 20px; cursor: pointer;">
				<div style="border: 1px solid #000; text-align: center; width: 28px;  margin-right:10px; float: left;"><s:text name="mandatory" /></div>
				<div style="border: 1px solid #000; text-align: center; width: 28px; background-color: #c1c1c1; float: left;"><s:text name="optional"></s:text></div>
	  		</div>
	  		<!-- 空压机基本信息 -->
  			<div class="col-md-3 head_little_title optiopns">
  				<div class="row">
  					<div class="col-md-12">
  						<s:text name="Air_compressor" />
  					</div>
  				</div>
  				<br>
  				<div class="row">
  					<div class="col-md-1"></div>
  					<div class="col-md-5 head_little_options">
  						<s:text name="brand" />
  					</div>
  					
  					<div class="col-md-5 input_select">
  						<div>
							<select id="select_Brand" class="select_class" onChange="Brand_ajax()">
							
								<s:iterator value="#request.brand_options" var="o">
							       <option value="${o.brand_no }">${o.brand}</option>
							    </s:iterator>
						        
							</select>
							<input name="brand" id="input_Brand" class="_input" type="text">
							<s:fielderror name="brand"/>
						</div>
  					</div>
  					
  					<div class="col-md-1"></div>
  				</div>
  				<div class="row">
  					<div class="col-md-1"></div>
  					<div class="col-md-5 head_little_options">
  						<s:text name="Unit_cooling_mode" />
  					</div>
  					
  					<div class="col-md-5 col-sm-5 input_select">
  						<div>
							<select id="select_cooling_mode" class="select_class" onChange="cooling_mode_change()">
								<s:iterator value="#request.cooling_mode_options" var="o">
							       <option value="${o.value }">${o.options}</option>
							    </s:iterator>
							</select>
							<input name="cooling_mode" id="input_cooling_mode" class="_input" type="text" >
						</div>
  					</div>
  					
  					<div class="col-md-1"></div>
  				</div>
  				<div class="row">
  					<div class="col-md-1"></div>
  					<div class="col-md-5 head_little_options">
  						<s:text name="Unit_model" />
  					</div>
  					<div class="col-md-5 input_select">
  						<div>
							<select id="select_3" class="select_class" onChange="a(3)">
								<s:iterator value="#request.Unit_model_options" var="o">
							       <option value="${o.value}">${o.options}</option>
							    </s:iterator>
							</select>
							<input name="unit_model" id="input_3" class="_input" type="text">
						</div>
  					</div>
  					<div class="col-md-1"></div>
  				</div>
  				<div class="row">
  					<div class="col-md-1"></div>
  					<div class="col-md-5 head_little_options">
  						<s:text name="Unit_date" />
  					</div>
  					<div class="col-md-5 input_select">
  						<div>
							<select id="select_4" class="select_class" onChange="a(4)">
								<s:iterator value="#request.production_date_options" var="o">
								       <option>${o}</option>
								</s:iterator>
							</select>
							<input  name="production_date" id="input_4" class="_input" type="text">
						</div>
  					</div>
  					<div class="col-md-1"></div>
  				</div>
  				<div class="row">
  					<div class="col-md-1"></div>
  					<div class="col-md-5 head_little_options">
  						<s:text name="exhaust_pressure" />
  					</div>
  					<div class="col-md-5 input_select">
  						<div>
							<select id="select_5" class="select_class" onChange="a(5)">
								<s:iterator value="#request.exhaust_pressure_options" var="o">
							       <option>${o}</option>
							    </s:iterator>
							</select>
							<input name="exhaust_pressure" id="input_5" class="_input" type="text">
						</div>
  					</div>
  					<div class="col-md-1"></div>
  				</div>
  				<div class="row">
  					<div class="col-md-1"></div>
  					<div class="col-md-5 head_little_options">
  						<s:text name="Running_time_first" />
  					</div>
  					<div class="col-md-5 input_select">
  						<div>
							<select id="select_6" class="select_class" onChange="a(6)">
								<s:iterator value="#request.first_handpiece_time_options" var="o">
								       <option>${o}</option>
								</s:iterator>
							</select>
							<input name="first_handpiece_time" id="input_6" class="_input" type="text">
						</div>
  					</div>
  					<div class="col-md-1"></div>
  				</div>
  				<div class="row">
  					<div class="col-md-1"></div>
  					<div class="col-md-5 head_little_options">
  						<s:text name="Running_time_two" />
  					</div>
  					<div class="col-md-5 input_select">
  						<div>
							<select id="select_7" class="select_class" onChange="a(7)">
								<s:iterator value="#request.second_handpiece_time_options" var="o">
								       <option>${o}</option>
								</s:iterator>
							</select>
							<input  name="second_handpiece_time" id="input_7" class="_input" type="text">
						</div>
  					</div>
  					<div class="col-md-1"></div>
  				</div>
  				<div class="row">
  					<div class="col-md-1"></div>
  					<div class="col-md-5 head_little_options">
  						<s:text name="handpiece_serial_number" />
  					</div>
  					<div class="col-md-5 input_select">
  						<div>
							<select id="select_8" class="select_class" onChange="a(8)">
								<s:iterator value="#request.handpiece_serial_no_options" var="o">
								       <option>${o}</option>
								</s:iterator>
							</select>
							<input name="handpiece_serial_no" id="input_8" class="_input" type="text">
						</div>
  					</div>
  					<div class="col-md-1"></div>
  				</div>
  				
  				<div class="row">
  					<div class="col-md-1"></div>
  					<div class="col-md-5 head_little_options" style="background-color:#C1C1C1;border: 1px solid #C1C1C1;">
  						<s:text name="Crew_serial_number" />
  					</div>
  					<div class="col-md-5 input_select">
  						<div>
							<select id="select_9" class="select_class" onChange="a(9)" style="background-color:#C1C1C1; border: none;">
								<s:iterator value="#request.crew_serial_no_options" var="o">
								       <option>${o}</option>
								</s:iterator>
							</select>
							<input name="crew_serial_number" id="input_9" class="_input" type="text"  style="background-color:#C1C1C1; border: none;">
						</div>
  					</div>
  					<div class="col-md-1"></div>
  				</div>
  				
  			</div>
  			<!-- 故障信息 -->
  			<div class="col-md-4 head_little_title optiopns">
  				<div class="row">
  					<div class="col-md-12">
  						<s:text name="Fault_information" />
  					</div>
  				</div>
  				<br>
  				<div class="row">
  					<div class="col-md-1"></div>
  					<div class="col-md-5 head_little_options">
  						<s:text name="first_exhaust_temperature" />
  					</div>
  					<div class="col-md-5 input_select">
  						<div>
							<select id="select_10" class="select_class_fault" onChange="a(10)">
								<s:iterator value="#request.fault_info" var="o">
								       <option>${o}</option>
								</s:iterator>
							</select>
							<input name="first_exhaust_temperature" id="input_10" class="_input_fault" type="text">
						</div>
  					</div>
  					<div class="col-md-1"></div>
  				</div>
  				<div class="row">
  					<div class="col-md-1"></div>
  					<div class="col-md-5 head_little_options">
  						<s:text name="second_exhaust_temperature" />
  					</div>
  					<div class="col-md-5 input_select">
  						<div>
							<select id="select_11" class="select_class_fault" onChange="a(11)">
								<s:iterator value="#request.fault_info" var="o">
								       <option>${o}</option>
								</s:iterator>
							</select>
							<input name="second_exhaust_temperature" id="input_11" class="_input_fault" type="text">
						</div>
  					</div>
  					<div class="col-md-1"></div>
  				</div>
  				<div class="row">
  					<div class="col-md-1"></div>
  					<div class="col-md-5 head_little_options">
  						<s:text name="first_exhaust_pressure" />
  					</div>
  					<div class="col-md-5 input_select">
  						<div>
							<select id="select_12" class="select_class_fault" onChange="a(12)">
								<s:iterator value="#request.fault_info" var="o">
								       <option>${o}</option>
								</s:iterator>
							</select>
							<input name="first_exhaust_pressure" id="input_12" class="_input_fault" type="text">
						</div>
  					</div>
  					<div class="col-md-1"></div>
  				</div>
  				<div class="row">
  					<div class="col-md-1"></div>
  					<div class="col-md-5 head_little_options">
  						<s:text name="second_exhaust_pressure" />
  					</div>
  					<div class="col-md-5 input_select">
  						<div>
							<select id="select_13" class="select_class_fault" onChange="a(13)">
								<s:iterator value="#request.fault_info" var="o">
								       <option>${o}</option>
								</s:iterator>
							</select>
							<input name="second_exhaust_pressure" id="input_13" class="_input_fault" type="text">
						</div>
  					</div>
  					<div class="col-md-1"></div>
  				</div>
  				<div class="row">
  					<div class="col-md-1"></div>
  					<div class="col-md-5 head_little_options" style="background-color:#C1C1C1;border: 1px solid #C1C1C1;">
  						<s:text name="Lubricating_oil_temperature" />
  					</div>
  					<div class="col-md-5 input_select">
  						<div>
							<select id="select_14" class="select_class_fault" onChange="a(14)" style="background-color:#C1C1C1; border: none;">
								<s:iterator value="#request.fault_info" var="o">
								       <option>${o}</option>
								</s:iterator>
							</select>
							<input name="lubricating_oil_temperature" id="input_14" class="_input_fault" type="text" style="background-color:#C1C1C1; border: none;">
						</div>
  					</div>
  					<div class="col-md-1"></div>
  				</div>
  				<div class="row">
  					<div class="col-md-1"></div>
  					<div class="col-md-5 head_little_options" style="background-color:#C1C1C1;border: 1px solid #C1C1C1;">
  						<s:text name="Cooling_water_inlet_temperature" />
  					</div>
  					<div class="col-md-5 input_select">
  						<div>
							<select id="select_15" class="select_class_fault" onChange="a(15)" style="background-color:#C1C1C1; border: none;">
								<s:iterator value="#request.fault_info" var="o">
								       <option>${o}</option>
								</s:iterator>
							</select>
							<input name="cooling_water_in_temperature" id="input_15" class="_input_fault" type="text" style="background-color:#C1C1C1; border: none;">
						</div>
  					</div>
  					<div class="col-md-1"></div>
  				</div>
  				<div class="row">
  					<div class="col-md-1"></div>
  					<div class="col-md-5 head_little_options" style="background-color:#C1C1C1;border: 1px solid #C1C1C1;">
  						<s:text name="Cooling_water_outlet_temperature" />
  					</div>
  					<div class="col-md-5 input_select">
  						<div>
							<select id="select_16" class="select_class_fault" onChange="a(16)" style="background-color:#C1C1C1; border: none;">
								<s:iterator value="#request.fault_info" var="o">
								       <option>${o}</option>
								</s:iterator>
							</select>
							<input name="cooling_water_out_temperature" id="input_16" class="_input_fault" type="text" style="background-color:#C1C1C1; border: none;">
						</div>
  					</div>
  					<div class="col-md-1"></div>
  				</div>
  				
  			</div>
  			<!-- 联系人信息 -->
  			<div class="col-md-3 head_little_title optiopns">
	  			<div class="row">
	  				<div class="col-md-12">
	  					<s:text name="contact_information" />
	  				</div>
	  			</div>
	  			<br>
	  			<div class="row">
  					<div class="col-md-1"></div>
  					<div class="col-md-5 head_little_options">
  						<s:text name="enterprise" />
  					</div>
  					<div class="col-md-5 contact_input">
  						<input type="text" name="enterprise" style="text-align: center;">
  					</div>
  					<div class="col-md-1"></div>
  				</div>
  				<div class="row">
  					<div class="col-md-1"></div>
  					<div class="col-md-5 head_little_options">
  						<s:text name="ContactName" />
  					</div>
  					<div class="col-md-5 contact_input">
  						<input type="text" name="contact_name" style="text-align: center;">
  					</div>
  					<div class="col-md-1"></div>
  				</div>
  				<div class="row">
  					<div class="col-md-1"></div>
  					<div class="col-md-5 head_little_options">
  						<s:text name="phone" />
  					</div>
  					<div class="col-md-5 contact_input">
  						<input type="text" name="phone_number" style="text-align: center;">
  					</div>
  					<div class="col-md-1"></div>
  				</div>
  				<div class="row">
  					<div class="col-md-1"></div>
  					<div class="col-md-5 head_little_options">
  						<s:text name="WeChatNumber" />
  					</div>
  					<div class="col-md-5 contact_input">
  						<input type="text" name="wechat_number" style="text-align: center;">
  					</div>
  					<div class="col-md-1"></div>
  				</div>
  				<div class="row">
  					<div class="col-md-1"></div>
  					<div class="col-md-5 head_little_options"  style="background-color:#C1C1C1;border: 1px solid #C1C1C1;">
  						<s:text name="QQ" />
  					</div>
  					<div class="col-md-5 contact_input">
  						<input type="text" name="QQ" style="background-color:#C1C1C1; border: none; text-align:center;">
  					</div>
  					<div class="col-md-1"></div>
  				</div>
  				<div class="row">
  					<div class="col-md-1"></div>
  					<div class="col-md-5 head_little_options" style="background-color:#C1C1C1;border: 1px solid #C1C1C1;">
  						<s:text name="function" />
  					</div>
  					<div class="col-md-5 contact_input">
  						<input type="text" name="function" style="background-color:#C1C1C1; border: none; text-align:center;">
  					</div>
  					<div class="col-md-1"></div>
  				</div>
  				<div class="row">
  					<div class="col-md-1"></div>
  					<div class="col-md-5 head_little_options" style="background-color:#C1C1C1;border: 1px solid #C1C1C1;">
  						<s:text name="duties" />
  					</div>
  					<div class="col-md-5 contact_input">
  						<input type="text" name="duties" style="background-color:#C1C1C1; border: none; text-align:center;">
  					</div>
  					<div class="col-md-1"></div>
  				</div>
  			</div>
  		</div>
  		
  		<!-- 公司信息 -->
		<div class="Contact_Company">
			<s:text name="BOSA" /><br/>
			<s:text name="phone" />：021-58387871<br/>
			<s:text name="Email" />：sales@bosacompressor.com<br/>
			<s:text name="Website" />：www.bosacompressor.com<br/>
			<br>
		</div>
		
		
	
		<div class="Fault_information">
			<textarea name="fault_info" rows="5" cols="59" placeholder="故障描述:"></textarea>
			
		</div>
		
		<div class="maintenance_Description">
			<textarea rows="5" cols="50" readonly="readonly"><s:text name="Fault_description" /></textarea>
		</div>
		
		<button type="submit" class="btn btn-primary btn-lg submit-btn" style="text-align:center;" onclick="return check(this.form)"><s:text name="Start_calculation" /></button>
		
		<!-- 右侧固定 -->
		<div class="right-fixed">
			<div class="online">
				<s:text name="Online" /><br>
				<s:text name="consulting" />
			</div>
			
			<a href="Maintenance.jsp" style="text-decoration:none;">
				<div class="online">
					<s:text name="maintance" /><br>
					<s:text name="offer" />
				</div>
			</a>
			
			<div class="online weixin" onmouseover="this.className = 'weixin on';" onmouseout="this.className = 'weixin';">
				
				<s:text name="QR" /><br>
				<s:text name="code" />
				
				<div class="weixin_nr">
			        <img src="image/weixin.jpg" width="100" height="100" />
			        关注官方微信
			    </div>
			</div>
			
			<a href="feedback.jsp" style="text-decoration:none;">
				<div class="online">
					<s:text name="Opinion" /><br>
					<s:text name="feedback" />
				</div>
			</a>
		</div>
	</div>
	</s:form>
	
	
	
	<a id="mk" href="#" class="big-link" data-reveal-id="myModal"></a>	
		
	<div id="myModal" class="reveal-modal">

			<div style="text-align: center;">
				根据您提供的信息，您主机的维修费用预计是[  ${price_first }  ]万,<br>
				维修内容包括：涂层重建，更换全部轴承，全部密封，重<br>新调整转子动平衡，重新
				调整转子，壳体之间各个间隙。
			</div>
			<a class="close-reveal-modal">&#215;</a>

		</div>
  </body>
  <script type="text/javascript">
  $(document).ready(function(){
	  
	  $("#select_Brand").get(0).selectedIndex = -1;
	  $("#select_9").get(0).selectedIndex = -1;
	  
	  
	  for(var i = 0; i < 17; i ++) {
		  $('.select_class')[i].selectedIndex = -1;
		  $('.select_class_fault')[i].selectedIndex = -1;
	  }
	});
  
	function a(m){
		$("#input_" + m).val($("#select_" + m + " option:selected").text());
	}
	function Brand_ajax() {
		$("#input_Brand").val($("#select_Brand option:selected").text());
		
		var brand_value = $("#select_Brand option:selected");
		
		 var mySelect=$("#select_3 option");
		    for(var j = 0; j < 78; j ++) {
		    	mySelect.each(function (i,el) {
		        if($(el).val()==j){
		            $(this).hide();
		        }
		    	});
			}
		
		
		<!--隐藏非阿特拉斯的机组型号-->
		if(brand_value.val() == "1") {
			 var mySelect=$("#select_3 option");
			    for(var j = 0; j < 46; j ++) {
			    	mySelect.each(function (i,el) {
			        if($(el).val()==j){
			            $(this).show();
			        }
			    	});
				}
		}
		
		if(brand_value.val() == "2") {
			 var mySelect=$("#select_3 option");
			    for(var j = 46; j < 67; j ++) {
			    	mySelect.each(function (i,el) { 
			        if($(el).val()==j){
			            $(this).show();
			        }
			    	});
				}
		}
		if(brand_value.val() == "3") {
			 var mySelect=$("#select_3 option");
			    for(var j = 67; j < 78; j ++) {
			    	mySelect.each(function (i,el) {
			        if($(el).val()==j){
			            $(this).show();
			        }
			    	});
				}
		}
		
	}
	
	function cooling_mode_change() {
		$("#input_cooling_mode").val($("#select_cooling_mode option:selected").text());
		
		var brand_value = $("#select_Brand option:selected");
		var cooling_mode_value = $("#select_cooling_mode option:selected");
		if(brand_value.val() == "1") {
			if(cooling_mode_value.val() == "1") {
				var mySelect=$("#select_3 option");
			    for(var j = 17; j < 46; j ++) {
			    	mySelect.each(function (i,el) {
			        if($(el).val()==j){
			            $(this).hide();
			        }
			    	});
				}
			}
			if(cooling_mode_value.val() == "2") {
				var mySelect=$("#select_3 option");
			    for(var j = 0; j < 18; j ++) {
			    	mySelect.each(function (i,el) {
			        if($(el).val()==j){
			            $(this).hide();
			        }
			    	});
				}
			}
		}
		 
	}
	
	
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
	
	<!--弹出框显示价格-->
	var msg=""+'${request.success}'; 
	var price_first = "" + '${request.price_first}'
	var price_second = "" + '${request.price_second}'
	if(msg!="")
		document.getElementById("mk").click();

	
  </script>
</html>
