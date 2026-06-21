-- ============================================================
-- mod-custom-content: 渐进开放增加祖阿曼 NPC 对话掉落战熊
-- Date: 2023-06-23
-- Author: maintainer
-- Description:
--   为祖阿曼 NPC 对话提供的箱子增加战熊坐骑掉落。
-- Database: db-world
-- ============================================================

DELETE FROM `gameobject_loot_template` WHERE (`Entry` = 22790) AND (`Item` IN (33809));
INSERT INTO `gameobject_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(22790, 33809, 0, 100, 0, 1, 0, 1, 1, '');