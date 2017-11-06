/*
Navicat MySQL Data Transfer

Source Server         : sparetime
Source Server Version : 50719
Source Host           : localhost:3306
Source Database       : atlas

Target Server Type    : MYSQL
Target Server Version : 50719
File Encoding         : 65001

Date: 2017-11-06 19:47:22
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for fill_formation
-- ----------------------------
DROP TABLE IF EXISTS `fill_formation`;
CREATE TABLE `fill_formation` (
  `brand` varchar(30) DEFAULT NULL,
  `cooling_mode` varchar(30) DEFAULT NULL,
  `unit_model` varchar(50) DEFAULT NULL,
  `production_date` varchar(50) DEFAULT NULL,
  `exhaust_pressure` varchar(20) DEFAULT NULL,
  `first_handpiece_time` varchar(50) DEFAULT NULL,
  `second_handpiece_time` varchar(50) DEFAULT NULL,
  `handpiece_serial_no` varchar(50) DEFAULT NULL,
  `crew_serial_number` varchar(50) DEFAULT NULL,
  `first_exhaust_temperature` varchar(50) DEFAULT NULL,
  `second_exhaust_temperature` varchar(50) DEFAULT NULL,
  `first_exhaust_pressure` varchar(50) DEFAULT NULL,
  `second_exhaust_pressure` varchar(50) DEFAULT NULL,
  `lubricating_oil_temperature` varchar(50) DEFAULT NULL,
  `lubricating_oil_pressure` varchar(50) DEFAULT NULL,
  `cooling_water_in_temperature` varchar(50) DEFAULT NULL,
  `cooling_water_out_temperature` varchar(50) DEFAULT NULL,
  `enterprise` varchar(50) DEFAULT NULL,
  `contact_name` varchar(50) DEFAULT NULL,
  `phone_number` varchar(50) DEFAULT NULL,
  `wechat_number` varchar(50) DEFAULT NULL,
  `QQ` varchar(50) DEFAULT NULL,
  `job` varchar(50) DEFAULT NULL,
  `duties` varchar(50) DEFAULT NULL,
  `fault_info` text COMMENT '故障描述'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
