-- 
-- User: Deadwalk
-- Date: 01/05/2021
-- Time: 23:16



-- 升级随机本牌子奖励：
-- 普通日常第一次	英雄纹章→征服纹章
-- 英雄日常第一次	征服纹章→凯旋纹章
-- 英雄日常第N次	英雄纹章→征服纹章
-- 升级5人副本的牌子奖励：
-- 魔枢	英雄纹章→征服纹章
-- 魔环	英雄纹章→征服纹章
-- 艾卓-尼鲁布	英雄纹章→征服纹章
-- 安卡赫特：古代王国	英雄纹章→征服纹章
-- 达克萨隆要塞	英雄纹章→征服纹章
-- 古达克	英雄纹章→征服纹章
-- 乌特加德城堡	英雄纹章→征服纹章
-- 乌特加德之巅	英雄纹章→征服纹章
-- 岩石大厅	英雄纹章→征服纹章
-- 闪电大厅	英雄纹章→征服纹章
-- 净化斯坦索姆	英雄纹章→征服纹章
-- 紫罗兰监狱	英雄纹章→征服纹章
-- 冠军的试炼（普通难度）	英雄纹章→征服纹章



-- 日常随机本(第一次)牌子
UPDATE `quest_template` SET `RewardItem1` = 45624 WHERE (`ID` = 24790);

-- 日常随机本(英雄)第一次
UPDATE `quest_template` SET `RewardItem1` = 47241 WHERE (`ID` = 24788);

-- 日常随机本(英雄)第N次
UPDATE `quest_template` SET `RewardItem1` = 45624 WHERE (`ID` = 24789);

-- 大魔导师泰蕾丝塔	Grand Magus Telestra
DELETE FROM `creature_loot_template` WHERE (`Entry` = 30510) AND (`Item` IN (40752, 45624));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(30510, 45624, 0, 100, 0, 1, 0, 1, 1, 'Grand Magus Telestra (1) - Emblem of Triumph');

-- 阿诺玛鲁斯	Anomalus
DELETE FROM `creature_loot_template` WHERE (`Entry` = 30529) AND (`Item` IN (40752, 45624));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(30529, 45624, 0, 100, 0, 1, 0, 1, 1, 'Anomalus (1) - Emblem of Triumph');


-- 塑树者奥莫洛克	Ormorok the Tree-Shaper
DELETE FROM `creature_loot_template` WHERE (`Entry` = 30532) AND (`Item` IN (40752, 45624));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(30532, 45624, 0, 100, 0, 1, 0, 1, 1, 'Ormorok the Tree-Shaper (1) - Emblem of Triumph');


-- 指挥官鲁尔格、斯托比德	Commander Kolurg、Commander Stoutbeard
DELETE FROM `creature_loot_template` WHERE (`Entry` = 30397) AND (`Item` IN (40752, 45624));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(30397, 45624, 0, 100, 0, 1, 0, 1, 1, 'Commander Kolurg (1) - Emblem of Triumph');

DELETE FROM `creature_loot_template` WHERE (`Entry` = 30398) AND (`Item` IN (40752, 45624));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(30398, 45624, 0, 100, 0, 1, 0, 1, 1, 'Commander Stoutbeard (1) - Emblem of Triumph');


-- 克莉斯塔萨	Keristrasza
DELETE FROM `creature_loot_template` WHERE (`Entry` = 30540) AND (`Item` IN (40752, 45624));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(30540, 45624, 0, 100, 0, 1, 0, 1, 1, 'Keristrasza (1) - Emblem of Triumph');


-- 审讯者达库斯	Drakos the Interrogator
DELETE FROM `creature_loot_template` WHERE (`Entry` = 31558) AND (`Item` IN (40752, 45624));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(31558, 45624, 0, 100, 0, 1, 0, 1, 1, 'Drakos the Interrogator (1) - Emblem of Triumph');


-- 法师领主伊洛姆	Mage-Lord Urom
DELETE FROM `creature_loot_template` WHERE (`Entry` = 31560) AND (`Item` IN (40752, 45624));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(31560, 45624, 0, 100, 0, 1, 0, 1, 1, 'Mage-Lord Urom (1) - Emblem of Triumph');


-- 瓦尔洛斯·云击	Varos Cloudstrider
DELETE FROM `creature_loot_template` WHERE (`Entry` = 31559) AND (`Item` IN (40752, 45624));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(31559, 45624, 0, 100, 0, 1, 0, 1, 1, 'Varos Cloudstrider (1) - Emblem of Triumph');


-- 魔网守护者埃雷苟斯	Ley-Guardian Eregos

-- 看门者克里克希尔	Krik'thir the Gatewatcher
DELETE FROM `creature_loot_template` WHERE (`Entry` = 31612) AND (`Item` IN (40752, 45624));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(31612, 45624, 0, 100, 0, 1, 0, 1, 1, 'Krik\'thir the Gatewatcher (1) - Emblem of Triumph');

-- 哈多诺克斯	Hadronox
DELETE FROM `creature_loot_template` WHERE (`Entry` = 31611) AND (`Item` IN (40752, 45624));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(31611, 45624, 0, 100, 0, 1, 0, 1, 1, 'Hadronox (1) - Emblem of Triumph');


-- 阿努巴拉克	Anub'arak
DELETE FROM `creature_loot_template` WHERE (`Entry` = 31610) AND (`Item` IN (40752, 45624));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(31610, 45624, 0, 100, 0, 1, 0, 1, 1, 'Anub\'arak (1) - Emblem of Triumph');

-- 纳多克斯长老	Elder Nadox
DELETE FROM `creature_loot_template` WHERE (`Entry` = 31456) AND (`Item` IN (40752, 45624));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(31456, 45624, 0, 100, 0, 1, 0, 1, 1, 'Elder Nadox (1) - Emblem of Triumph');

-- 塔达拉姆王子	Prince Taldaram
DELETE FROM `creature_loot_template` WHERE (`Entry` = 31469) AND (`Item` IN (40752, 45624));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(31469, 45624, 0, 100, 0, 1, 0, 1, 1, 'Prince Taldaram (1) - Emblem of Triumph');


-- 埃曼尼塔	Amanitar
DELETE FROM `creature_loot_template` WHERE (`Entry` = 31463) AND (`Item` IN (40752, 45624));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(31463, 45624, 0, 100, 0, 1, 0, 1, 1, 'Amanitar (1) - Emblem of Triumph');

-- 耶戈达·觅影者	Jedoga Shadowseeker
DELETE FROM `creature_loot_template` WHERE (`Entry` = 31465) AND (`Item` IN (40752, 45624));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(31465, 45624, 0, 100, 0, 1, 0, 1, 1, 'Jedoga Shadowseeker (1) - Emblem of Triumph');

-- 传令官沃拉兹	Herald Volazj
DELETE FROM `creature_loot_template` WHERE (`Entry` = 31464) AND (`Item` IN (40752, 45624));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(31464, 45624, 0, 100, 0, 1, 0, 1, 1, 'Herald Volazj (1) - Emblem of Triumph');


-- 托尔戈	Trollgore
DELETE FROM `creature_loot_template` WHERE (`Entry` = 31362) AND (`Item` IN (40752, 45624));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(31362, 45624, 0, 100, 0, 1, 0, 1, 1, 'Trollgore (1) - Emblem of Triumph');

-- 召唤者诺沃斯	Novos the Summoner
DELETE FROM `creature_loot_template` WHERE (`Entry` = 31350) AND (`Item` IN (40752, 45624));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(31350, 45624, 0, 100, 0, 1, 0, 1, 1, 'Novos the Summoner (1) - Emblem of Triumph');

-- 暴龙之王爵德	King Dred
DELETE FROM `creature_loot_template` WHERE (`Entry` = 31349) AND (`Item` IN (40752, 45624));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(31349, 45624, 0, 100, 0, 1, 0, 1, 1, 'King Dred (1) - Emblem of Triumph');

-- 先知萨隆亚	The Prophet Tharon'ja
DELETE FROM `creature_loot_template` WHERE (`Entry` = 31360) AND (`Item` IN (40752, 45624));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(31360, 45624, 0, 100, 0, 1, 0, 1, 1, 'The Prophet Tharon\'ja (1) - Emblem of Triumph');

-- 斯拉德兰	Slad'ran
DELETE FROM `creature_loot_template` WHERE (`Entry` = 31370) AND (`Item` IN (40752, 45624));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(31370, 45624, 0, 100, 0, 1, 0, 1, 1, 'Slad\'ran (1) - Emblem of Triumph');

-- 达卡莱巨像	Drakkari Colossus
-- 莫拉比	Moorabi
DELETE FROM `creature_loot_template` WHERE (`Entry` = 30530) AND (`Item` IN (40752, 45624));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(30530, 45624, 0, 100, 0, 1, 0, 1, 1, 'Moorabi (1) - Emblem of Triumph');

-- 凶残的伊克	Eck the Ferocious
DELETE FROM `creature_loot_template` WHERE (`Entry` = 29932) AND (`Item` IN (40752, 45624));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(29932, 45624, 0, 100, 0, 1, 0, 1, 1, 'Eck the Ferocious - Emblem of Triumph');

-- 迦尔达拉	Gal'darah
DELETE FROM `creature_loot_template` WHERE (`Entry` = 31368) AND (`Item` IN (40752, 45624));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(31368, 45624, 0, 100, 0, 1, 0, 1, 1, 'Gal\'darah (1) - Emblem of Triumph');

-- 凯雷塞斯王子	Prince Keleseth
DELETE FROM `creature_loot_template` WHERE (`Entry` = 30748) AND (`Item` IN (40752, 45624));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(30748, 45624, 0, 100, 0, 1, 0, 1, 1, 'Prince Keleseth (1) - Emblem of Triumph');

-- 建筑师斯卡瓦尔德、控制者达尔隆	Skarvald the Constructor、Dalronn the Controller
DELETE FROM `creature_loot_template` WHERE (`Entry` = 31679) AND (`Item` IN (40752, 45624));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(31679, 45624, 0, 100, 0, 1, 0, 1, 1, 'Skarvald the Constructor (1) - Emblem of Triumph');
DELETE FROM `creature_loot_template` WHERE (`Entry` = 31656) AND (`Item` IN (40752, 45624));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(31656, 45624, 0, 100, 0, 1, 0, 1, 1, 'Dalronn the Controller (1) - Emblem of Triumph');

-- 掠夺者因格瓦尔	Ingvar the Plunderer
DELETE FROM `creature_loot_template` WHERE (`Entry` = 31673) AND (`Item` IN (40752, 45624));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(31673, 45624, 0, 100, 0, 1, 0, 1, 1, 'Ingvar the Plunderer (1) - Emblem of Triumph');

-- 席瓦拉·索格蕾	Svala Sorrowgrave
DELETE FROM `creature_loot_template` WHERE (`Entry` = 30810) AND (`Item` IN (40752, 45624));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(30810, 45624, 0, 100, 0, 1, 0, 1, 1, 'Svala Sorrowgrave (1) - Emblem of Triumph');

-- 戈托克·苍蹄	Gortok Palehoof
DELETE FROM `creature_loot_template` WHERE (`Entry` = 30774) AND (`Item` IN (40752, 45624));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(30774, 45624, 0, 100, 0, 1, 0, 1, 1, 'Gortok Palehoof (1) - Emblem of Triumph');

-- 残忍的斯卡迪	Skadi the Ruthless
DELETE FROM `creature_loot_template` WHERE (`Entry` = 30807) AND (`Item` IN (40752, 45624));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(30807, 45624, 0, 100, 0, 1, 0, 1, 1, 'Skadi the Ruthless (1) - Emblem of Triumph');

-- 伊米隆国王	King Ymiron
DELETE FROM `creature_loot_template` WHERE (`Entry` = 30788) AND (`Item` IN (40752, 45624));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(30788, 45624, 0, 100, 0, 1, 0, 1, 1, 'King Ymiron (1) - Emblem of Triumph');

-- 悲伤圣女	Maiden of Grie
DELETE FROM `creature_loot_template` WHERE (`Entry` = 31384) AND (`Item` IN (40752, 45624));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(31384, 45624, 0, 100, 0, 1, 0, 1, 1, 'Maiden of Grief (1) - Emblem of Triumph');

-- 克莱斯塔卢斯	Krystallus
DELETE FROM `creature_loot_template` WHERE (`Entry` = 31381) AND (`Item` IN (40752, 45624));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(31381, 45624, 0, 100, 0, 1, 0, 1, 1, 'Krystallus (1) - Emblem of Triumph');

-- 远古法庭	Tribunal Chest
-- 塑铁者斯约尼尔	Sjonnir The Ironshape
DELETE FROM `creature_loot_template` WHERE (`Entry` = 31386) AND (`Item` IN (40752, 45624));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(31386, 45624, 0, 100, 0, 1, 0, 1, 1, 'Sjonnir The Ironshaper (1) - Emblem of Triumph');

-- 比亚格里将军	General Bjarngrim
DELETE FROM `creature_loot_template` WHERE (`Entry` = 31533) AND (`Item` IN (40752, 45624));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(31533, 45624, 0, 100, 0, 1, 0, 1, 1, 'General Bjarngrim (1) - Emblem of Triumph');

-- 沃尔坎	Volkhan
DELETE FROM `creature_loot_template` WHERE (`Entry` = 31536) AND (`Item` IN (40752, 45624));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(31536, 45624, 0, 100, 0, 1, 0, 1, 1, 'Volkhan (1) - Emblem of Triumph');

-- 艾欧纳尔	Ionar
DELETE FROM `creature_loot_template` WHERE (`Entry` = 31537) AND (`Item` IN (40752, 45624));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(31537, 45624, 0, 100, 0, 1, 0, 1, 1, 'Ionar (1) - Emblem of Triumph');

-- 洛肯	Loken
DELETE FROM `creature_loot_template` WHERE (`Entry` = 31538) AND (`Item` IN (40752, 45624));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(31538, 45624, 0, 100, 0, 1, 0, 1, 1, 'Loken (1) - Emblem of Triumph');

-- 肉钩	Meathook
DELETE FROM `creature_loot_template` WHERE (`Entry` = 31211) AND (`Item` IN (40752, 45624));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(31211, 45624, 0, 100, 0, 1, 0, 1, 1, 'Meathook (1) - Emblem of Triumph');

-- 塑血者沙尔拉姆	Salramm the Fleshcrafter
DELETE FROM `creature_loot_template` WHERE (`Entry` = 31212) AND (`Item` IN (40752, 45624));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(31212, 45624, 0, 100, 0, 1, 0, 1, 1, 'Salramm the Fleshcrafter (1) - Emblem of Triumph');

-- 时光领主埃博克	Chrono-Lord Epoch
DELETE FROM `creature_loot_template` WHERE (`Entry` = 31215) AND (`Item` IN (40752, 45624));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(31215, 45624, 0, 100, 0, 1, 0, 1, 1, 'Chrono-Lord Epoch (1) - Emblem of Triumph');

-- 永恒腐蚀者	Infinite Corruptor
DELETE FROM `creature_loot_template` WHERE (`Entry` = 32313) AND (`Item` IN (40752, 45624));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(32313, 45624, 0, 100, 0, 1, 0, 1, 1, 'Infinite Corruptor (1) - Emblem of Triumph');

-- 玛尔加尼斯	Mal'Ganis
-- 湮灭者祖拉玛特	Zuramat the Obliterator
DELETE FROM `creature_loot_template` WHERE (`Entry` = 31512) AND (`Item` IN (40752, 45624));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(31512, 45624, 0, 100, 0, 1, 0, 1, 1, 'Zuramat the Obliterator (1) - Emblem of Triumph');

-- 埃雷克姆	Erekem
DELETE FROM `creature_loot_template` WHERE (`Entry` = 31507) AND (`Item` IN (40752, 45624));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(31507, 45624, 0, 100, 0, 1, 0, 1, 1, 'Erekem (1) - Emblem of Triumph');

-- 谢沃兹	Xevozz
DELETE FROM `creature_loot_template` WHERE (`Entry` = 31511) AND (`Item` IN (40752, 45624));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(31511, 45624, 0, 100, 0, 1, 0, 1, 1, 'Xevozz (1) - Emblem of Triumph');

-- 艾库隆	Ichoron
DELETE FROM `creature_loot_template` WHERE (`Entry` = 31508) AND (`Item` IN (40752, 45624));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(31508, 45624, 0, 100, 0, 1, 0, 1, 1, 'Ichoron (1) - Emblem of Triumph');

-- 摩拉格	Moragg
DELETE FROM `creature_loot_template` WHERE (`Entry` = 31510) AND (`Item` IN (40752, 45624));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(31510, 45624, 0, 100, 0, 1, 0, 1, 1, 'Moragg (1) - Emblem of Triumph');

-- 拉文索尔	Lavanthor
DELETE FROM `creature_loot_template` WHERE (`Entry` = 31509) AND (`Item` IN (40752, 45624));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(31509, 45624, 0, 100, 0, 1, 0, 1, 1, 'Lavanthor (1) - Emblem of Triumph');

-- 塞安妮苟萨	Cyanigosa
DELETE FROM `creature_loot_template` WHERE (`Entry` = 31506) AND (`Item` IN (40752, 45624));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(31506, 45624, 0, 100, 0, 1, 0, 1, 1, 'Cyanigosa (1) - Emblem of Triumph');

-- 冠军组合	
-- 银色神官帕尔崔丝	Argent Confessor Paletress
-- 纯洁者耶德瑞克	Eadric the Pure
-- 黑骑士	The Black Knight
DELETE FROM `creature_loot_template` WHERE (`Entry` = 35490) AND (`Item` IN (40752, 45624));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(35490, 45624, 0, 100, 0, 1, 0, 1, 1, 'The Black Knight (1) - Emblem of Triumph');
