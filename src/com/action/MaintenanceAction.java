package com.action;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.httpclient.Header;
import org.apache.commons.httpclient.HttpClient;
import org.apache.commons.httpclient.NameValuePair;
import org.apache.commons.httpclient.methods.PostMethod;
import org.apache.ibatis.session.SqlSession;
import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.po.Air_compressor;
import com.po.Ajax;
import com.po.All_info;
import com.po.Feedback;
import com.po.Main_brand;


import com.aboutSqlSessionFactory.*;
import com.dao.Maintenance;


public class MaintenanceAction extends ActionSupport implements ModelDriven {

	private static final long serialVersionUID = 1L;
	private Feedback feedback = new Feedback();
	private String brand_name;
	private String cooling_mode_name;

	public String getCooling_mode_name() {
		return cooling_mode_name;
	}

	public void setCooling_mode_name(String cooling_mode_name) {
		this.cooling_mode_name = cooling_mode_name;
	}

	public String getBrand_name() {
		return brand_name;
	}

	public void setBrand_name(String brand_name) {
		this.brand_name = brand_name;
	}
	public Feedback getFeedback() {
		return feedback;
	}

	public void setFeedback(Feedback feedback) {
		this.feedback = feedback;
	}
	/**
	 * 界面初始化，在界面最开始加载的时候，从数据库中取出各个下拉框的选项
	 * @return
	 * @throws Exception
	 */
	public String find_options() throws Exception {

		HttpServletRequest request = ServletActionContext.getRequest();
		
		SqlSession sqlSession = GetSqlSessionFactory.getSqlSessionFactory().openSession();
		
		Maintenance maintenance = sqlSession.getMapper(Maintenance.class);
		
		//品牌下拉列表
		List<String> brand_options =  maintenance.selectBrand();
		
		//机组型号下拉列表
		List<String> Unit_model_options =  maintenance.selectUnit_model();
		
		//机组冷却方式下拉列表
		List<String> cooling_mode_options =  maintenance.selectCooling_mode();
		
		//机组生产日期下拉列表
		List<String> production_date_options =  maintenance.selectProduction_date();
		
		//机组排气压力下拉列表
		List<String> exhaust_pressure_options =  maintenance.selectExhaust_pressure();
		
		//一级机头运行时间下拉列表
		List<String> first_handpiece_time_options =  maintenance.selectFirst_handpiece_time();
		
		//二级机头运行时间下拉列表
		List<String> second_handpiece_time_options =  maintenance.selectSecond_handpiece_time();
		
		//机头序列号下拉列表
		List<String>  handpiece_serial_no_options =  maintenance.selectHandpiece_serial_no();
		
		List<String>  crew_serial_no_options =  maintenance.selectCrew_serial_no();
		
		//故障信息所有下拉列表
		List<String>  fault_info =  maintenance.selectFault_info();
		
		
		
		request.setAttribute("brand_options", brand_options);
		
		request.setAttribute("cooling_mode_options", cooling_mode_options);
		
		request.setAttribute("Unit_model_options", Unit_model_options);
		
		request.setAttribute("production_date_options", production_date_options);
		
		request.setAttribute("exhaust_pressure_options", exhaust_pressure_options);
		
		request.setAttribute("first_handpiece_time_options", first_handpiece_time_options);
		
		request.setAttribute("second_handpiece_time_options", second_handpiece_time_options);
		
		request.setAttribute("handpiece_serial_no_options", handpiece_serial_no_options);
		
		request.setAttribute("crew_serial_no_options", crew_serial_no_options);
		
		request.setAttribute("fault_info", fault_info);
		
		sqlSession.close();
		
		return "success";
	}
	
	/**
	 * Struts2的模型驱动，自动使前台输入框的值与po类对应
	 */
	All_info all_info = new All_info();
	@Override
	public Object getModel() {
		// TODO Auto-generated method stub
		return all_info;
	}
	
	/**
	 * 取到前台输入框的值进行操作
	 * @throws Exception 
	 */
	public String save_info() throws Exception {
		
		HttpServletRequest request = ServletActionContext.getRequest(); 
		
		SqlSession sqlSession = GetSqlSessionFactory.getSqlSessionFactory().openSession();
		
		Maintenance maintenance = sqlSession.getMapper(Maintenance.class);
		
		String unit_model = all_info.getUnit_model();
		
		Air_compressor price = maintenance.selectPrice(unit_model);
		
		float price_first = price.getPrice_first();
		float price_second = price.getPrice_second();
		
		System.out.println("一级机头的价格是" + price_first);
		System.out.println("二级机头的价格是" + price_second);
		
		request.setAttribute("success", "success");
		request.setAttribute("price_first", price.getPrice_first());
		request.setAttribute("price_second", price.getPrice_second());
		
		maintenance.insertAll_info(all_info);
		sqlSession.commit();
		
		sqlSession.close();
		
		sendMessage(price_first);
		
		return SUCCESS;
	}
	
	public void sendMessage(float price_first) throws Exception {
		
		 String phone_number = all_info.getPhone_number();
		 
		 System.out.println("phone_number = " + phone_number);
		 
		 HttpClient client = new HttpClient();
	        PostMethod post = new PostMethod("http://sms.webchinese.cn/web_api/");
	        post.addRequestHeader("Content-Type",
	                "application/x-www-form-urlencoded;charset=gbk");// 在头文件中设置转码
	        NameValuePair[] data = {
	                new NameValuePair("Uid", "乔桥先生"), // 注册的用户名
	                new NameValuePair("Key", "7c8d07bf19360e54ff00"), // 注册成功后,网站分配的密钥（不是密码）
	                new NameValuePair("smsMob", phone_number), //给该手机号码发送内容
	                new NameValuePair("smsText", "您的主机维修费用预计为" + price_first + "万元，我们的服务顾问会联系您.感谢您的光临。")
	        };
	        post.setRequestBody(data);
	        client.executeMethod(post);
	        Header[] headers = post.getResponseHeaders();
	        int statusCode = post.getStatusCode();
	        System.out.println("statusCode:" + statusCode);
	        for (Header h : headers) {
	            System.out.println(h.toString());
	        }
	        String result = new String(post.getResponseBodyAsString().getBytes(
	                "gbk"));
	        System.out.println(result);
	        post.releaseConnection();
	}
	
	public String successCase() throws Exception {
		return SUCCESS;
	}
	
	public String standard_process() throws Exception {
		return SUCCESS;
	}
	
	public String studio() throws Exception {
		return SUCCESS;
	}
	
	public String feedback() throws Exception {
		
		SqlSession sqlSession = GetSqlSessionFactory.getSqlSessionFactory().openSession();
		
		Maintenance maintenance = sqlSession.getMapper(Maintenance.class);
		
		
		
		String feedback_text = feedback.getFeedback_text();
		String phone_number = feedback.getPhone_number();
		
		System.out.println("feedback_text = " + feedback_text);
		System.out.println("phone_number = " + phone_number);
		
		maintenance.saveFeedback(feedback);
		
		sqlSession.commit();
		
		sqlSession.close();
		
		return SUCCESS;
	}
	
	public String ajax_brand() throws Exception {
		
		List<String> Unit_model_options_A = null;
		
		System.out.println(brand_name);
		
		SqlSession sqlSession = GetSqlSessionFactory.getSqlSessionFactory().openSession();
		
		Maintenance maintenance = sqlSession.getMapper(Maintenance.class);
		
		HttpServletResponse response = ServletActionContext.getResponse();  
        response.setCharacterEncoding("UTF-8");  
        response.setContentType("text/html; charset=utf-8"); 
        
        if(brand_name.equalsIgnoreCase("阿特拉斯")) {
        	Unit_model_options_A =  maintenance.selectUnit_model_A();
        }
        else if(brand_name.equalsIgnoreCase("英格索兰")) {
        	Unit_model_options_A =  maintenance.selectUnit_model_S();
        }
        else if(brand_name.equalsIgnoreCase("神钢")) {
        	Unit_model_options_A =  maintenance.selectUnit_model_G();
        }
        
        PrintWriter out = response.getWriter();  
        out.print(Unit_model_options_A);  
        out.flush();  
        out.close();  
        return NONE;
	}
	
	public String ajax_cooling_mode() throws Exception {
		List<String> Unit_model_options_A = null;
		SqlSession sqlSession = GetSqlSessionFactory.getSqlSessionFactory().openSession();
		
		Maintenance maintenance = sqlSession.getMapper(Maintenance.class);
		
		HttpServletResponse response = ServletActionContext.getResponse();  
        response.setCharacterEncoding("UTF-8");  
        response.setContentType("text/html; charset=utf-8"); 
        if(cooling_mode_name.equalsIgnoreCase("风冷")) {
        	Unit_model_options_A =  maintenance.selectUnit_model_C();
        }
        else if(cooling_mode_name.equalsIgnoreCase("水冷")) {
        	Unit_model_options_A =  maintenance.selectUnit_model_SL();
        }
        
        
        PrintWriter out = response.getWriter();  
        out.print(Unit_model_options_A);  
        out.flush();  
        out.close();  
		return NONE;
	}

}
