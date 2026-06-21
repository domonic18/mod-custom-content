-- ============================================================
-- mod-custom-content: 奥尔多与占星者声望任务修复
-- Date: 2023-06-23
-- Author: maintainer
-- Description:
--   将部分奥尔多/占星者声望任务的 RequiredMinRepValue 设为 0，解除接取声望门槛。
-- Database: db-world
-- ============================================================

UPDATE `quest_template_addon` SET `RequiredMinRepValue` = 0 WHERE (`ID` = 10325);
UPDATE `quest_template_addon` SET `RequiredMinRepValue` = 0 WHERE (`ID` = 10412);
