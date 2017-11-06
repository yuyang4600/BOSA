/*
Navicat MySQL Data Transfer

Source Server         : sparetime
Source Server Version : 50719
Source Host           : localhost:3306
Source Database       : atlas

Target Server Type    : MYSQL
Target Server Version : 50719
File Encoding         : 65001

Date: 2017-11-06 19:46:42
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for air_compressor
-- ----------------------------
DROP TABLE IF EXISTS `air_compressor`;
CREATE TABLE `air_compressor` (
  `brand_no` varchar(20) NOT NULL COMMENT '品牌序号',
  `name` varchar(50) DEFAULT NULL COMMENT 'name',
  `options` varchar(50) DEFAULT NULL COMMENT '下拉框选项值',
  `value` varchar(10) DEFAULT NULL COMMENT '下拉框value',
  `price_first` decimal(5,3) DEFAULT NULL,
  `price_second` decimal(5,3) DEFAULT NULL,
  `remark` varchar(50) DEFAULT NULL COMMENT '备注'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of air_compressor
-- ----------------------------
INSERT INTO `air_compressor` VALUES ('1', 'unit_cooling_mode', '风冷', '1', null, null, '机组冷却方式');
INSERT INTO `air_compressor` VALUES ('1', 'unit_cooling_mode', '水冷', '2', null, null, null);
INSERT INTO `air_compressor` VALUES ('1', 'unit_model', 'ZT55', '1', '2.800', '3.800', '机组型号1');
INSERT INTO `air_compressor` VALUES ('1', 'unit_model', 'ZT75', '2', '2.800', '3.800', null);
INSERT INTO `air_compressor` VALUES ('1', 'unit_model', 'ZT90', '3', '2.800', '3.800', null);
INSERT INTO `air_compressor` VALUES ('1', 'unit_model', 'ZT110', '4', '2.800', '4.800', null);
INSERT INTO `air_compressor` VALUES ('1', 'unit_model', 'ZT132', '5', '2.800', '4.800', null);
INSERT INTO `air_compressor` VALUES ('1', 'unit_model', 'ZT145', '6', '2.800', '4.800', null);
INSERT INTO `air_compressor` VALUES ('1', 'unit_model', 'ZT160', '7', '3.800', '6.800', null);
INSERT INTO `air_compressor` VALUES ('1', 'unit_model', 'ZT200', '8', '3.800', '6.800', null);
INSERT INTO `air_compressor` VALUES ('1', 'unit_model', 'ZT250', '9', '3.800', '6.800', null);
INSERT INTO `air_compressor` VALUES ('1', 'unit_model', 'ZT275', '10', '3.800', '6.800', null);
INSERT INTO `air_compressor` VALUES ('1', 'unit_model', 'ZT75VSD', '11', '2.800', '3.800', null);
INSERT INTO `air_compressor` VALUES ('1', 'unit_model', 'ZT90VSD', '12', '2.800', '3.800', null);
INSERT INTO `air_compressor` VALUES ('1', 'unit_model', 'ZT132VSD', '13', '2.800', '4.800', null);
INSERT INTO `air_compressor` VALUES ('1', 'unit_model', 'ZT160VSD', '14', '2.800', '4.800', null);
INSERT INTO `air_compressor` VALUES ('1', 'unit_model', 'ZT250VSD', '15', '3.800', '6.800', null);
INSERT INTO `air_compressor` VALUES ('1', 'unit_model', 'ZT315VSD', '16', '4.800', '8.800', null);
INSERT INTO `air_compressor` VALUES ('1', 'unit_model_ZR', 'ZR55', '1', '2.800', '3.800', '机组型号2');
INSERT INTO `air_compressor` VALUES ('1', 'unit_model_ZR', 'ZR75', '2', '2.800', '3.800', null);
INSERT INTO `air_compressor` VALUES ('1', 'unit_model_ZR', 'ZR90', '3', '2.800', '3.800', null);
INSERT INTO `air_compressor` VALUES ('1', 'unit_model_ZR', 'ZR110', '4', '2.800', '4.800', null);
INSERT INTO `air_compressor` VALUES ('1', 'unit_model_ZR', 'ZR132', '5', '2.800', '4.800', null);
INSERT INTO `air_compressor` VALUES ('1', 'unit_model_ZR', 'ZR145', '6', '2.800', '4.800', null);
INSERT INTO `air_compressor` VALUES ('1', 'unit_model_ZR', 'ZR160', '7', '3.800', '6.800', null);
INSERT INTO `air_compressor` VALUES ('1', 'unit_model_ZR', 'ZR200', '8', '3.800', '6.800', null);
INSERT INTO `air_compressor` VALUES ('1', 'unit_model_ZR', 'ZR250', '9', '3.800', '6.800', null);
INSERT INTO `air_compressor` VALUES ('1', 'unit_model_ZR', 'ZR275', '10', '3.800', '6.800', null);
INSERT INTO `air_compressor` VALUES ('1', 'unit_model_ZR', 'ZR300', '11', '4.800', '8.800', null);
INSERT INTO `air_compressor` VALUES ('1', 'unit_model_ZR', 'ZR315', '12', '4.800', '8.800', null);
INSERT INTO `air_compressor` VALUES ('1', 'unit_model_ZR', 'ZR355', '13', '4.800', '8.800', null);
INSERT INTO `air_compressor` VALUES ('1', 'unit_model_ZR', 'ZR400', '14', '4.800', '8.800', null);
INSERT INTO `air_compressor` VALUES ('1', 'unit_model_ZR', 'ZR425', '15', '4.800', '8.800', null);
INSERT INTO `air_compressor` VALUES ('1', 'unit_model_ZR', 'ZR450', '16', '6.800', '18.800', null);
INSERT INTO `air_compressor` VALUES ('1', 'unit_model_ZR', 'ZR500', '17', '6.800', '18.800', null);
INSERT INTO `air_compressor` VALUES ('1', 'unit_model_ZR', 'ZR630', '18', '6.800', '18.800', null);
INSERT INTO `air_compressor` VALUES ('1', 'unit_model_ZR', 'ZR750', '19', '6.800', '18.800', null);
INSERT INTO `air_compressor` VALUES ('1', 'unit_model_ZR', 'ZR75VSD', '20', '2.800', '3.800', null);
INSERT INTO `air_compressor` VALUES ('1', 'unit_model_ZR', 'ZR90VSD', '21', '2.800', '3.800', null);
INSERT INTO `air_compressor` VALUES ('1', 'unit_model_ZR', 'ZR132VSD', '22', '2.800', '4.800', null);
INSERT INTO `air_compressor` VALUES ('1', 'unit_model_ZR', 'ZR160VSD', '23', '2.800', '4.800', null);
INSERT INTO `air_compressor` VALUES ('1', 'unit_model_ZR', 'ZR250VSD', '24', '3.800', '6.800', null);
INSERT INTO `air_compressor` VALUES ('1', 'unit_model_ZR', 'ZR315VSD', '25', '4.800', '8.800', null);
INSERT INTO `air_compressor` VALUES ('1', 'unit_model_ZR', 'ZR400VSD', '26', '4.800', '8.800', null);
INSERT INTO `air_compressor` VALUES ('1', 'unit_model_ZR', 'ZR500VSD', '27', '6.800', '18.800', null);
INSERT INTO `air_compressor` VALUES ('1', 'unit_model_ZR', 'ZR700VSD', '28', '6.800', '18.800', null);
INSERT INTO `air_compressor` VALUES ('1', 'unit_model_ZR', 'ZR900VSD', '29', '6.800', '18.800', null);
INSERT INTO `air_compressor` VALUES ('1', 'Unit_date', '1990~1995', '1', null, null, '机组生产日期');
INSERT INTO `air_compressor` VALUES ('1', 'Unit_date', '1996~2000', '2', null, null, null);
INSERT INTO `air_compressor` VALUES ('1', 'Unit_date', '2001~2005', '3', null, null, null);
INSERT INTO `air_compressor` VALUES ('1', 'Unit_date', '2005~2010', '4', null, null, null);
INSERT INTO `air_compressor` VALUES ('1', 'Unit_date', '2010~2015', '5', null, null, null);
INSERT INTO `air_compressor` VALUES ('1', 'Unit_date', '2015~2020', '6', null, null, null);
INSERT INTO `air_compressor` VALUES ('1', 'exhaust_pressure', '7.5', '1', null, null, '机组排气压力');
INSERT INTO `air_compressor` VALUES ('1', 'exhaust_pressure', '8.6', '2', null, null, null);
INSERT INTO `air_compressor` VALUES ('1', 'exhaust_pressure', '10', '3', null, null, null);
INSERT INTO `air_compressor` VALUES ('1', 'exhaust_pressure', '9', '4', null, null, null);
INSERT INTO `air_compressor` VALUES ('1', 'exhaust_pressure', '10.4', '5', null, null, null);
INSERT INTO `air_compressor` VALUES ('1', 'exhaust_pressure', '13', '6', null, null, null);
INSERT INTO `air_compressor` VALUES ('1', 'handpiece_time', '0~8000', '1', null, null, '一级机头运行时间');
INSERT INTO `air_compressor` VALUES ('1', 'handpiece_time', '8001~16000', '2', null, null, null);
INSERT INTO `air_compressor` VALUES ('1', 'handpiece_time', '16001~24000', '3', null, null, null);
INSERT INTO `air_compressor` VALUES ('1', 'handpiece_time', '24001~32000', '4', null, null, null);
INSERT INTO `air_compressor` VALUES ('1', 'handpiece_time', '32001~40000', '5', null, null, null);
INSERT INTO `air_compressor` VALUES ('1', 'handpiece_time', '40001~48000', '6', null, null, null);
INSERT INTO `air_compressor` VALUES ('1', 'handpiece_time', '48001~56000', '7', null, null, null);
INSERT INTO `air_compressor` VALUES ('1', 'handpiece_time', '56001~64000', '8', null, null, null);
INSERT INTO `air_compressor` VALUES ('1', 'handpiece_time', '64001~72000', '9', null, null, null);
INSERT INTO `air_compressor` VALUES ('1', 'handpiece_time', '72001~80000', '10', null, null, null);
INSERT INTO `air_compressor` VALUES ('1', 'handpiece_time', '80001~88000', '11', null, null, null);
INSERT INTO `air_compressor` VALUES ('1', 'handpiece_time', '96001~104000', '12', null, null, null);
INSERT INTO `air_compressor` VALUES ('1', 'handpiece_serial_no', '1616', '1', null, null, '机头序列号');
INSERT INTO `air_compressor` VALUES ('1', 'crew_serial_no', 'AIF', '1', null, null, '机组序列号');
INSERT INTO `air_compressor` VALUES ('2', 'unit_model', 'SM37', '1', '2.800', '3.800', '机组型号1');
INSERT INTO `air_compressor` VALUES ('2', 'unit_model', 'SM45', '2', '2.800', '3.800', null);
INSERT INTO `air_compressor` VALUES ('2', 'unit_model', 'SM55', '3', '3.800', '4.800', null);
INSERT INTO `air_compressor` VALUES ('2', 'unit_model', 'SM75', '4', '3.800', '4.800', null);
INSERT INTO `air_compressor` VALUES ('2', 'unit_model', 'SM90', '5', '3.800', '4.800', null);
INSERT INTO `air_compressor` VALUES ('2', 'unit_model', 'SM110', '6', '3.800', '4.800', null);
INSERT INTO `air_compressor` VALUES ('2', 'unit_model', 'SM132', '7', '3.800', '4.800', null);
INSERT INTO `air_compressor` VALUES ('2', 'unit_model', 'SM150', '8', '3.800', '4.800', null);
INSERT INTO `air_compressor` VALUES ('2', 'unit_model', 'SM200', '9', '4.800', '6.800', null);
INSERT INTO `air_compressor` VALUES ('2', 'unit_model', 'SM250', '10', '4.800', '6.800', null);
INSERT INTO `air_compressor` VALUES ('2', 'unit_model', 'SM300', '11', '4.800', '6.800', null);
INSERT INTO `air_compressor` VALUES ('2', 'unit_model', 'SM200VSD', '12', '4.800', '6.800', null);
INSERT INTO `air_compressor` VALUES ('2', 'unit_model', 'SM300VSD', '13', '4.800', '6.800', null);
INSERT INTO `air_compressor` VALUES ('2', 'unit_model', 'IRN37K-OF', '14', '2.800', '3.800', null);
INSERT INTO `air_compressor` VALUES ('2', 'unit_model', 'IRN45K-OF', '15', '2.800', '3.800', null);
INSERT INTO `air_compressor` VALUES ('2', 'unit_model', 'IRN55K-OF', '16', '3.800', '4.800', null);
INSERT INTO `air_compressor` VALUES ('2', 'unit_model', 'IRN75K-OF', '17', '3.800', '4.800', null);
INSERT INTO `air_compressor` VALUES ('2', 'unit_model', 'IRN90K-OF', '18', '3.800', '4.800', null);
INSERT INTO `air_compressor` VALUES ('2', 'unit_model', 'IRN110K-OF', '19', '3.800', '4.800', null);
INSERT INTO `air_compressor` VALUES ('2', 'unit_model', 'IRN132K-OF', '20', '3.800', '4.800', null);
INSERT INTO `air_compressor` VALUES ('2', 'unit_model', 'IRN160K-OF', '21', '3.800', '4.800', null);
INSERT INTO `air_compressor` VALUES ('2', 'exhaust_pressure', '7', '7', null, null, null);
INSERT INTO `air_compressor` VALUES ('2', 'exhaust_pressure', '8.5', '8', null, null, null);
INSERT INTO `air_compressor` VALUES ('2', 'exhaust_pressure', '9', '9', null, null, null);
INSERT INTO `air_compressor` VALUES ('2', 'exhaust_pressure', '10', '10', null, null, null);
INSERT INTO `air_compressor` VALUES ('2', 'exhaust_pressure', '10.4', '11', null, null, null);
INSERT INTO `air_compressor` VALUES ('3', 'unit_model', 'ALE55', '1', '3.800', '4.800', null);
INSERT INTO `air_compressor` VALUES ('3', 'unit_model', 'ALE75', '2', '3.800', '4.800', null);
INSERT INTO `air_compressor` VALUES ('3', 'unit_model', 'ALE100', '3', '3.800', '4.800', null);
INSERT INTO `air_compressor` VALUES ('3', 'unit_model', 'ALE110', '4', '3.800', '4.800', null);
INSERT INTO `air_compressor` VALUES ('3', 'unit_model', 'ALE132', '5', '3.800', '4.800', null);
INSERT INTO `air_compressor` VALUES ('3', 'unit_model', 'ALE160', '6', '3.800', '4.800', null);
INSERT INTO `air_compressor` VALUES ('3', 'unit_model', 'ALE200', '7', '3.800', '4.800', null);
INSERT INTO `air_compressor` VALUES ('3', 'unit_model', 'ALE250', '8', '3.800', '4.800', null);
INSERT INTO `air_compressor` VALUES ('3', 'unit_model', 'ALE300', '9', '4.800', '6.800', null);
INSERT INTO `air_compressor` VALUES ('3', 'unit_model', 'ALE350', '10', '4.800', '6.800', null);
INSERT INTO `air_compressor` VALUES ('3', 'unit_model', 'ALE400', '11', '4.800', '6.800', null);
INSERT INTO `air_compressor` VALUES ('3', 'exhaust_pressure', '7', '12', null, null, null);
INSERT INTO `air_compressor` VALUES ('3', 'exhaust_pressure', '8.6', '13', null, null, null);
INSERT INTO `air_compressor` VALUES ('3', 'exhaust_pressure', '8.8', '14', null, null, null);
INSERT INTO `air_compressor` VALUES ('3', 'exhaust_pressure', '10', '15', null, null, null);
