/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 80015
Source Host           : localhost:3306
Source Database       : zdmblog

Target Server Type    : MYSQL
Target Server Version : 80015
File Encoding         : 65001

Date: 2022-01-18 14:13:45
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for frontenduser
-- ----------------------------
DROP TABLE IF EXISTS `frontenduser`;
CREATE TABLE `frontenduser` (
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of frontenduser
-- ----------------------------
