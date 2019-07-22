/*
Navicat MySQL Data Transfer

Source Server         : car
Source Server Version : 50510
Source Host           : localhost:3306
Source Database       : car

Target Server Type    : MYSQL
Target Server Version : 50510
File Encoding         : 65001

Date: 2018-11-12 16:18:20
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `order`
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL,
  `time` date NOT NULL,
  `or_address` varchar(20) NOT NULL,
  `confirm` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `order` (`confirm`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order
-- ----------------------------
INSERT INTO `order` VALUES ('1', '1', '2018-11-14', '重庆市沙坪坝', '预约失败');
INSERT INTO `order` VALUES ('2', '3', '2018-11-23', '重庆市涪陵区', '预约成功');
INSERT INTO `order` VALUES ('3', '5', '2018-11-27', '重庆市沙坪坝', '预约成功');
