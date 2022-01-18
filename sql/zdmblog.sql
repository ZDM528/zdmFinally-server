/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 80015
Source Host           : localhost:3306
Source Database       : zdmblog

Target Server Type    : MYSQL
Target Server Version : 80015
File Encoding         : 65001

Date: 2022-01-18 15:43:16
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for datalist
-- ----------------------------
DROP TABLE IF EXISTS `datalist`;
CREATE TABLE `datalist` (
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `way` varchar(255) DEFAULT NULL,
  `info` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `money` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of datalist
-- ----------------------------
INSERT INTO `datalist` VALUES ('2002-2019年地级市人均消费与支出数据', '免费', '文献质量评估对于论文研究有着巨大的作用，能够有效帮助相关研究人员评判一个研究内容质量的好坏。皮皮侠此次向大家分享一份文献质量评估材料，有需要的朋友不要错过！', '企业数据', 'false', '1');
INSERT INTO `datalist` VALUES ('0372CSSCI投稿邮箱', '免费', '包括CSSCI(2019-2020)收录来源期刊目录568种，扩展版214种', '企业数据', 'false', '2');

-- ----------------------------
-- Table structure for frontenduser
-- ----------------------------
DROP TABLE IF EXISTS `frontenduser`;
CREATE TABLE `frontenduser` (
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `isVip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of frontenduser
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('danmin', '11');
