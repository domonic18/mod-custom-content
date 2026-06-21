-- ============================================================
-- mod-custom-content: 商栈币扩展兑换成本 DBC
-- Date: 2023-06-23
-- Author: maintainer
-- Description:
--   向 itemextendedcost_dbc 插入自定义兑换成本（ID 20004），用于商栈币兑换坐骑/物品。
-- Database: db-world
-- ============================================================

/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50733
Source Host           : 127.0.0.1:3306
Source Database       : acore_world

Target Server Type    : MYSQL
Target Server Version : 50733
File Encoding         : 65001

Date: 2024-05-18 13:11:15
*/

-- ----------------------------
-- Records of itemextendedcost_dbc
-- ----------------------------
DELETE FROM `itemextendedcost_dbc` WHERE (`ID` = 20004);
INSERT INTO `itemextendedcost_dbc` VALUES ('20004', '0', '0', '0', '90100', '0', '0', '0', '0', '10', '0', '0', '0', '0', '0', '0');
