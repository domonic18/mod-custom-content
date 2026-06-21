-- ============================================================
-- mod-custom-content: 渐进开放修复祖阿曼箱子与生物异常
-- Date: 2023-06-23
-- Author: maintainer
-- Description:
--   修复祖阿曼 NPC 提供的箱子 gameobject_template 数据异常，并清理错误刷新的 creature。
-- Database: db-world
-- ============================================================

-- Fix gameobject loot error
UPDATE `gameobject_template` SET `Data0` = 57 WHERE (`entry` = 186648);
UPDATE `gameobject_template` SET `Data15` = 1 WHERE (`entry` = 186648);

-- Fix creature spawn error
DELETE FROM `creature` WHERE (`id1` = 23790) AND (`guid` IN (89157));