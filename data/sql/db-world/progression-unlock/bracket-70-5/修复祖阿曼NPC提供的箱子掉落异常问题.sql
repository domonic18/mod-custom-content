-- Fix gameobject loot error
UPDATE `gameobject_template` SET `Data0` = 57 WHERE (`entry` = 186648);
UPDATE `gameobject_template` SET `Data15` = 1 WHERE (`entry` = 186648);

-- Fix creature spawn error
DELETE FROM `creature` WHERE (`id1` = 23790) AND (`guid` IN (89157));