/*
Navicat MySQL Data Transfer

Source Server         : sparetime
Source Server Version : 50719
Source Host           : localhost:3306
Source Database       : atlas

Target Server Type    : MYSQL
Target Server Version : 50719
File Encoding         : 65001

Date: 2017-11-06 19:46:57
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for fault_info
-- ----------------------------
DROP TABLE IF EXISTS `fault_info`;
CREATE TABLE `fault_info` (
  `name` varchar(50) DEFAULT NULL,
  `options` varchar(20) DEFAULT NULL,
  `value` varchar(10) DEFAULT NULL,
  `remark` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fault_info
-- ----------------------------
INSERT INTO `fault_info` VALUES ('fault_option', '正常', '1', null);
INSERT INTO `fault_info` VALUES ('fault_option', '报警', '2', null);
INSERT INTO `fault_info` VALUES ('fault_option', '停机', '3', null);
