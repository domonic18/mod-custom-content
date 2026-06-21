-- ============================================================
-- mod-custom-content: 年兽坐骑掉落奖励
-- Date: 2024-04-12
-- Author: maintainer
-- Description:
--   为年兽相关物品（entry 21509~21513）添加定制坐骑物品（entry 91047）掉落。
-- Database: db-world
-- ============================================================

DELETE FROM `item_loot_template` WHERE (`Entry` = 21509) AND (`Item` IN (91047));
INSERT INTO `item_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(21509, 91047, 0, 1, 0, 1, 0, 1, 1, '');

DELETE FROM `item_loot_template` WHERE (`Entry` = 21510) AND (`Item` IN (91047));
INSERT INTO `item_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(21510, 91047, 0, 1, 0, 1, 0, 1, 1, '');

DELETE FROM `item_loot_template` WHERE (`Entry` = 21511) AND (`Item` IN (91047));
INSERT INTO `item_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(21511, 91047, 0, 1, 0, 1, 0, 1, 1, '');

DELETE FROM `item_loot_template` WHERE (`Entry` = 21512) AND (`Item` IN (91047));
INSERT INTO `item_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(21512, 91047, 0, 1, 0, 1, 0, 1, 1, '');

DELETE FROM `item_loot_template` WHERE (`Entry` = 21513) AND (`Item` IN (91047));
INSERT INTO `item_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(21513, 91047, 0, 1, 0, 1, 0, 1, 1, '');
