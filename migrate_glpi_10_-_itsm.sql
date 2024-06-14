ALTER TABLE `glpi_reservationitems` ADD `is_deleted` tinyint(1) NOT NULL DEFAULT '0';


-- MANQUE TABLE glpi_netpoints

ALTER TABLE `glpi_sockets` RENAME `glpi_netpoints`;


ALTER TABLE glpi_knowbaseitems CHANGE COLUMN date_creation date timestamp;
ALTER TABLE glpi_notepads CHANGE COLUMN date_creation date timestamp;
ALTER TABLE glpi_objectlocks CHANGE COLUMN date date_mod timestamp;
ALTER TABLE glpi_projecttasks CHANGE COLUMN date_creation date timestamp;

UPDATE `glpi_configs` SET `value` = '9.5.7' WHERE `name` = 'version';
UPDATE `glpi_configs` SET `value` = '9.5.7' WHERE `name` = 'dbversion';