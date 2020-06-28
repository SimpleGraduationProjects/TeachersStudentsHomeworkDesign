/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50519
Source Host           : localhost:3306
Source Database       : userdb

Target Server Type    : MYSQL
Target Server Version : 50519
File Encoding         : 65001

Date: 2020-06-28 09:44:52
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_students
-- ----------------------------
DROP TABLE IF EXISTS `t_students`;
CREATE TABLE `t_students` (
  `sid` varchar(20) CHARACTER SET utf8 NOT NULL,
  `sname` varchar(20) DEFAULT NULL,
  `spwd` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_students
-- ----------------------------
INSERT INTO `t_students` VALUES ('1', 'lzh', '123');

-- ----------------------------
-- Table structure for t_teachers
-- ----------------------------
DROP TABLE IF EXISTS `t_teachers`;
CREATE TABLE `t_teachers` (
  `tid` varchar(20) NOT NULL,
  `tname` varchar(20) DEFAULT NULL,
  `tpwd` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_teachers
-- ----------------------------
INSERT INTO `t_teachers` VALUES ('1', 'lzh', '123');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `username` varchar(20) CHARACTER SET utf8 NOT NULL,
  `password` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('lzh', '123', '123');

-- ----------------------------
-- Table structure for t_works
-- ----------------------------
DROP TABLE IF EXISTS `t_works`;
CREATE TABLE `t_works` (
  `wid` int(20) NOT NULL,
  `wname` varchar(20) DEFAULT NULL,
  `wcontent` varchar(20) DEFAULT NULL,
  `p_time` varchar(20) DEFAULT NULL,
  `f_time` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`wid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_works
-- ----------------------------
INSERT INTO `t_works` VALUES ('0', '1', '1', '2020-05-09', '1');

-- ----------------------------
-- Procedure structure for sp_insert_t_work
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_insert_t_work`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_insert_t_work`(IN `wid` int,IN `wname` varchar(20),IN `wcontent` varchar(20),IN `p_time` varchar(20),IN `f_time` varchar(20))
BEGIN
	insert into t_works values(wid,wname,wcontent,p_time,f_time);

END
;;
DELIMITER ;
