-- ============================================================
-- mod-custom-content: 剃刀沼泽坐骑掉落调整
-- Date: 2025-01-26
-- Author: maintainer
-- Description:
--   调整剃刀沼泽首领卡尔加·刺肋（entry 4421）掉落，添加定制坐骑物品。
-- Database: db-world
-- ============================================================

-- Charlga Razorflank
DELETE FROM `creature_loot_template` WHERE (`Entry` = 4842) AND (`Item` IN (138387));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(4421, 138387, 0, 1, 0, 1, 0, 1, 1, '');
