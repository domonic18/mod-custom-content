DELETE FROM `gameobject_loot_template` WHERE (`Entry` = 22790) AND (`Item` IN (33809));
INSERT INTO `gameobject_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(22790, 33809, 0, 100, 0, 1, 0, 1, 1, '');