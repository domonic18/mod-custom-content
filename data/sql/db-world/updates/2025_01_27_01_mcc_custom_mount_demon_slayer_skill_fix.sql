-- ============================================================
-- mod-custom-content: 屠魔者飞行坐骑技能等级修复
-- Date: 2025-01-27
-- Author: maintainer
-- Description:
--   将屠魔者飞行坐骑物品（entry 91030）的 RequiredSkillRank 修复为 300。
-- Database: db-world
-- ============================================================

UPDATE `item_template` SET `RequiredSkillRank` = 300 WHERE (`entry` = 91030);
