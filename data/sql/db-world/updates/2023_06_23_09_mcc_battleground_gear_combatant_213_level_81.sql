-- ============================================================
-- mod-custom-content: 战斗大师 213 装备等级调整为 81
-- Date: 2023-06-23
-- Author: maintainer
-- Description:
--   将战斗大师 213 等级 PvP 装备的 RequiredLevel 调整为 81。
-- Database: db-world
-- ============================================================

UPDATE `item_template` 
SET `RequiredLevel` = 81 
WHERE `entry` IN (42128, 42129, 42130, 42131, 42132);
