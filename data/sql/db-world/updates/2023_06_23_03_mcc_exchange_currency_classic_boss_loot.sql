-- ============================================================
-- mod-custom-content: 经典旧世团队首领掉落商栈币
-- Date: 2023-06-23
-- Author: maintainer
-- Description:
--   为熔火之心、黑翼之巢、安其拉、纳克萨玛斯等经典旧世团队首领添加商栈币（item 90100）掉落。
-- Database: db-world
-- ============================================================

-- Ragnaros
DELETE FROM `creature_loot_template` WHERE (`Entry` = 11502) AND (`Item` IN (90100));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(11502, 90100, 0, 100, 0, 1, 0, 2, 2, '商栈币');

-- Garr
DELETE FROM `creature_loot_template` WHERE (`Entry` = 12057) AND (`Item` IN (90100));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(12057, 90100, 0, 100, 0, 1, 0, 2, 2, '商栈币');

-- Baron Geddon
DELETE FROM `creature_loot_template` WHERE (`Entry` = 12056) AND (`Item` IN (90100));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(12056, 90100, 0, 100, 0, 1, 0, 2, 2, '商栈币');

-- Nefarian
DELETE FROM `creature_loot_template` WHERE (`Entry` = 11583) AND (`Item` IN (90100));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(11583, 90100, 0, 100, 0, 1, 0, 2, 2, '商栈币');

-- C'Thun
DELETE FROM `creature_loot_template` WHERE (`Entry` = 15727) AND (`Item` IN (90100));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(15727, 90100, 0, 100, 0, 1, 0, 2, 2, '商栈币');

-- Thaddius
DELETE FROM `creature_loot_template` WHERE (`Entry` = 29448) AND (`Item` IN (90100));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(29448, 90100, 0, 100, 0, 1, 0, 2, 2, '商栈币');

-- Loatheb
DELETE FROM `creature_loot_template` WHERE (`Entry` = 29718) AND (`Item` IN (90100));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(29718, 90100, 0, 100, 0, 1, 0, 2, 2, '商栈币');

-- Maexxna
DELETE FROM `creature_loot_template` WHERE (`Entry` = 29278) AND (`Item` IN (90100));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(29278, 90100, 0, 100, 0, 1, 0, 2, 2, '商栈币');


-- Kel'Thuzad
DELETE FROM `creature_loot_template` WHERE (`Entry` = 30061) AND (`Item` IN (90100));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(30061, 90100, 0, 100, 0, 1, 0, 2, 2, '商栈币');
