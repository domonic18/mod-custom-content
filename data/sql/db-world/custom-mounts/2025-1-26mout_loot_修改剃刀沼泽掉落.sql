-- Charlga Razorflank
DELETE FROM `creature_loot_template` WHERE (`Entry` = 4842) AND (`Item` IN (138387));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(4421, 138387, 0, 1, 0, 1, 0, 1, 1, '');