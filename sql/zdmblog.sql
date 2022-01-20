/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 80015
Source Host           : localhost:3306
Source Database       : zdmblog

Target Server Type    : MYSQL
Target Server Version : 80015
File Encoding         : 65001

Date: 2022-01-20 19:51:22
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for communitylist
-- ----------------------------
DROP TABLE IF EXISTS `communitylist`;
CREATE TABLE `communitylist` (
  `name` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of communitylist
-- ----------------------------
INSERT INTO `communitylist` VALUES ('lm', '地区的工业总产值和GDP关系', '看到有的地区工业总产值比GDP大好几倍，这种情况怎么解释呢，想构造一个工业总产值/GDP的公式，但是不知道该怎么解释它，有对应的参考文献吗？', '问题互助', '1');
INSERT INTO `communitylist` VALUES ('蓝色天空', '碳转换评估', '哪里可以找到碳转换评估的相关资料呀', '资料分享', '2');
INSERT INTO `communitylist` VALUES ('姜城', '求地级市驻地点图SHP', '找到的是零几年的那一版，很多城市匹配不上。不知道有没有新版的地级市驻地点图SHP。或者求告知怎么在旧版基础上能更正，本人技术有限，盼大神回复', '资料分享', '3');
INSERT INTO `communitylist` VALUES ('染墨清晨', '全要素生产率ACF测算方法', '有农村固定收益统计年鉴不？', '问题互助', '4');
INSERT INTO `communitylist` VALUES ('hhhhaa', '数据测试有哪些方法', '数据测试有哪些方法', '问题互助', '5');

-- ----------------------------
-- Table structure for datalist
-- ----------------------------
DROP TABLE IF EXISTS `datalist`;
CREATE TABLE `datalist` (
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `access` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `info` varchar(255) DEFAULT NULL,
  `dataSort` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `score` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of datalist
-- ----------------------------
INSERT INTO `datalist` VALUES ('2002-2019年地级市人均消费与支出数据', '免费', '文献质量评估对于论文研究有着巨大的作用，能够有效帮助相关研究人员评判一个研究内容质量的好坏。皮皮侠此次向大家分享一份文献质量评估材料，有需要的朋友不要错过！', '企业数据', '1', '0');
INSERT INTO `datalist` VALUES ('0372CSSCI投稿邮箱', '免费', '包括CSSCI(2019-2020)收录来源期刊目录568种，扩展版214种', '企业数据', '2', '0');
INSERT INTO `datalist` VALUES ('549 数字经济大全', '会员免费', '一、数字经济数据(2009-2019)\r\n二、数字经济发展指标体系和测算(2011-2020)\r\n三、地级市数字经济数据(2011-2019)\r\n四、数字经济发展指数(2011-2020)', '企业数据', '3', '2');
INSERT INTO `datalist` VALUES ('546 投资数据集', '会员免费', '中国对外投资全球跟踪数据', '地理数据', '4', '2');
INSERT INTO `datalist` VALUES ('546 投资数据集', '会员免费', '中国对外投资全球跟踪数据', '学习资料', '5', '2');
INSERT INTO `datalist` VALUES ('0063 全国写字楼信息', '免费', '全国写字楼信息，数字经济发展指数(2011-2020)', '地理数据', '6', '0');
INSERT INTO `datalist` VALUES ('0039 中国历史地震数据-780-1970', '免费', '地震、历史', '企业数据', '7', '0');
INSERT INTO `datalist` VALUES ('0379 省、市、县地形起伏度数据', '会员免费', '中国省、市县级地形起伏度数据', '地理数据', '8', '2');
INSERT INTO `datalist` VALUES ('0039 中国历史地震数据-780-1970', '免费', '包括CSSCI(2019-2020)收录来源期刊目录568种，扩展版214', '企业数据', '9', '0');
INSERT INTO `datalist` VALUES ('0379 省、市、县地形起伏度数据', '免费', '中国省、市县级地形起伏度数据', '企业数据', '10', '0');
INSERT INTO `datalist` VALUES ('0341 中国地级市、区县夜光指数2014-2019', '免费', '夜间灯光指数数据是DMSP/OLS的1992-2013年全球遥感影像，包括三种非辐射定标的夜间灯光影像。\r\n三种全年平均影像分别是：无云观测频数影像、平均灯光影像和稳定灯光影像。', '企业数据', '11', '0');
INSERT INTO `datalist` VALUES ('0067 全国幼儿园信息', '免费', '、区域范围：全国4、指标说明：计算方式包含在Excel表等六个', '地理数据', '12', '0');
INSERT INTO `datalist` VALUES ('510产业结构化数据集！', '免费', '、区域范围：全国4、指标说明：计算方式包含在Excel表等六个', '地理数据', '13', '0');
INSERT INTO `datalist` VALUES ('0462全网独家！最新！空气流动系数数据2000-2019年！', '免费', '据是DMSP/OLS的1992-2020年全球遥感影像，包括三种非辐射定标的夜间灯光影像。三种全年平均影像分别是：无云观测频数影像、平均灯光影像和稳定灯光影像。稳定灯光', '地理数据', '14', '4');
INSERT INTO `datalist` VALUES ('529中国省市县灯光数据合集！', '免费', '空气流动系数数据为环境经济学常用工具变量！\r\n数据为复旦大学陈诗一和陈登科教授（2018）在《雾霾污染、政府治理与经济高质量发展》一文中所用地级市空气流动系数面板数据。\r\n计算方式参考论文。\r\n论文附在分享的文件夹中。\r\n主要变量包括地级市、10米风速、边界层高度等。部分数据如下', '地理数据', '15', '0');
INSERT INTO `datalist` VALUES ('0462全网独家！最新！空气流动系数数据2000-2019年！', '免费', '\r\n根据Global/Regional Estimates (V5.GL.02)，计算出国内PM2.5数据（单位：微克/立方米）', '地理数据', '16', '0');
INSERT INTO `datalist` VALUES ('510产业结构化数据集！', '免费', '据是DMSP/OLS的1992-2020年全球遥感影像，包括三种非辐射定标的夜间灯光影像。三种全年平均影像分别是：无云观测频数影像、平均灯光影像和稳定灯光影像。稳定灯光', '地理数据', '17', '0');
INSERT INTO `datalist` VALUES ('0462全网独家！最新！空气流动系数数据2000-2019年！', '免费', '空气流动系数数据为环境经济学常用工具变量！\r\n数据为复旦大学陈诗一和陈登科教授（2018）在《雾霾污染、政府治理与经济高质量发展》一文中所用地级市空气流动系数面板数据。\r\n计算方式参考论文。\r\n论文附在分享的文件夹中。\r\n主要变量包括地级市、10米风速、边界层高度等。部分数据如下', '地理数据', '18', '0');
INSERT INTO `datalist` VALUES ('548 省市县-PM2.5数据合集', '免费', '\r\n根据Global/Regional Estimates (V5.GL.02)，计算出国内PM2.5数据（单位：微克/立方米）', '地理数据', '19', '0');
INSERT INTO `datalist` VALUES ('531WTO世界贸易报告', '免费', '世界贸易报告是WTO机构就全球贸易和经济发展状况发布的一份报告', '地理数据', '20', '0');
INSERT INTO `datalist` VALUES ('0039 中国历史地震数据-780-1970', '免费', '据是DMSP/OLS的1992-2020年全球遥感影像，包括三种非辐射定标的夜间灯光影像。三种全年平均影像分别是：无云观测频数影像、平均灯光影像和稳定灯光影像。稳定灯光', '学习资料', '21', '0');
INSERT INTO `datalist` VALUES ('0039 中国历史地震数据-780-1970', '会员免费', '\r\n根据Global/Regional Estimates (V5.GL.02)，计算出国内PM2.5数据（单位：微克/立方米）', '学习资料', '22', '2');
INSERT INTO `datalist` VALUES ('531WTO世界贸易报告', '会员免费', '世界贸易报告是WTO机构就全球贸易和经济发展状况发布的一份报告', '企业数据', '23', '2');
INSERT INTO `datalist` VALUES ('512全网最全！中国农村统计年鉴1985-2021！', '会员免费', '指数（干春晖泰尔指数）1、数据来源：中国统计年鉴及各省统', '企业数据', '24', '2');
INSERT INTO `datalist` VALUES ('0185 中国民政统计年鉴1949-2020', '会员免费', '世界贸易报告是WTO机构就全球贸易和经济发展状况发布的一份报告', '企业数据', '25', '3');
INSERT INTO `datalist` VALUES ('512全网最全！中国农村统计年鉴1985-2021！', '会员免费', '指数（干春晖泰尔指数）1、数据来源：中国统计年鉴及各省统', '企业数据', '26', '2');
INSERT INTO `datalist` VALUES ('0185 中国民政统计年鉴1949-2020', '会员免费', '世界贸易报告是WTO机构就全球贸易和经济发展状况发布的一份报告', '学习资料', '27', '5');
INSERT INTO `datalist` VALUES ('0039 中国历史地震数据-780-1970', '会员免费', '构合理化高级化指数1、数据来源：各地级市统计年鉴2、时间跨度：2006-2019年 3、区域范围：全国4、指标说明：原始数据在分享文件中部分数据如下四、徐云德三', '地理数据', '28', '2');
INSERT INTO `datalist` VALUES ('0039 中国历史地震数据-780-1970', '会员免费', '指数（干春晖泰尔指数）1、数据来源：中国统计年鉴及各省统', '地理数据', '29', '4');
INSERT INTO `datalist` VALUES ('512全网最全！中国农村统计年鉴1985-2021！', '免费', '指数（干春晖泰尔指数）1、数据来源：中国统计年鉴及各省统', '地理数据', '30', '0');
INSERT INTO `datalist` VALUES ('0185 中国民政统计年鉴1949-2020', '免费', '510产业结构化数据集！', '地理数据', '31', '0');
INSERT INTO `datalist` VALUES ('548 省市县-PM2.5数据合集', '免费', '指数（干春晖泰尔指数）1、数据来源：中国统计年鉴及各省统', '企业数据', '32', '0');
INSERT INTO `datalist` VALUES ('512全网最全！中国农村统计年鉴1985-2021！', '免费', '指数（干春晖泰尔指数）1、数据来源：中国统计年鉴及各省统', '企业数据', '33', '0');
INSERT INTO `datalist` VALUES ('0480中国商品交易市场统计年鉴2001-2020', '免费', '0480中国商品交易市1995-2021(中国高技术统计年鉴2001-2020', '企业数据', '34', '0');
INSERT INTO `datalist` VALUES ('0490全网最新！31个省2010-2021统计年鉴', '会员免费', '省级、统计年鉴\r\n省级、统计年鉴\r\n省级、统计年鉴\r\n', '企业数据', '35', '2');
INSERT INTO `datalist` VALUES ('540 科技统计年鉴、高技术统计年鉴', '会员免费', '1991-2021(中国科技统计年鉴)\r\n1995-2021(中国高技术产业统计年鉴)', '企业数据', '36', '3');
INSERT INTO `datalist` VALUES ('379 省、市、县地形起伏度数据', '会员免费', '中国省、市县级地形起伏度数据', '企业数据', '37', '2');
INSERT INTO `datalist` VALUES ('0069 高德人口迁移数据&LandScan全球人口数据', '会员免费', '高德地图上的人口迁徙数据', '企业数据', '38', '2');

-- ----------------------------
-- Table structure for frontenduser
-- ----------------------------
DROP TABLE IF EXISTS `frontenduser`;
CREATE TABLE `frontenduser` (
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `isVip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `score` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of frontenduser
-- ----------------------------
INSERT INTO `frontenduser` VALUES ('123', '123', '3', 'yes', '0');
INSERT INTO `frontenduser` VALUES ('45', '45', '4', 'no', '0');
INSERT INTO `frontenduser` VALUES ('11', '11', '5', 'no', '0');
INSERT INTO `frontenduser` VALUES ('b', 'b', '14', 'no', '0');
INSERT INTO `frontenduser` VALUES ('3', '3', '15', 'yes', '0');

-- ----------------------------
-- Table structure for supplydata
-- ----------------------------
DROP TABLE IF EXISTS `supplydata`;
CREATE TABLE `supplydata` (
  `title` varchar(255) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `detail` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of supplydata
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
