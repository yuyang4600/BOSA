package com.dao;

import java.util.List;

import com.po.Air_compressor;
import com.po.All_info;
import com.po.Feedback;
import com.po.Main_brand;

public interface Maintenance {
	
	/**
	 * 选择品牌
	 * @return
	 * @throws Exception
	 */
	public List<String> selectBrand() throws Exception;
	
	/**
	 * 选择机组冷却方式
	 * @return
	 * @throws Exception
	 */
	public List<String> selectCooling_mode () throws Exception;
	
	/**
	 * 机组型号
	 * @return
	 * @throws Exception
	 */
	public List<String> selectUnit_model() throws Exception;
	
	/**
	 * 选择机组生产日期
	 * @return
	 * @throws Exception
	 */
	public List<String> selectProduction_date () throws Exception;
	
	/**
	 * 机组排气压力
	 * @return
	 * @throws Exception
	 */
	public List<String> selectExhaust_pressure () throws Exception;
	/**
	 * 选择一级机头运行时间
	 * @return
	 * @throws Exception
	 */
	public List<String> selectFirst_handpiece_time() throws Exception;
	/**
	 * 选择二级机头运行时间
	 * @return
	 * @throws Exception
	 */
	public List<String> selectSecond_handpiece_time() throws Exception;
	
	/**
	 * 选择机头序列号
	 * @return
	 * @throws Exception
	 */
	public List<String> selectHandpiece_serial_no () throws Exception;
	
	/**
	 * 选择机组序列号
	 * @return
	 * @throws Exception
	 */
	public List<String> selectCrew_serial_no () throws Exception;
	/**
	 * 选择故障信息所有下拉列表
	 * @return
	 * @throws Exception
	 */
	public List<String> selectFault_info () throws Exception;
	
	/**
	 * 保存所有前台信息
	 * @return 
	 * @throws Exception
	 */
	public int insertAll_info (All_info all_info) throws Exception;
	
	/**
	 * 查询价格
	 * @param unit_model
	 * @return 
	 */
	public Air_compressor selectPrice(String unit_model) throws Exception;
	
	/**
	 * 保存意见反馈
	 * @param feedback_text
	 * @param phone_number
	 */
	public void saveFeedback(Feedback feedback) throws Exception;
	
	/**
	 * ajax选择阿特拉斯对应的机型
	 * @return
	 */
	public List<String> selectUnit_model_A() throws Exception;
	
	/**
	 * ajax选择英格索兰对应的机型
	 * @return
	 */
	public List<String> selectUnit_model_S() throws Exception;
	
	/**
	 * ajax选择神钢对应的机型
	 * @return
	 */
	public List<String> selectUnit_model_G() throws Exception;
	
	/**
	 * ajax选择风冷对应的机型
	 * @return
	 */
	public List<String> selectUnit_model_C() throws Exception;
	
	/**
	 * ajax选择水冷对应的机型
	 * @return
	 */
	public List<String> selectUnit_model_SL() throws Exception;
}
