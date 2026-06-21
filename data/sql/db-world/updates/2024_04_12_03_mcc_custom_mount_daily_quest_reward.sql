-- ============================================================
-- mod-custom-content: 70 级日常任务奖励包裹
-- Date: 2024-04-12
-- Author: maintainer
-- Description:
--   创建 70 级日常任务奖励包裹物品（entry 90007）并将其设为相关日常任务的奖励。
-- Database: db-world
-- ============================================================

-- 70 level daily task reward
DELETE FROM `item_template` WHERE (`entry` = 90007);
INSERT INTO `item_template` (`entry`, `class`, `subclass`, `SoundOverrideSubclass`, `name`, `displayid`, `Quality`, `Flags`, `FlagsExtra`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `ScalingStatDistribution`, `ScalingStatValue`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `delay`, `ammo_type`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmRate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmRate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmRate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmRate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmRate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `block`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `RequiredDisenchantSkill`, `ArmorDamageModifier`, `duration`, `ItemLimitCategory`, `HolidayId`, `ScriptName`, `DisenchantID`, `FoodType`, `minMoneyLoot`, `maxMoneyLoot`, `flagsCustom`, `VerifiedBuild`) VALUES
(90007, 0, 0, -1, '远征补给包', 105775, 4, 4, 0, 1, 0, 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, '包裹透着淡淡的星光，据说是来自熊猫人的宝物', 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0);

DELETE FROM `item_loot_template` WHERE (`Entry` = 90007);
INSERT INTO `item_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(90007, 87777, 0, 0.03, 0, 1, 0, 1, 1, 'Reins of the Astral Cloud Serpent'),
(90007, 90100, 0, 100, 0, 1, 0, 2, 2, ''),
(90007, 22829, 0, 100, 0, 1, 0, 1, 2, 'Super Healing Potion'),
(90007, 22832, 0, 97.2, 0, 1, 0, 1, 2, 'Super Mana Potion');


UPDATE `quest_template` SET `RewardItem2` = 90007, `RewardAmount2` = 1 WHERE (`ID` = 11354);
UPDATE `quest_template` SET `RewardItem2` = 90007, `RewardAmount2` = 1 WHERE (`ID` = 11362);
UPDATE `quest_template` SET `RewardItem2` = 90007, `RewardAmount2` = 1 WHERE (`ID` = 11363);
UPDATE `quest_template` SET `RewardItem2` = 90007, `RewardAmount2` = 1 WHERE (`ID` = 11368);
UPDATE `quest_template` SET `RewardItem2` = 90007, `RewardAmount2` = 1 WHERE (`ID` = 11369);
UPDATE `quest_template` SET `RewardItem2` = 90007, `RewardAmount2` = 1 WHERE (`ID` = 11370);
UPDATE `quest_template` SET `RewardItem2` = 90007, `RewardAmount2` = 1 WHERE (`ID` = 11372);
UPDATE `quest_template` SET `RewardItem2` = 90007, `RewardAmount2` = 1 WHERE (`ID` = 11373);
UPDATE `quest_template` SET `RewardItem2` = 90007, `RewardAmount2` = 1 WHERE (`ID` = 11374);
UPDATE `quest_template` SET `RewardItem2` = 90007, `RewardAmount2` = 1 WHERE (`ID` = 11375);
UPDATE `quest_template` SET `RewardItem2` = 90007, `RewardAmount2` = 1 WHERE (`ID` = 11378);
UPDATE `quest_template` SET `RewardItem2` = 90007, `RewardAmount2` = 1 WHERE (`ID` = 11382);
UPDATE `quest_template` SET `RewardItem2` = 90007, `RewardAmount2` = 1 WHERE (`ID` = 11384);
UPDATE `quest_template` SET `RewardItem2` = 90007, `RewardAmount2` = 1 WHERE (`ID` = 11386);
UPDATE `quest_template` SET `RewardItem2` = 90007, `RewardAmount2` = 1 WHERE (`ID` = 11388);
UPDATE `quest_template` SET `RewardItem2` = 90007, `RewardAmount2` = 1 WHERE (`ID` = 11499);
