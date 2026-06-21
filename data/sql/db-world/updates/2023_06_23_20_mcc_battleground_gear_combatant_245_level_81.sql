-- ============================================================
-- mod-custom-content: 战斗大师 245 装备等级调整为 81
-- Date: 2023-06-23
-- Author: maintainer
-- Description:
--   将战斗大师 245 级 PvP 装备 RequiredLevel 调整为 81，使其仅在服务器特定阶段可用。
-- Database: db-world
-- ============================================================

UPDATE `item_template` 
SET `RequiredLevel` = 81 
WHERE `entry` IN (42133, 42134, 42135, 42136, 42137);
