-- ============================================================
-- mod-custom-content: 定制坐骑掉落第一批
-- Date: 2023-06-23
-- Author: maintainer
-- Description:
--   为第一批定制坐骑物品添加 creature_loot_template 掉落记录。
-- Database: db-world
-- ============================================================

DELETE FROM `creature_loot_template` WHERE (`Entry` = 1853) AND (`Item` IN (91000));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(1853, 91000, 0, 1, 0, 1, 0, 1, 1, '');


DELETE FROM `creature_loot_template` WHERE (`Entry` = 9019) AND (`Item` IN (91001));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(9019, 91001, 0, 1, 0, 1, 0, 1, 1, '');

DELETE FROM `creature_loot_template` WHERE (`Entry` = 10363) AND (`Item` IN (91003));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(10363, 91003, 0, 1, 0, 1, 0, 1, 1, '');

DELETE FROM `creature_loot_template` WHERE (`Entry` = 9568) AND (`Item` IN (91004));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(9568, 91004, 0, 1, 0, 1, 0, 1, 1, '');
