-- ============================================================
-- mod-custom-content: WLK 牌子掉落第一阶段调整
-- Date: 2021-05-01
-- Author: maintainer
-- Description:
--   调整 WLK 第一阶段 5 人副本、日常任务及团队首领的牌子掉落（英雄纹章、征服纹章、凯旋纹章）。该文件为第一阶段原始配置，后续由 2023_06_23_19_mcc_badge_drop_wlk_phase2.sql 覆盖升级。
-- Database: db-world
-- ============================================================

-- 
-- User: Deadwalk
-- Date: 01/05/2021
-- Time: 23:16


-- 降级脚本：47241(凯旋纹章)->40752(英雄纹章)

-- 大魔导师泰蕾丝塔	Grand Magus Telestra
DELETE FROM `creature_loot_template` WHERE (`Entry` = 30510) AND (`Item` IN (47241, 40752));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(30510, 40752, 0, 100, 0, 1, 0, 1, 1, 'Grand Magus Telestra (1) - Emblem of Triumph');

-- 阿诺玛鲁斯	Anomalus
DELETE FROM `creature_loot_template` WHERE (`Entry` = 30529) AND (`Item` IN (47241, 40752));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(30529, 40752, 0, 100, 0, 1, 0, 1, 1, 'Anomalus (1) - Emblem of Triumph');

-- 塑树者奥莫洛克	Ormorok the Tree-Shaper
DELETE FROM `creature_loot_template` WHERE (`Entry` = 30532) AND (`Item` IN (47241, 40752));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(30532, 40752, 0, 100, 0, 1, 0, 1, 1, 'Ormorok the Tree-Shaper (1) - Emblem of Triumph');

-- 指挥官鲁尔格、斯托比德	Commander Kolurg、Commander Stoutbeard
DELETE FROM `creature_loot_template` WHERE (`Entry` = 30397) AND (`Item` IN (47241, 40752));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(30397, 40752, 0, 100, 0, 1, 0, 1, 1, 'Commander Kolurg (1) - Emblem of Triumph');

DELETE FROM `creature_loot_template` WHERE (`Entry` = 30398) AND (`Item` IN (47241, 40752));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(30398, 40752, 0, 100, 0, 1, 0, 1, 1, 'Commander Stoutbeard (1) - Emblem of Triumph');

-- 克莉斯塔萨	Keristrasza
DELETE FROM `creature_loot_template` WHERE (`Entry` = 30540) AND (`Item` IN (47241, 40752));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(30540, 40752, 0, 100, 0, 1, 0, 1, 1, 'Keristrasza (1) - Emblem of Triumph');


-- 审讯者达库斯	Drakos the Interrogator
DELETE FROM `creature_loot_template` WHERE (`Entry` = 31558) AND (`Item` IN (47241, 40752));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(31558, 40752, 0, 100, 0, 1, 0, 1, 1, 'Drakos the Interrogator (1) - Emblem of Triumph');

-- 法师领主伊洛姆	Mage-Lord Urom
DELETE FROM `creature_loot_template` WHERE (`Entry` = 31560) AND (`Item` IN (47241, 40752));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(31560, 40752, 0, 100, 0, 1, 0, 1, 1, 'Mage-Lord Urom (1) - Emblem of Triumph');

-- 瓦尔洛斯·云击	Varos Cloudstrider
DELETE FROM `creature_loot_template` WHERE (`Entry` = 31559) AND (`Item` IN (47241, 40752));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(31559, 40752, 0, 100, 0, 1, 0, 1, 1, 'Varos Cloudstrider (1) - Emblem of Triumph');

-- 魔网守护者埃雷苟斯	Ley-Guardian Eregos

-- 看门者克里克希尔	Krik'thir the Gatewatcher
DELETE FROM `creature_loot_template` WHERE (`Entry` = 31612) AND (`Item` IN (47241, 40752));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(31612, 40752, 0, 100, 0, 1, 0, 1, 1, 'Krik''thir the Gatewatcher (1) - Emblem of Triumph');

-- 哈多诺克斯	Hadronox
DELETE FROM `creature_loot_template` WHERE (`Entry` = 31611) AND (`Item` IN (47241, 40752));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(31611, 40752, 0, 100, 0, 1, 0, 1, 1, 'Hadronox (1) - Emblem of Triumph');

-- 阿努巴拉克	Anub'arak
DELETE FROM `creature_loot_template` WHERE (`Entry` = 31610) AND (`Item` IN (47241, 40752));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(31610, 40752, 0, 100, 0, 1, 0, 1, 1, 'Anub''arak (1) - Emblem of Triumph');

-- 纳多克斯长老	Elder Nadox
DELETE FROM `creature_loot_template` WHERE (`Entry` = 31456) AND (`Item` IN (47241, 40752));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(31456, 40752, 0, 100, 0, 1, 0, 1, 1, 'Elder Nadox (1) - Emblem of Triumph');

-- 塔达拉姆王子	Prince Taldaram
DELETE FROM `creature_loot_template` WHERE (`Entry` = 31469) AND (`Item` IN (47241, 40752));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(31469, 40752, 0, 100, 0, 1, 0, 1, 1, 'Prince Taldaram (1) - Emblem of Triumph');

-- 埃曼尼塔	Amanitar
DELETE FROM `creature_loot_template` WHERE (`Entry` = 31463) AND (`Item` IN (47241, 40752));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(31463, 40752, 0, 100, 0, 1, 0, 1, 1, 'Amanitar (1) - Emblem of Triumph');

-- 耶戈达·觅影者	Jedoga Shadowseeker
DELETE FROM `creature_loot_template` WHERE (`Entry` = 31465) AND (`Item` IN (47241, 40752));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(31465, 40752, 0, 100, 0, 1, 0, 1, 1, 'Jedoga Shadowseeker (1) - Emblem of Triumph');

-- 传令官沃拉兹	Herald Volazj
DELETE FROM `creature_loot_template` WHERE (`Entry` = 31464) AND (`Item` IN (47241, 40752));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(31464, 40752, 0, 100, 0, 1, 0, 1, 1, 'Herald Volazj (1) - Emblem of Triumph');

-- 托尔戈	Trollgore
DELETE FROM `creature_loot_template` WHERE (`Entry` = 31362) AND (`Item` IN (47241, 40752));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(31362, 40752, 0, 100, 0, 1, 0, 1, 1, 'Trollgore (1) - Emblem of Triumph');

-- 召唤者诺沃斯	Novos the Summoner
DELETE FROM `creature_loot_template` WHERE (`Entry` = 31350) AND (`Item` IN (47241, 40752));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(31350, 40752, 0, 100, 0, 1, 0, 1, 1, 'Novos the Summoner (1) - Emblem of Triumph');

-- 暴龙之王爵德	King Dred
DELETE FROM `creature_loot_template` WHERE (`Entry` = 31349) AND (`Item` IN (47241, 40752));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(31349, 40752, 0, 100, 0, 1, 0, 1, 1, 'King Dred (1) - Emblem of Triumph');

-- 先知萨隆亚	The Prophet Tharon'ja
DELETE FROM `creature_loot_template` WHERE (`Entry` = 31360) AND (`Item` IN (47241, 40752));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(31360, 40752, 0, 100, 0, 1, 0, 1, 1, 'The Prophet Tharon''ja (1) - Emblem of Triumph');

-- 斯拉德兰	Slad'ran
DELETE FROM `creature_loot_template` WHERE (`Entry` = 31370) AND (`Item` IN (47241, 40752));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(31370, 40752, 0, 100, 0, 1, 0, 1, 1, 'Slad''ran (1) - Emblem of Triumph');

-- 达卡莱巨像	Drakkari Colossus
-- 莫拉比	Moorabi
DELETE FROM `creature_loot_template` WHERE (`Entry` = 30530) AND (`Item` IN (47241, 40752));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(30530, 40752, 0, 100, 0, 1, 0, 1, 1, 'Moorabi (1) - Emblem of Triumph');

-- 凶残的伊克	Eck the Ferocious
DELETE FROM `creature_loot_template` WHERE (`Entry` = 29932) AND (`Item` IN (47241, 40752));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(29932, 40752, 0, 100, 0, 1, 0, 1, 1, 'Eck the Ferocious - Emblem of Triumph');

-- 迦尔达拉	Gal'darah
DELETE FROM `creature_loot_template` WHERE (`Entry` = 31368) AND (`Item` IN (47241, 40752));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(31368, 40752, 0, 100, 0, 1, 0, 1, 1, 'Gal''darah (1) - Emblem of Triumph');

-- 凯雷塞斯王子	Prince Keleseth
DELETE FROM `creature_loot_template` WHERE (`Entry` = 30748) AND (`Item` IN (47241, 40752));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(30748, 40752, 0, 100, 0, 1, 0, 1, 1, 'Prince Keleseth (1) - Emblem of Triumph');

-- 建筑师斯卡瓦尔德、控制者达尔隆	Skarvald the Constructor、Dalronn the Controller
DELETE FROM `creature_loot_template` WHERE (`Entry` = 31679) AND (`Item` IN (47241, 40752));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(31679, 40752, 0, 100, 0, 1, 0, 1, 1, 'Skarvald the Constructor (1) - Emblem of Triumph');

DELETE FROM `creature_loot_template` WHERE (`Entry` = 31656) AND (`Item` IN (47241, 40752));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(31656, 40752, 0, 100, 0, 1, 0, 1, 1, 'Dalronn the Controller (1) - Emblem of Triumph');

-- 掠夺者因格瓦尔	Ingvar the Plunderer
DELETE FROM `creature_loot_template` WHERE (`Entry` = 31673) AND (`Item` IN (47241, 40752));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(31673, 40752, 0, 100, 0, 1, 0, 1, 1, 'Ingvar the Plunderer (1) - Emblem of Triumph');

-- 席瓦拉·索格蕾	Svala Sorrowgrave
DELETE FROM `creature_loot_template` WHERE (`Entry` = 30810) AND (`Item` IN (47241, 40752));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(30810, 40752, 0, 100, 0, 1, 0, 1, 1, 'Svala Sorrowgrave (1) - Emblem of Triumph');

-- 戈托克·苍蹄	Gortok Palehoof
DELETE FROM `creature_loot_template` WHERE (`Entry` = 30774) AND (`Item` IN (47241, 40752));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(30774, 40752, 0, 100, 0, 1, 0, 1, 1, 'Gortok Palehoof (1) - Emblem of Triumph');

-- 残忍的斯卡迪	Skadi the Ruthless
DELETE FROM `creature_loot_template` WHERE (`Entry` = 30807) AND (`Item` IN (47241, 40752));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(30807, 40752, 0, 100, 0, 1, 0, 1, 1, 'Skadi the Ruthless (1) - Emblem of Triumph');

-- 伊米隆国王	King Ymiron
DELETE FROM `creature_loot_template` WHERE (`Entry` = 30788) AND (`Item` IN (47241, 40752));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(30788, 40752, 0, 100, 0, 1, 0, 1, 1, 'King Ymiron (1) - Emblem of Triumph');

-- 悲伤圣女	Maiden of Grie
DELETE FROM `creature_loot_template` WHERE (`Entry` = 31384) AND (`Item` IN (47241, 40752));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(31384, 40752, 0, 100, 0, 1, 0, 1, 1, 'Maiden of Grief (1) - Emblem of Triumph');

-- 克莱斯塔卢斯	Krystallus
DELETE FROM `creature_loot_template` WHERE (`Entry` = 31381) AND (`Item` IN (47241, 40752));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(31381, 40752, 0, 100, 0, 1, 0, 1, 1, 'Krystallus (1) - Emblem of Triumph');

-- 远古法庭	Tribunal Chest
-- 塑铁者斯约尼尔	Sjonnir The Ironshape
DELETE FROM `creature_loot_template` WHERE (`Entry` = 31386) AND (`Item` IN (47241, 40752));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(31386, 40752, 0, 100, 0, 1, 0, 1, 1, 'Sjonnir The Ironshaper (1) - Emblem of Triumph');

-- 比亚格里将军	General Bjarngrim
DELETE FROM `creature_loot_template` WHERE (`Entry` = 31533) AND (`Item` IN (47241, 40752));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(31533, 40752, 0, 100, 0, 1, 0, 1, 1, 'General Bjarngrim (1) - Emblem of Triumph');

-- 沃尔坎	Volkhan
DELETE FROM `creature_loot_template` WHERE (`Entry` = 31536) AND (`Item` IN (47241, 40752));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(31536, 40752, 0, 100, 0, 1, 0, 1, 1, 'Volkhan (1) - Emblem of Triumph');

-- 艾欧纳尔	Ionar
DELETE FROM `creature_loot_template` WHERE (`Entry` = 31537) AND (`Item` IN (47241, 40752));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(31537, 40752, 0, 100, 0, 1, 0, 1, 1, 'Ionar (1) - Emblem of Triumph');

-- 洛肯	Loken
DELETE FROM `creature_loot_template` WHERE (`Entry` = 31538) AND (`Item` IN (47241, 40752));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(31538, 40752, 0, 100, 0, 1, 0, 1, 1, 'Loken (1) - Emblem of Triumph');

-- 肉钩	Meathook
DELETE FROM `creature_loot_template` WHERE (`Entry` = 31211) AND (`Item` IN (47241, 40752));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(31211, 40752, 0, 100, 0, 1, 0, 1, 1, 'Meathook (1) - Emblem of Triumph');

-- 塑血者沙尔拉姆	Salramm the Fleshcrafter
DELETE FROM `creature_loot_template` WHERE (`Entry` = 31212) AND (`Item` IN (47241, 40752));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(31212, 40752, 0, 100, 0, 1, 0, 1, 1, 'Salramm the Fleshcrafter (1) - Emblem of Triumph');

-- 时光领主埃博克	Chrono-Lord Epoch
DELETE FROM `creature_loot_template` WHERE (`Entry` = 31215) AND (`Item` IN (47241, 40752));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(31215, 40752, 0, 100, 0, 1, 0, 1, 1, 'Chrono-Lord Epoch (1) - Emblem of Triumph');

-- 永恒腐蚀者	Infinite Corruptor
DELETE FROM `creature_loot_template` WHERE (`Entry` = 32313) AND (`Item` IN (47241, 40752));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(32313, 40752, 0, 100, 0, 1, 0, 1, 1, 'Infinite Corruptor (1) - Emblem of Triumph');

-- 玛尔加尼斯	Mal'Ganis
-- 湮灭者祖拉玛特	Zuramat the Obliterator
DELETE FROM `creature_loot_template` WHERE (`Entry` = 31512) AND (`Item` IN (47241, 40752));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(31512, 40752, 0, 100, 0, 1, 0, 1, 1, 'Zuramat the Obliterator (1) - Emblem of Triumph');

-- 埃雷克姆	Erekem
DELETE FROM `creature_loot_template` WHERE (`Entry` = 31507) AND (`Item` IN (47241, 40752));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(31507, 40752, 0, 100, 0, 1, 0, 1, 1, 'Erekem (1) - Emblem of Triumph');

-- 谢沃兹	Xevozz
DELETE FROM `creature_loot_template` WHERE (`Entry` = 31511) AND (`Item` IN (47241, 40752));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(31511, 40752, 0, 100, 0, 1, 0, 1, 1, 'Xevozz (1) - Emblem of Triumph');

-- 艾库隆	Ichoron
DELETE FROM `creature_loot_template` WHERE (`Entry` = 31508) AND (`Item` IN (47241, 40752));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(31508, 40752, 0, 100, 0, 1, 0, 1, 1, 'Ichoron (1) - Emblem of Triumph');

-- 摩拉格	Moragg
DELETE FROM `creature_loot_template` WHERE (`Entry` = 31510) AND (`Item` IN (47241, 40752));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(31510, 40752, 0, 100, 0, 1, 0, 1, 1, 'Moragg (1) - Emblem of Triumph');

-- 拉文索尔	Lavanthor
DELETE FROM `creature_loot_template` WHERE (`Entry` = 31509) AND (`Item` IN (47241, 40752));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(31509, 40752, 0, 100, 0, 1, 0, 1, 1, 'Lavanthor (1) - Emblem of Triumph');

-- 塞安妮苟萨	Cyanigosa
DELETE FROM `creature_loot_template` WHERE (`Entry` = 31506) AND (`Item` IN (47241, 40752));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(31506, 40752, 0, 100, 0, 1, 0, 1, 1, 'Cyanigosa (1) - Emblem of Triumph');

-- 黑骑士The Black Knight
DELETE FROM `creature_loot_template` WHERE (`Entry` = 35490) AND (`Item` IN (47241, 40752));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(35490, 40752, 0, 100, 0, 1, 0, 1, 1, 'The Black Knight (1) - Emblem of Triumph');

-- 冠军的宝箱  Champions Cache
DELETE FROM `gameobject_loot_template` WHERE (`Entry` = 27414) AND (`Item` IN (47241, 40752));
INSERT INTO `gameobject_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(27414, 40752, 0, 100, 0, 1, 0, 1, 1, 'Champions Cache - Emblem of Triumph');

-- 忏悔者的箱子  Confessors Cache
DELETE FROM `gameobject_loot_template` WHERE (`Entry` = 27417) AND (`Item` IN (47241, 40752));
INSERT INTO `gameobject_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(27417, 40752, 0, 100, 0, 1, 0, 1, 1, 'Confessors Cache - Emblem of Triumph');

-- 亚德里克的箱子 Eadrics Cache
DELETE FROM `gameobject_loot_template` WHERE (`Entry` = 27416) AND (`Item` IN (47241, 40752));
INSERT INTO `gameobject_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(27416, 40752, 0, 100, 0, 1, 0, 1, 1, 'Eadrics Cache - Emblem of Triumph');

-- 2021-5-9
-- 帕奇维克	Patchwerk
DELETE FROM `creature_loot_template` WHERE (`Entry` = 29324) AND (`Item` IN (47241, 40752));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(29324, 40752, 0, 100, 0, 1, 0, 1, 1, 'Patchwerk (1) - Emblem of Triumph');

-- 格罗布鲁斯	Grobbulus
DELETE FROM `creature_loot_template` WHERE (`Entry` = 29373) AND (`Item` IN (47241, 40752));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(29373, 40752, 0, 100, 0, 1, 0, 1, 1, 'Grobbulus (1) - Emblem of Triumph');

-- 格拉斯	Gluth
DELETE FROM `creature_loot_template` WHERE (`Entry` = 29417) AND (`Item` IN (47241, 40752));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(29417, 40752, 0, 100, 0, 1, 0, 1, 1, 'Gluth (1) - Emblem of Triumph');

-- 塔迪乌斯	Thaddius
DELETE FROM `creature_loot_template` WHERE (`Entry` = 29448) AND (`Item` IN (47241, 40752));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(29448, 40752, 0, 100, 0, 1, 0, 1, 1, 'Thaddius (1) - Emblem of Triumph');

-- 阿努布雷坎	Anub Rekhan
DELETE FROM `creature_loot_template` WHERE (`Entry` = 29249) AND (`Item` IN (47241, 40752));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(29249, 40752, 0, 100, 0, 1, 0, 1, 1, 'Anub Rekhan (1) - Emblem of Triumph');

-- 黑女巫法琳娜	Grand Widow Faerlina
DELETE FROM `creature_loot_template` WHERE (`Entry` = 29268) AND (`Item` IN (47241, 40752));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(29268, 40752, 0, 100, 0, 1, 0, 1, 1, 'Grand Widow Faerlina (1) - Emblem of Triumph');

-- 迈克斯纳	Maexxna
DELETE FROM `creature_loot_template` WHERE (`Entry` = 29278) AND (`Item` IN (47241, 40752));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(29278, 40752, 0, 100, 0, 1, 0, 1, 1, 'Maexxna (1) - Emblem of Triumph');

-- 教官拉苏维奥斯	Instructor Razuvious
DELETE FROM `creature_loot_template` WHERE (`Entry` = 29940) AND (`Item` IN (47241, 40752));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(29940, 40752, 0, 100, 0, 1, 0, 1, 1, 'Instructor Razuvious (1) - Emblem of Triumph');

-- 收割者戈提克	Gothik the Harvester
DELETE FROM `creature_loot_template` WHERE (`Entry` = 29955) AND (`Item` IN (47241, 40752));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(29955, 40752, 0, 100, 0, 1, 0, 1, 1, 'Gothik the Harvester (1) - Emblem of Triumph');

-- 四骑士（四骑士之箱 )	Four Horsemen Chest
DELETE FROM `gameobject_loot_template` WHERE (`Entry` = 25192) AND (`Item` IN (47241, 40752));
INSERT INTO `gameobject_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(25192, 40752, 0, 100, 0, 1, 0, 1, 1, 'Four Horsemen Chest - Emblem of Triumph');

DELETE FROM `gameobject_loot_template` WHERE (`Entry` = 25193) AND (`Item` IN (47241, 40752));
INSERT INTO `gameobject_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(25193, 40752, 0, 100, 0, 1, 0, 1, 1, 'Four Horsemen Chest - Emblem of Triumph');

-- 药剂师诺斯	Noth the Plaguebringer
DELETE FROM `creature_loot_template` WHERE (`Entry` = 29615) AND (`Item` IN (47241, 40752));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(29615, 40752, 0, 100, 0, 1, 0, 1, 1, 'Noth the Plaguebringer (1) - Emblem of Triumph');

-- 肮脏的希尔盖	Heigan the Unclean
DELETE FROM `creature_loot_template` WHERE (`Entry` = 29701) AND (`Item` IN (47241, 40752));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(29701, 40752, 0, 100, 0, 1, 0, 1, 1, 'Heigan the Unclean (1) - Emblem of Triumph');

-- 洛欧塞布	Loatheb
DELETE FROM `creature_loot_template` WHERE (`Entry` = 29718) AND (`Item` IN (47241, 40752));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(29718, 40752, 0, 100, 0, 1, 0, 1, 1, 'Loatheb (1) - Emblem of Triumph');

-- 萨菲隆	Sapphiron
DELETE FROM `creature_loot_template` WHERE (`Entry` = 29991) AND (`Item` IN (47241, 40752));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(29991, 40752, 0, 100, 0, 1, 0, 1, 1, 'Sapphiron (1) - Emblem of Triumph');

-- 克尔苏加德	Kel'Thuzad
DELETE FROM `creature_loot_template` WHERE (`Entry` = 30061) AND (`Item` IN (47241, 40752));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(30061, 40752, 0, 100, 0, 1, 0, 2, 2, 'Kel Thuzad (1) - Emblem of Triumph');

-- 萨塔里奥	Sartharion
DELETE FROM `creature_loot_template` WHERE (`Entry` = 31311) AND (`Item` IN (47241, 40752));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(31311, 40752, 0, 100, 0, 1, 0, 1, 1, 'Sartharion (1) - Emblem of Triumph');

-- 一包战利品（含5个牌子）  ID：43347	Satchel of Spoils
DELETE FROM `item_loot_template` WHERE (`Entry` = 43347) AND (`Item` IN (47241, 40752));
INSERT INTO `item_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(43347, 40752, 0, 100, 0, 1, 0, 5, 5, 'Satchel of Spoils - Emblem of Triumph');

-- 阿莱克丝塔萨的礼物	Alexstrasza's Gift
DELETE FROM `gameobject_loot_template` WHERE (`Entry` = 26094) AND (`Item` IN (47241, 40752));
INSERT INTO `gameobject_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(26094, 40752, 0, 100, 0, 1, 0, 2, 2, 'Alexstraszas Gift - Emblem of Triumph');

DELETE FROM `gameobject_loot_template` WHERE (`Entry` = 26097) AND (`Item` IN (47241, 40752));
INSERT INTO `gameobject_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(26097, 40752, 0, 100, 0, 1, 0, 2, 2, 'Alexstraszas Gift - Emblem of Triumph');

-- 岩石看守者阿尔卡冯	Archavon the Stone Watcher
DELETE FROM `creature_loot_template` WHERE (`Entry` = 31722) AND (`Item` IN (47241, 40752));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(31722, 40752, 0, 100, 0, 1, 0, 2, 2, 'Archavon the Stone Watcher (1) - Emblem of Triumph');

-- 风暴看守者埃玛尔隆	Emalon the Storm Watcher
DELETE FROM `creature_loot_template` WHERE (`Entry` = 33994) AND (`Item` IN (47241, 40752));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(33994, 40752, 0, 100, 0, 1, 0, 2, 2, 'Emalon the Storm Watcher (1) - Emblem of Triumph');

-- 烈焰巨兽	Flame Leviathan -- 这里修改需要很谨慎
-- DELETE FROM `reference_loot_template` WHERE (`Entry` = 34349) AND (`Item` IN (47241, 40752));
-- INSERT INTO `reference_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
-- (34349, 40752, 0, 100, 0, 1, 0, 1, 1, 'Emblem of Triumph');


-- 掌炉者伊格尼斯	Ignis the Furnace Master
DELETE FROM `creature_loot_template` WHERE (`Entry` = 33190) AND (`Item` IN (47241, 40752));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(33190, 40752, 0, 100, 0, 1, 0, 2, 2, 'Ignis the Furnace Master (1) - Emblem of Triumph');

-- 锋鳞	Razorscale
DELETE FROM `creature_loot_template` WHERE (`Entry` = 33724) AND (`Item` IN (47241, 40752));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(33724, 40752, 0, 100, 0, 1, 0, 1, 1, 'Razorscale (1) - Emblem of Triumph');

-- XT-002拆解者	XT-002 Deconstructor
DELETE FROM `creature_loot_template` WHERE (`Entry` = 33885) AND (`Item` IN (47241, 40752));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(33885, 40752, 0, 100, 0, 1, 0, 1, 1, 'XT-002 Deconstructor (1) - Emblem of Triumph');

-- 钢铁议会（符文大师莫尔基姆、唤雷者布隆迪尔、断钢者	Runemaster Molgeim、Stormcaller Brundir、Steelbreaker
DELETE FROM `creature_loot_template` WHERE (`Entry` = 33692) AND (`Item` IN (47241, 40752));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(33692, 40752, 0, 100, 0, 1, 0, 2, 2, 'Runemaster Molgeim (1) - Emblem of Triumph');

DELETE FROM `creature_loot_template` WHERE (`Entry` = 33694) AND (`Item` IN (47241, 40752));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(33694, 40752, 0, 100, 0, 1, 0, 1, 1, 'Stormcaller Brundir (1) - Emblem of Triumph');

DELETE FROM `creature_loot_template` WHERE (`Entry` = 33693) AND (`Item` IN (47241, 40752));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(33693, 40752, 0, 100, 0, 1, 0, 2, 2, 'Steelbreaker (1) - Emblem of Triumph');

-- 科隆加恩	Kologarn    --没有找到掉落配置

-- 观察者奥尔加隆（观察者的礼物）	Algalon the Observer（Gift of the Observer）
DELETE FROM `gameobject_loot_template` WHERE (`Entry` = 27030) AND (`Item` IN (47241, 40752));
INSERT INTO `gameobject_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(27030, 40752, 0, 100, 0, 1, 0, 1, 1, 'Gift of the Observer - Emblem of Triumph');

DELETE FROM `gameobject_loot_template` WHERE (`Entry` = 26974) AND (`Item` IN (47241, 40752));
INSERT INTO `gameobject_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(26974, 40752, 0, 100, 0, 1, 0, 2, 2, 'Gift of the Observer - Emblem of Triumph');

-- 欧尔莉亚	Auriaya
DELETE FROM `creature_loot_template` WHERE (`Entry` = 34175) AND (`Item` IN (47241, 40752));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(34175, 40752, 0, 100, 0, 1, 0, 1, 1, 'Auriaya (1) - Emblem of Triumph');

-- 霍迪尔（霍迪尔宝箱）	Hodir（Rare Cache of Winte）--没有找到掉落配置
-- 托里姆	Thorim  --没有找到掉落配置
-- 弗蕾亚（弗蕾亚的礼物）	Freya（Freya's Gif）
DELETE FROM `gameobject_loot_template` WHERE (`Entry` = 27078) AND (`Item` IN (47241, 40752));
INSERT INTO `gameobject_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(27078, 40752, 0, 100, 0, 1, 0, 3, 3, 'Freyas Gift - Emblem of Triumph');

DELETE FROM `gameobject_loot_template` WHERE (`Entry` = 27079) AND (`Item` IN (47241, 40752));
INSERT INTO `gameobject_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(27079, 40752, 0, 100, 0, 1, 0, 3, 3, 'Freyas Gift - Emblem of Triumph');

DELETE FROM `gameobject_loot_template` WHERE (`Entry` = 27080) AND (`Item` IN (47241, 40752));
INSERT INTO `gameobject_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(27080, 40752, 0, 100, 0, 1, 0, 3, 3, 'Freyas Gift - Emblem of Triumph');

DELETE FROM `gameobject_loot_template` WHERE (`Entry` = 27081) AND (`Item` IN (47241, 40752));
INSERT INTO `gameobject_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(27081, 40752, 0, 100, 0, 1, 0, 3, 3, 'Freyas Gift - Emblem of Triumph');

DELETE FROM `gameobject_loot_template` WHERE (`Entry` = 27082) AND (`Item` IN (47241, 40752));
INSERT INTO `gameobject_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(27082, 40752, 0, 100, 0, 1, 0, 3, 3, 'Freyas Gift - Emblem of Triumph');

DELETE FROM `gameobject_loot_template` WHERE (`Entry` = 26959) AND (`Item` IN (47241, 40752));
INSERT INTO `gameobject_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(26959, 40752, 0, 100, 0, 1, 0, 2, 2, 'Freyas Gift - Emblem of Triumph');

DELETE FROM `gameobject_loot_template` WHERE (`Entry` = 26960) AND (`Item` IN (47241, 40752));
INSERT INTO `gameobject_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(26960, 40752, 0, 100, 0, 1, 0, 2, 2, 'Freyas Gift - Emblem of Triumph');

DELETE FROM `gameobject_loot_template` WHERE (`Entry` = 26961) AND (`Item` IN (47241, 40752));
INSERT INTO `gameobject_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(26961, 40752, 0, 100, 0, 1, 0, 1, 1, 'Freyas Gift - Emblem of Triumph');

DELETE FROM `gameobject_loot_template` WHERE (`Entry` = 26962) AND (`Item` IN (47241, 40752));
INSERT INTO `gameobject_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(26962, 40752, 0, 100, 0, 1, 0, 1, 1, 'Freyas Gift - Emblem of Triumph');


-- 米米尔隆（发明宝箱）	Mimiron（Cache of Innovation）
DELETE FROM `gameobject_loot_template` WHERE (`Entry` = 27085) AND (`Item` IN (47241, 40752));
INSERT INTO `gameobject_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(27085, 40752, 0, 100, 0, 1, 0, 1, 1, 'Cache of Innovation - Emblem of Triumph');

DELETE FROM `gameobject_loot_template` WHERE (`Entry` = 26963) AND (`Item` IN (47241, 40752));
INSERT INTO `gameobject_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(26963, 40752, 0, 100, 0, 1, 0, 1, 1, 'Cache of Innovation - Emblem of Triumph');

DELETE FROM `gameobject_loot_template` WHERE (`Entry` = 27086) AND (`Item` IN (47241, 40752));
INSERT INTO `gameobject_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(27086, 40752, 0, 100, 0, 1, 0, 1, 1, 'Cache of Innovation - Emblem of Triumph');

DELETE FROM `gameobject_loot_template` WHERE (`Entry` = 26967) AND (`Item` IN (47241, 40752));
INSERT INTO `gameobject_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(26967, 40752, 0, 100, 0, 1, 0, 1, 1, 'Cache of Innovation - Emblem of Triumph');



-- 维扎克斯将军	General Vezax
DELETE FROM `creature_loot_template` WHERE (`Entry` = 33449) AND (`Item` IN (47241, 40752));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(33449, 40752, 0, 100, 0, 1, 0, 1, 1, 'General Vezax (1) - Emblem of Triumph');

-- 尤格-萨隆	Yogg-Saron
DELETE FROM `creature_loot_template` WHERE (`Entry` = 33955) AND (`Item` IN (47241, 40752));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(33955, 40752, 0, 100, 0, 1, 0, 1, 1, 'Yogg-Saron (1) - Emblem of Triumph');




-- 日常随机本(第一次)牌子
UPDATE `quest_template` SET `RewardItem1` = 45624 WHERE (`ID` = 24790);

-- 日常随机本(英雄)第一次
UPDATE `quest_template` SET `RewardItem1` = 47241 WHERE (`ID` = 24788);

-- 日常随机本(英雄)第N次
UPDATE `quest_template` SET `RewardItem1` = 45624 WHERE (`ID` = 24789);

-- 阿努布雷坎必须死	Anub'Rekhan Must Die!
UPDATE `quest_template` SET `RewardItem1` = 40753, `RewardItem2` = 45624 WHERE (`ID` = 24580);


-- 烈焰巨兽必须死！	Flame Leviathan Must Die!
UPDATE `quest_template` SET `RewardItem1` = 40753, `RewardItem2` = 45624 WHERE (`ID` = 24585);

-- 消灭锋鳞	Razorscale Must Die!
UPDATE `quest_template` SET `RewardItem1` = 40753, `RewardItem2` = 45624 WHERE (`ID` = 24586);

-- 消灭加拉克苏斯大王！	Lord Jaraxxus Must Die!
UPDATE `quest_template` SET `RewardItem1` = 40753, `RewardItem2` = 45624 WHERE (`ID` = 24589);


-- 消灭教官拉苏维奥斯！	Instructor Razuvious Must Die!
UPDATE `quest_template` SET `RewardItem1` = 40753, `RewardItem2` = 45624 WHERE (`ID` = 24582);

-- 消灭玛里苟斯	Malygos Must Die!
UPDATE `quest_template` SET `RewardItem1` = 40753, `RewardItem2` = 45624 WHERE (`ID` = 24584);

-- 消灭帕奇维克！	Patchwerk Must Die!
UPDATE `quest_template` SET `RewardItem1` = 40753, `RewardItem2` = 45624 WHERE (`ID` = 24583);

-- 消灭萨塔里奥！	Sartharion Must Die!
UPDATE `quest_template` SET `RewardItem1` = 40753, `RewardItem2` = 45624 WHERE (`ID` = 24579);

-- 消灭药剂师诺斯！	Noth the Plaguebringer Must Die!
UPDATE `quest_template` SET `RewardItem1` = 40753, `RewardItem2` = 45624 WHERE (`ID` = 24581);

-- 消灭掌炉者伊格尼斯！	Ignis the Furnace Master Must Die!
UPDATE `quest_template` SET `RewardItem1` = 40753, `RewardItem2` = 45624 WHERE (`ID` = 24587);

-- 消灭XT-002拆解者！	XT-002 Deconstructor Must Die!
UPDATE `quest_template` SET `RewardItem1` = 40753, `RewardItem2` = 45624 WHERE (`ID` = 24588);
