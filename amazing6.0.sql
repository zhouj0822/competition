/*
Navicat MySQL Data Transfer

Source Server         : test
Source Server Version : 50522
Source Host           : localhost:3306
Source Database       : amazing

Target Server Type    : MYSQL
Target Server Version : 50522
File Encoding         : 65001

Date: 2019-06-11 21:26:18
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `game`
-- ----------------------------
DROP TABLE IF EXISTS `game`;
CREATE TABLE `game` (
  `gameid` int(255) NOT NULL DEFAULT '0',
  `userid` varchar(255) DEFAULT NULL,
  `tm` datetime DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `gname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`gameid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of game
-- ----------------------------

-- ----------------------------
-- Table structure for `news`
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `newsid` int(11) NOT NULL AUTO_INCREMENT,
  `sortid` int(11) NOT NULL DEFAULT '0',
  `tm` datetime DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `text` text,
  `userid` varchar(255) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`newsid`,`sortid`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('1', '1', '0000-00-00 00:00:00', '创业大赛开赛', '欢迎加入', '16116060138', null);
INSERT INTO `news` VALUES ('2', '2', '0000-00-00 00:00:00', '信息学院歌手大赛', '欢迎光临', '16116060138', null);
INSERT INTO `news` VALUES ('3', '1', null, null, null, null, null);
INSERT INTO `news` VALUES ('4', '3', null, 'adfadsfadsf', 'sadfdsfasdf', null, null);
INSERT INTO `news` VALUES ('5', '1', '2019-06-06 08:55:39', '快乐黑凤凰', '真难看', '16116060138', null);
INSERT INTO `news` VALUES ('6', '3', '2019-06-09 08:56:30', '华妃又要整眉姐姐了', '眉姐姐眼睛痛', '16116060138', null);
INSERT INTO `news` VALUES ('7', '2', '2019-06-20 08:57:34', '芬达热了就不好喝了', '但是可口可乐一直好喝', '16116060138', null);
INSERT INTO `news` VALUES ('8', '3', '2019-06-19 09:54:12', '刺死余氏', '妙音娘子dead了', '16116060138', null);
INSERT INTO `news` VALUES ('9', '0', null, '123', '45', null, '/upload/2019/06/09/231818679.txt');
INSERT INTO `news` VALUES ('10', '0', null, '456', '789', null, '/upload/2019/06/09/232142908.txt');

-- ----------------------------
-- Table structure for `shenqing`
-- ----------------------------
DROP TABLE IF EXISTS `shenqing`;
CREATE TABLE `shenqing` (
  `gameid` int(11) NOT NULL DEFAULT '0',
  `tm` datetime DEFAULT NULL,
  `place` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`gameid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shenqing
-- ----------------------------
INSERT INTO `shenqing` VALUES ('0', '2019-06-11 00:00:00', '大学生素质拓展中心');

-- ----------------------------
-- Table structure for `shequ`
-- ----------------------------
DROP TABLE IF EXISTS `shequ`;
CREATE TABLE `shequ` (
  `title` varchar(255) NOT NULL,
  `text` text,
  `userid` varchar(255) DEFAULT NULL,
  `xid` varchar(255) DEFAULT NULL,
  `xtm` datetime DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shequ
-- ----------------------------
INSERT INTO `shequ` VALUES ('哦吼吼', '哔哔哔u', '123', '1', '2019-06-05 22:19:04', '1');
INSERT INTO `shequ` VALUES ('你好呀', '小改改', '123', null, '2019-06-04 22:18:36', '2');
INSERT INTO `shequ` VALUES ('457865', 'hjjgfguu', '123', '/upload/2019/06/10/22285870.null', '2019-06-10 22:28:58', '3');
INSERT INTO `shequ` VALUES ('888888888888', '8888', '123', '/upload/2019/06/11/195519837.docx', '2019-06-11 19:55:19', '4');
INSERT INTO `shequ` VALUES ('5986', '65698', '123', '/upload/2019/06/11/204020377.null', '2019-06-11 20:40:20', '5');

-- ----------------------------
-- Table structure for `sort`
-- ----------------------------
DROP TABLE IF EXISTS `sort`;
CREATE TABLE `sort` (
  `sortid` int(11) NOT NULL DEFAULT '0',
  `sname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sortid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sort
-- ----------------------------
INSERT INTO `sort` VALUES ('1', '赛事公告');
INSERT INTO `sort` VALUES ('2', '赛事动态');
INSERT INTO `sort` VALUES ('3', '往届赛事');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `userid` varchar(255) NOT NULL DEFAULT '',
  `academy` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `rank` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `grade` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('123', null, '123456', null, null, null, null, '1');

-- ----------------------------
-- Table structure for `zhidao`
-- ----------------------------
DROP TABLE IF EXISTS `zhidao`;
CREATE TABLE `zhidao` (
  `gameid` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `ztitle` varchar(255) DEFAULT NULL,
  `ztext` varchar(255) DEFAULT NULL,
  `userid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`gameid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zhidao
-- ----------------------------
INSERT INTO `zhidao` VALUES ('0', '56', '1353', '424', null);
