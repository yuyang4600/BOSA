/*
Navicat MySQL Data Transfer

Source Server         : sparetime
Source Server Version : 50719
Source Host           : localhost:3306
Source Database       : atlas

Target Server Type    : MYSQL
Target Server Version : 50719
File Encoding         : 65001

Date: 2017-11-06 19:47:31
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for main_brand
-- ----------------------------
DROP TABLE IF EXISTS `main_brand`;
CREATE TABLE `main_brand` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `brand_no` varchar(20) NOT NULL COMMENT '品牌序号',
  `brand` varchar(50) NOT NULL COMMENT '品牌名称',
  `reamrk` varchar(50) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of main_brand
-- ----------------------------
INSERT INTO `main_brand` VALUES ('1', '1', '阿特拉斯', null);
INSERT INTO `main_brand` VALUES ('2', '2', '英格索兰', null);
INSERT INTO `main_brand` VALUES ('3', '3', '神钢', null);
