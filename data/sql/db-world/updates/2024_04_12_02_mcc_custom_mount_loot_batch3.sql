-- ============================================================
-- mod-custom-content: 定制坐骑掉落第三批
-- Date: 2024-04-12
-- Author: maintainer
-- Description:
--   为第三批定制坐骑物品添加 creature_loot_template 掉落记录。
-- Database: db-world
-- ============================================================



-- Nightbane
DELETE FROM `creature_loot_template` WHERE (`Entry` = 17225) AND (`Item` IN (183618));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(17225, 183618, 0, 3, 0, 1, 0, 1, 1, '');

-- High King Maulgar
DELETE FROM `creature_loot_template` WHERE (`Entry` = 18831) AND (`Item` IN (170069));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(18831, 170069, 0, 3, 0, 1, 0, 1, 1, '');


-- Amnennar the Coldbringer
DELETE FROM `creature_loot_template` WHERE (`Entry` = 7358) AND (`Item` IN (63044));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(7358, 63044, 0, 1, 0, 1, 0, 1, 1, '');

-- Avatar of the Martyred
DELETE FROM `creature_loot_template` WHERE (`Entry` = 20303) AND (`Item` IN (166432));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(20303, 166432, 0, 2, 0, 1, 0, 1, 1, '');

-- Pathaleon the Calculator
DELETE FROM `creature_loot_template` WHERE (`Entry` = 21537) AND (`Item` IN (89363));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(21537, 89363, 0, 2, 0, 1, 0, 1, 1, '');

-- Kael'thas Sunstrider
DELETE FROM `creature_loot_template` WHERE (`Entry` = 24664) AND (`Item` IN (87783));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(24664, 87783, 0, 2, 0, 1, 0, 1, 1, '');

-- Al'ar
DELETE FROM `creature_loot_template` WHERE (`Entry` = 19514) AND (`Item` IN (63125));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(19514, 63125, 0, 2, 0, 1, 0, 1, 1, '');

-- Jergosh the Invoker
DELETE FROM `creature_loot_template` WHERE (`Entry` = 11518) AND (`Item` IN (183053));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(11518, 183053, 0, 1, 0, 1, 0, 1, 1, '');

-- Zul'jin
DELETE FROM `creature_loot_template` WHERE (`Entry` = 23863) AND (`Item` IN (156563));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(23863, 156563, 0, 2, 0, 1, 0, 1, 1, '');

-- Aeonus
DELETE FROM `creature_loot_template` WHERE (`Entry` = 20737) AND (`Item` IN (62900));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(20737, 62900, 0, 2, 0, 1, 0, 1, 1, '');

-- Epoch Hunter
DELETE FROM `creature_loot_template` WHERE (`Entry` = 20531) AND (`Item` IN (63042));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(20531, 63042, 0, 2, 0, 1, 0, 1, 1, '');

-- Netherspite
DELETE FROM `creature_loot_template` WHERE (`Entry` = 15689) AND (`Item` IN (63043));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(15689, 63043, 0, 3, 0, 1, 0, 1, 1, '');

-- Kil'jaeden
DELETE FROM `creature_loot_template` WHERE (`Entry` = 25315) AND (`Item` IN (65891));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(25315, 65891, 0, 2, 0, 1, 0, 1, 1, '');

-- Fathom-Lord Karathress
DELETE FROM `creature_loot_template` WHERE (`Entry` = 21214) AND (`Item` IN (87802));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(21214, 87802, 0, 3, 0, 1, 0, 1, 1, '');

-- Illidan Stormrage
DELETE FROM `creature_loot_template` WHERE (`Entry` = 22917) AND (`Item` IN (123974));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(22917, 123974, 0, 2, 0, 1, 0, 1, 1, '');

-- Halazzi
DELETE FROM `creature_loot_template` WHERE (`Entry` = 23577) AND (`Item` IN (106246));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(23577, 106246, 0, 3, 0, 1, 0, 1, 1, '');

-- Keli'dan the Breaker
DELETE FROM `creature_loot_template` WHERE (`Entry` = 18607) AND (`Item` IN (93386));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(18607, 93386, 0, 2, 0, 1, 0, 1, 1, '');

-- Terestian Illhoof
DELETE FROM `creature_loot_template` WHERE (`Entry` = 15688) AND (`Item` IN (93169));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(15688, 93169, 0, 3, 0, 1, 0, 1, 1, '');

-- Kalecgos encounter
-- Kalecgos (24850) has lootid = 0 because he is freed, not killed.
-- The encounter's loot is on Sathrovarr the Corruptor (24892), whose lootid = 24892.
-- Source: Unit.cpp:14063 fills loot from creature_template.lootid; Sathrovarr is the lootable corpse.
DELETE FROM `creature_loot_template` WHERE (`Entry` = 24850) AND (`Item` IN (166776));
DELETE FROM `creature_loot_template` WHERE (`Entry` = 24892) AND (`Item` IN (166776));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(24892, 166776, 0, 2, 0, 1, 0, 1, 1, 'Kalecgos encounter - Sathrovarr');

-- Yor
DELETE FROM `creature_loot_template` WHERE (`Entry` = 22930) AND (`Item` IN (166775));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(22930, 166775, 0, 2, 0, 1, 0, 1, 1, '');

-- Archimonde
DELETE FROM `creature_loot_template` WHERE (`Entry` = 17968) AND (`Item` IN (97989));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(17968, 97989, 0, 2, 0, 1, 0, 1, 1, '');

-- Magtheridon
DELETE FROM `creature_loot_template` WHERE (`Entry` = 17257) AND (`Item` IN (152816));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(17257, 152816, 0, 3, 0, 1, 0, 1, 1, '');

-- Gruul the Dragonkiller
DELETE FROM `creature_loot_template` WHERE (`Entry` = 19044) AND (`Item` IN (116383));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(19044, 116383, 0, 3, 0, 1, 0, 1, 1, '');

-- Akil'zon
DELETE FROM `creature_loot_template` WHERE (`Entry` = 23574) AND (`Item` IN (143631));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(23574, 143631, 0, 3, 0, 1, 0, 1, 1, '');

-- Talon King Ikiss
DELETE FROM `creature_loot_template` WHERE (`Entry` = 20706) AND (`Item` IN (71665));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(20706, 71665, 0, 2, 0, 1, 0, 1, 1, '');

-- The Lurker Below
DELETE FROM `creature_loot_template` WHERE (`Entry` = 21217) AND (`Item` IN (138811));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(21217, 138811, 0, 3, 0, 1, 0, 1, 1, '');

-- High Astromancer Solarian
DELETE FROM `creature_loot_template` WHERE (`Entry` = 18805) AND (`Item` IN (143764));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(18805, 143764, 0, 3, 0, 1, 0, 1, 1, '');

-- Mekgineer Thermaplugg
DELETE FROM `creature_loot_template` WHERE (`Entry` = 7800) AND (`Item` IN (89391));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(7800, 89391, 0, 1, 0, 1, 0, 1, 1, '');

-- Void Reaver
DELETE FROM `creature_loot_template` WHERE (`Entry` = 19516) AND (`Item` IN (161134));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(19516, 161134, 0, 3, 0, 1, 0, 1, 1, '');

-- Dextren Ward
DELETE FROM `creature_loot_template` WHERE (`Entry` = 1663) AND (`Item` IN (153593));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(1663, 153593, 0, 1, 0, 1, 0, 1, 1, '');

-- Doomwalker
DELETE FROM `creature_loot_template` WHERE (`Entry` = 17711) AND (`Item` IN (153594));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(17711, 153594, 0, 2, 0, 1, 0, 1, 1, '');

-- Lady Vashj
DELETE FROM `creature_loot_template` WHERE (`Entry` = 21212) AND (`Item` IN (91057));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(21212, 91057, 0, 2, 0, 1, 0, 1, 1, '');

-- Doom Lord Kazzak
DELETE FROM `creature_loot_template` WHERE (`Entry` = 18728) AND (`Item` IN (168370));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(18728, 168370, 0, 2, 0, 1, 0, 1, 1, '');

-- Warp Splinter
DELETE FROM `creature_loot_template` WHERE (`Entry` = 21582) AND (`Item` IN (128422));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(21582, 128422, 0, 2, 0, 1, 0, 1, 1, '');

-- Felmyst
DELETE FROM `creature_loot_template` WHERE (`Entry` = 25038) AND (`Item` IN (87774));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(25038, 87774, 0, 3, 0, 1, 0, 1, 1, '');

-- Azgalor
DELETE FROM `creature_loot_template` WHERE (`Entry` = 17842) AND (`Item` IN (104208));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(17842, 104208, 0, 3, 0, 1, 0, 1, 1, '');

-- Murmur
DELETE FROM `creature_loot_template` WHERE (`Entry` = 20657) AND (`Item` IN (85870));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(20657, 85870, 0, 2, 0, 1, 0, 1, 1, '');

-- 唤地者哈穆加
DELETE FROM `creature_loot_template` WHERE (`Entry` = 4842) AND (`Item` IN (138387));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(4842, 138387, 0, 1, 0, 1, 0, 1, 1, '');

-- Harbinger Skyriss
DELETE FROM `creature_loot_template` WHERE (`Entry` = 21601) AND (`Item` IN (112327));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(21601, 112327, 0, 2, 0, 1, 0, 1, 1, '');

-- Prince Tortheldrin
DELETE FROM `creature_loot_template` WHERE (`Entry` = 11486) AND (`Item` IN (64998));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(11486, 64998, 0, 1, 0, 1, 0, 1, 1, '');

-- King Gordok
DELETE FROM `creature_loot_template` WHERE (`Entry` = 11501) AND (`Item` IN (87789));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(11501, 87789, 0, 1, 0, 1, 0, 1, 1, '');

-- Supremus
DELETE FROM `creature_loot_template` WHERE (`Entry` = 22898) AND (`Item` IN (87250));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(22898, 87250, 0, 3, 0, 1, 0, 1, 1, '');

-- Mother Shahraz
DELETE FROM `creature_loot_template` WHERE (`Entry` = 22947) AND (`Item` IN (166463));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(22947, 166463, 0, 3, 0, 1, 0, 1, 1, '');

-- Warlord Kalithresh
DELETE FROM `creature_loot_template` WHERE (`Entry` = 20633) AND (`Item` IN (167171));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(20633, 167171, 0, 2, 0, 1, 0, 1, 1, '');

-- Nexus-Prince Shaffar
DELETE FROM `creature_loot_template` WHERE (`Entry` = 20266) AND (`Item` IN (152844));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(20266, 152844, 0, 2, 0, 1, 0, 1, 1, '');

-- The Black Stalker
DELETE FROM `creature_loot_template` WHERE (`Entry` = 20184) AND (`Item` IN (152840));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(20184, 152840, 0, 2, 0, 1, 0, 1, 1, '');

-- Isalien
DELETE FROM `creature_loot_template` WHERE (`Entry` = 16097) AND (`Item` IN (129922));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(16097, 129922, 0, 1, 0, 1, 0, 1, 1, '');

-- Aku'mai
DELETE FROM `creature_loot_template` WHERE (`Entry` = 4829) AND (`Item` IN (182650));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(4829, 182650, 0, 1, 0, 1, 0, 1, 1, '');

-- Prince Malchezaar
DELETE FROM `creature_loot_template` WHERE (`Entry` = 15690) AND (`Item` IN (84101));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(15690, 84101, 0, 3, 0, 1, 0, 1, 1, '');

-- Princess Huhuran
DELETE FROM `creature_loot_template` WHERE (`Entry` = 15509) AND (`Item` IN (166464));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(15509, 166464, 0, 3, 0, 1, 0, 1, 1, '');

-- Mutanus the Devourer
DELETE FROM `creature_loot_template` WHERE (`Entry` = 3654) AND (`Item` IN (166465));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(3654, 166465, 0, 1, 0, 1, 0, 1, 1, '');

-- Quagmirran
DELETE FROM `creature_loot_template` WHERE (`Entry` = 19894) AND (`Item` IN (163123));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(19894, 163123, 0, 2, 0, 1, 0, 1, 1, '');

-- Reinforced Fel Iron Chest
DELETE FROM `gameobject_loot_template` WHERE (`Entry` = 21764) AND (`Item` IN (143637));
INSERT INTO `gameobject_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(21764, 143637, 0, 2, 0, 1, 0, 1, 1, '');
