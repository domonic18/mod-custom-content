-- change Gruul the Dragonkiller loot count:3→5

DELETE FROM `creature_loot_template` WHERE (`Entry` = 19044) AND (`Item` IN (190039));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(19044, 190039, 34051, 100, 0, 1, 1, 3, 3, 'Gruul the Dragonkiller - (ReferenceTable)');