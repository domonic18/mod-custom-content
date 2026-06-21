-- ============================================================
-- mod-custom-content: 渐进开放调整格鲁尔掉落数量
-- Date: 2023-06-23
-- Author: maintainer
-- Description:
--   在 T5 阶段将格鲁尔之巢首领格鲁尔的 reference 掉落数量从 3 调整为 5。
-- Database: db-world
-- ============================================================

-- change Gruul the Dragonkiller loot count:3→5

DELETE FROM `creature_loot_template` WHERE (`Entry` = 19044) AND (`Item` IN (190039));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(19044, 190039, 34051, 100, 0, 1, 1, 3, 3, 'Gruul the Dragonkiller - (ReferenceTable)');