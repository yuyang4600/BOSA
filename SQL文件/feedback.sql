/*
Navicat MySQL Data Transfer

Source Server         : sparetime
Source Server Version : 50719
Source Host           : localhost:3306
Source Database       : atlas

Target Server Type    : MYSQL
Target Server Version : 50719
File Encoding         : 65001

Date: 2017-11-06 19:47:11
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for feedback
-- ----------------------------
DROP TABLE IF EXISTS `feedback`;
CREATE TABLE `feedback` (
  `feedback` text COMMENT '意见反馈',
  `phone` varchar(20) DEFAULT NULL COMMENT '手机号码'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*
THIS IS A TEST
*/

TESTTEST
