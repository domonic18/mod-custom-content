-- ============================================================
-- mod-custom-content: 地图锁区数据
-- Date: 2023-06-23
-- Author: maintainer
-- Description:
--   向 mod_mko_map_lock 表插入地图锁区配置，限制未满足条件角色进入指定地图/区域。
-- Database: db-world
-- ============================================================

DELETE FROM `mod_mko_map_lock`;

-- ----------------------------
-- Records of mod_mko_map_lock
-- ----------------------------

INSERT INTO `mod_mko_map_lock` VALUES ('530', '4080', '奎尔丹纳斯岛');
INSERT INTO `mod_mko_map_lock` VALUES ('571', '3537', '北风苔原');
INSERT INTO `mod_mko_map_lock` VALUES (null, '495', '嚎风峡湾');
INSERT INTO `mod_mko_map_lock` VALUES (null, '65', '龙骨荒野');
INSERT INTO `mod_mko_map_lock` VALUES (null, '394', '灰熊丘陵');
INSERT INTO `mod_mko_map_lock` VALUES (null, '66', '祖达克');
INSERT INTO `mod_mko_map_lock` VALUES (null, '3711', '索拉查盆地');
INSERT INTO `mod_mko_map_lock` VALUES (null, '2817', '水晶之歌森林');
INSERT INTO `mod_mko_map_lock` VALUES (null, '67', '风暴峭壁');
INSERT INTO `mod_mko_map_lock` VALUES (null, '210', '冰冠冰川');
INSERT INTO `mod_mko_map_lock` VALUES (null, '4197', '冬拥湖');
INSERT INTO `mod_mko_map_lock` VALUES ('574', '206', '(5人副本)乌特加德城堡');
INSERT INTO `mod_mko_map_lock` VALUES ('578', '4228', '(5人副本)魔环');
INSERT INTO `mod_mko_map_lock` VALUES ('601', '4277', '(5人副本)艾卓尼鲁布');
INSERT INTO `mod_mko_map_lock` VALUES ('600', '4196', '(5人副本)达克萨隆要塞');
INSERT INTO `mod_mko_map_lock` VALUES ('604', '4416', '(5人副本)古达克');
INSERT INTO `mod_mko_map_lock` VALUES ('599', '4264', '(5人副本)岩石大厅');
INSERT INTO `mod_mko_map_lock` VALUES ('595', '4100', '(5人副本)净化斯坦索姆');
INSERT INTO `mod_mko_map_lock` VALUES ('602', '4272', '(5人副本)闪电大厅');
INSERT INTO `mod_mko_map_lock` VALUES ('575', '1196', '(5人副本)乌特加德之巅');
INSERT INTO `mod_mko_map_lock` VALUES ('632', '4809', '(5人副本)灵魂洪炉');
INSERT INTO `mod_mko_map_lock` VALUES ('658', '4813', '(5人副本)萨隆矿坑');
INSERT INTO `mod_mko_map_lock` VALUES ('668', '4820', '(5人副本)映像大厅');
INSERT INTO `mod_mko_map_lock` VALUES (null, '4723', '(5人副本)冠军的试炼');
INSERT INTO `mod_mko_map_lock` VALUES ('616', '4500', '(25人副本)永恒之眼');
INSERT INTO `mod_mko_map_lock` VALUES ('603', '4273', '(25人副本)奥杜尔');
INSERT INTO `mod_mko_map_lock` VALUES ('615', '4493', '(25人副本)黑曜石圣殿');
INSERT INTO `mod_mko_map_lock` VALUES ('624', '4603', '(25人副本)阿尔卡冯的宝库');
INSERT INTO `mod_mko_map_lock` VALUES ('724', '498', '(25人副本)红玉圣殿');
INSERT INTO `mod_mko_map_lock` VALUES ('649', '4722', '(25人副本)十字军的试炼');
INSERT INTO `mod_mko_map_lock` VALUES ('631', '4812', '(25人副本)冰冠堡垒');
