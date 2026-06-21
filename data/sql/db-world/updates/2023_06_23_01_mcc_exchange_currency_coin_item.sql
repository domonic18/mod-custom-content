-- ============================================================
-- mod-custom-content: 商栈币与兑换 NPC 物品创建
-- Date: 2023-06-23
-- Author: maintainer
-- Description:
--   创建商栈币物品（entry 90100）及兑换 NPC 19227 的 vendor 列表，支持商栈币兑换系统。
-- Database: db-world
-- ============================================================

DELETE FROM `item_template` WHERE (`entry` = 90100);
INSERT INTO `item_template` (`entry`, `class`, `subclass`, `SoundOverrideSubclass`, `name`, `displayid`, `Quality`, `Flags`, `FlagsExtra`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `StatsCount`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `ScalingStatDistribution`, `ScalingStatValue`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `delay`, `ammo_type`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmRate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmRate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmRate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmRate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmRate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `block`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `RequiredDisenchantSkill`, `ArmorDamageModifier`, `duration`, `ItemLimitCategory`, `HolidayId`, `ScriptName`, `DisenchantID`, `FoodType`, `minMoneyLoot`, `maxMoneyLoot`, `flagsCustom`, `VerifiedBuild`) VALUES
(90100, 10, 0, -1, '商栈币', 106058, 4, 2048, 0, 1, 0, 0, 0, 262143, 32767, 70, 70, 0, 0, 0, 0, 0, 0, 0, 2147483647, 2147483647, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, '', 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 8192, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 12340);

DELETE FROM `npc_vendor` WHERE (`entry` = 19227 AND `item` = 91012);
DELETE FROM `npc_vendor` WHERE (`entry` = 19227 AND `item` = 91002);
DELETE FROM `npc_vendor` WHERE (`entry` = 19227 AND `item` = 91030);
DELETE FROM `npc_vendor` WHERE (`entry` = 19227 AND `item` = 91005);
DELETE FROM `npc_vendor` WHERE (`entry` = 19227 AND `item` = 91006);
DELETE FROM `npc_vendor` WHERE (`entry` = 19227 AND `item` = 182650);
DELETE FROM `npc_vendor` WHERE (`entry` = 19227 AND `item` = 90001);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES
(19227, 0, 91012, 0, 0, 20001, 0),
(19227, 0, 91002, 0, 0, 20001, 0),
(19227, 0, 91030, 0, 0, 20001, 0),
(19227, 0, 91005, 0, 0, 2329, 0),
(19227, 0, 91006, 0, 0, 2329, 0),
(19227, 0, 182650, 0, 0, 2329, 0),
(19227, 0, 90001, 0, 0, 20004, 0);
