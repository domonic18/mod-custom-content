-- ============================================================
-- mod-custom-content: 渐进开放解锁外域地图锁区
-- Date: 2023-06-23
-- Author: maintainer
-- Description:
--   在渐进开放到 61-64 阶段时，删除外域各区域及 TBC 五人副本的 map_lock 记录。
-- Database: db-world
-- ============================================================

-- delete Hellfire Peninsula
DELETE FROM `map_lock` WHERE `zoneID` = 3483;

-- delete Zangarmarsh
DELETE FROM `map_lock` WHERE `zoneID` = 3521;

-- delete Terokkar Forest
DELETE FROM `map_lock` WHERE `zoneID` = 3519;

-- delete Nagrand
DELETE FROM `map_lock` WHERE `zoneID` = 3518;

-- delete Blade's Edge Mountains
DELETE FROM `map_lock` WHERE `zoneID` = 3522;

-- delete Netherstorm
DELETE FROM `map_lock` WHERE `zoneID` = 3523;

-- delete Shadowmoon Valley
DELETE FROM `map_lock` WHERE `zoneID` = 3520;


-- delete Hellfire Ramparts
DELETE FROM `map_lock` WHERE `zoneID` = 3562;

-- delete The Blood Furnace
DELETE FROM `map_lock` WHERE `zoneID` = 3713;

-- delete The Slave Pens
DELETE FROM `map_lock` WHERE `zoneID` = 3717;

-- delete The Underbog
DELETE FROM `map_lock` WHERE `zoneID` = 3716;

-- delete Mana-Tombs
DELETE FROM `map_lock` WHERE `zoneID` = 3792;