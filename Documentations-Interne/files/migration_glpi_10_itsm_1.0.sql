-- Migration depuis GLPI 10.0.15

-- MANQUE TABLE glpi_netpoints
ALTER TABLE `glpi_sockets` RENAME `glpi_netpoints`;

-- Migration glpi_savedsearches
ALTER TABLE `glpi_savedsearches`
MODIFY `entities_id` int NOT NULL DEFAULT -1;

ALTER TABLE `glpi_savedsearches`
ADD `path` varchar(255);

-- Migration glpi_certificates_items
ALTER TABLE `glpi_certificates_items`
ADD KEY `device` (`items_id`,`itemtype`);

-- Migration glpi_items_disks
ALTER TABLE `glpi_items_disks`
ADD KEY `items_id` (`items_id`),
ADD KEY `itemtype` (`itemtype`);

-- Migration glpi_items_softwarelicenses
ALTER TABLE `glpi_items_softwarelicenses`
ADD KEY `items_id` (`items_id`),
ADD KEY `itemtype` (`itemtype`);

ALTER TABLE `glpi_items_softwareversions`
ADD KEY `is_template` (`is_template_item`),
ADD KEY `item` (`itemtype`,`items_id`),
ADD KEY `items_id` (`items_id`),
ADD KEY `itemtype` (`itemtype`);

-- Migration `glpi_items_softwareversions`
ALTER TABLE `glpi_items_softwareversions`
ADD `ram` varchar(255) NOT NULL DEFAULT '';

ALTER TABLE `glpi_items_softwareversions`
ADD IF NOT EXISTS `virtualmachinesystems_id` INT(11) NOT NULL DEFAULT '0',
ADD KEY `virtualmachinesystems_id` (`virtualmachinesystems_id`);

-- Migration glpi_items_operatingsystems
ALTER TABLE `glpi_items_operatingsystems`
ADD KEY `items_id` (`items_id`);

-- Migration glpi_configs
ALTER TABLE `glpi_configs`
DROP INDEX `name`;

-- Migration glpi_contracts
ALTER TABLE `glpi_contracts`
ADD `monday_begin_hour` time NOT NULL DEFAULT '00:00:00',
ADD `monday_end_hour` time NOT NULL DEFAULT '00:00:00',
ADD `use_monday` tinyint NOT NULL DEFAULT 0;

-- Migration glpi_contracts_items
ALTER TABLE `glpi_contracts_items`
ADD KEY `FK_device` (`items_id`,`itemtype`);

-- Migration glpi_dashboards_rights
ALTER TABLE `glpi_dashboards_rights`
ADD KEY `dashboards_dashboards_id` (`dashboards_dashboards_id`);

-- Migration glpi_domains
ALTER TABLE `glpi_domains`
ADD `others` varchar(255);

-- Migration glpi_dropdowntranslations
ALTER TABLE `glpi_dropdowntranslations`
ADD KEY `typeid` (`itemtype`,`items_id`);

-- Migration glpi_entities
ALTER TABLE `glpi_entities`
ADD `admin_reply_name` varchar(255),
ADD `admin_reply` varchar(255),
MODIFY `entities_id_software` int NOT NULL DEFAULT -2,
MODIFY `problemtemplates_id` int NOT NULL DEFAULT -2,
MODIFY `tickettemplates_id` int NOT NULL DEFAULT -2,
ADD KEY `entities_id` (`entities_id`);

-- Migration glpi_fieldunicities
ALTER TABLE `glpi_fieldunicities`
MODIFY `entities_id` int NOT NULL DEFAULT -1;

-- Migration glpi_groups_knowbaseitems
ALTER TABLE `glpi_groups_knowbaseitems`
MODIFY `entities_id` int NOT NULL DEFAULT -1;

-- Migration glpi_groups_reminders
ALTER TABLE `glpi_groups_reminders`
MODIFY `entities_id` int NOT NULL DEFAULT -1;

-- Migration glpi_groups_rssfeeds
ALTER TABLE `glpi_groups_rssfeeds`
MODIFY `entities_id` int NOT NULL DEFAULT -1;

-- Migration glpi_ipaddresses
ALTER TABLE `glpi_ipaddresses`
ADD KEY `textual` (`name`);

-- Migration glpi_ipaddresses
ALTER TABLE `glpi_ipaddresses_ipnetworks`
ADD KEY `ipaddresses_id` (`ipaddresses_id`);

-- Migration glpi_items_devicecases
ALTER TABLE `glpi_items_devicecases`
ADD KEY `computers_id` (`items_id`);

-- Migration glpi_items_devicecontrols
ALTER TABLE `glpi_items_devicecontrols`
ADD KEY `computers_id` (`items_id`);

-- Migration glpi_items_devicedrives
ALTER TABLE `glpi_items_devicedrives`
ADD KEY `computers_id` (`items_id`);

-- Migration glpi_items_devicegenerics
ALTER TABLE `glpi_items_devicegenerics`
ADD KEY `computers_id` (`items_id`);

-- Migration glpi_items_devicegraphiccards
ALTER TABLE `glpi_items_devicegraphiccards`
ADD KEY `computers_id` (`items_id`);

-- Migration glpi_items_deviceharddrives
ALTER TABLE `glpi_items_deviceharddrives`
ADD KEY `computers_id` (`items_id`);

-- Migration glpi_items_devicememories
ALTER TABLE `glpi_items_devicememories`
ADD KEY `computers_id` (`items_id`);

-- Migration glpi_items_devicemotherboards
ALTER TABLE `glpi_items_devicemotherboards`
ADD KEY `computers_id` (`items_id`);

-- Migration glpi_items_devicenetworkcards
ALTER TABLE `glpi_items_devicenetworkcards`
ADD KEY `computers_id` (`items_id`);

-- Migration glpi_items_devicepcis
ALTER TABLE `glpi_items_devicepcis`
ADD KEY `computers_id` (`items_id`);

-- Migration glpi_items_devicepowersupplies
ALTER TABLE `glpi_items_devicepowersupplies`
ADD KEY `computers_id` (`items_id`);

-- Migration glpi_items_deviceprocessors
ALTER TABLE `glpi_items_deviceprocessors`
ADD KEY `computers_id` (`items_id`);

-- Migration glpi_items_devicesensors
ALTER TABLE `glpi_items_devicesensors`
ADD KEY `computers_id` (`items_id`);

-- Migration glpi_items_devicesoundcards
ALTER TABLE `glpi_items_devicesoundcards`
ADD KEY `computers_id` (`items_id`);

-- Migration glpi_knowbaseitemcategories
ALTER TABLE `glpi_knowbaseitemcategories`
ADD KEY `entities_id` (`entities_id`);

-- Migration glpi_knowbaseitems
ALTER TABLE `glpi_knowbaseitems`
ADD `date` datetime,
ADD `knowbaseitemcategories_id` int NOT NULL DEFAULT 0,
ADD KEY `knowbaseitemcategories_id` (`knowbaseitemcategories_id`);

-- Migration glpi_knowbaseitems_profiles
ALTER TABLE `glpi_knowbaseitems_profiles`
MODIFY `entities_id` int NOT NULL DEFAULT -1;

-- Migration glpi_networkequipments
ALTER TABLE `glpi_networkequipments`
MODIFY `ram` varchar(255);

-- Migration glpi_networknames
ALTER TABLE `glpi_networknames`
ADD KEY `name` (`name`);

-- Migration glpi_networkportethernets
ALTER TABLE `glpi_networkportethernets`
ADD `netpoints_id` int NOT NULL DEFAULT 0,
ADD KEY `netpoint` (`netpoints_id`);

-- Migration glpi_networkportfiberchannels
ALTER TABLE `glpi_networkportfiberchannels`
ADD `netpoints_id` int NOT NULL DEFAULT 0,
ADD KEY `netpoint` (`netpoints_id`);

-- Migration glpi_networkports
ALTER TABLE `glpi_networkports`
ADD KEY `on_device` (`items_id`,`itemtype`);

-- Migration glpi_notepads
ALTER TABLE `glpi_notepads`
ADD `date` datetime,
ADD INDEX `date` (`date`);

-- Migration glpi_notifications_notificationtemplates
ALTER TABLE `glpi_notifications_notificationtemplates`
ADD KEY `notifications_id` (`notifications_id`);

-- Migration glpi_objectlocks
ALTER TABLE `glpi_objectlocks`
ADD `date_mod` datetime NOT NULL;

-- Migration glpi_profiles_reminders
ALTER TABLE `glpi_profiles_reminders`
MODIFY `entities_id` int NOT NULL DEFAULT -1;

-- Migration glpi_profiles_rssfeeds
ALTER TABLE `glpi_profiles_rssfeeds`
MODIFY `entities_id` int NOT NULL DEFAULT -1;

-- Migration glpi_projecttasks
ALTER TABLE `glpi_projecttasks`
ADD `date` datetime,
ADD KEY `date` (`date`);

-- Migration glpi_registeredids
-- A CHECK | TEST
ALTER TABLE `glpi_registeredids`
DROP KEY `item`,
ADD KEY `item` (`items_id`,`itemtype`);

-- Migration glpi_reservationitems
ALTER TABLE `glpi_reservationitems`
ADD `is_deleted` tinyint NOT NULL DEFAULT 0,
ADD KEY `is_deleted` (`is_deleted`);

-- Migration glpi_reservations
ALTER TABLE `glpi_reservations`
MODIFY `comment` text NOT NULL;

-- Migration glpi_rulerightparameters
-- ALTER TABLE `glpi_rulerightparameters`
-- MODIFY `comment` text NOT NULL;

-- Migration glpi_olalevels_tickets
-- ALTER TABLE `glpi_olalevels_tickets`
-- ADD `use_ticket_calendar` tinyint NOT NULL DEFAULT 0;

-- Migration glpi_itilsolutions
ALTER TABLE `glpi_itilsolutions`
DROP INDEX `date_creation`,
DROP INDEX `date_mod`,
ADD KEY `item_id` (`items_id`),
ADD KEY `itemtype` (`itemtype`);

-- Migration glpi_ssovariables
ALTER TABLE `glpi_ssovariables`
DROP INDEX `date_mod`,
DROP INDEX `name`,
ADD  KEY `date_mod` (`date_mod`);

-- Migration glpi_states
ALTER TABLE `glpi_states`
DROP COLUMN `is_visible_cable`,
DROP COLUMN `is_visible_databaseinstance`,
DROP COLUMN `is_visible_unmanaged`,
DROP INDEX `entities_id`,
DROP INDEX `is_recursive`,
DROP INDEX `is_visible_cable`,
DROP INDEX `is_visible_databaseinstance`,
DROP INDEX `is_visible_unmanaged`,
DROP INDEX `level`;

-- Migration glpi_suppliers
ALTER TABLE `glpi_suppliers`
DROP COLUMN `pictures`,
DROP COLUMN `registration_number`,
DROP INDEX `is_recursive`;

-- Migration glpi_tasktemplates
ALTER TABLE `glpi_tasktemplates`
MODIFY `content` text;

-- Migration glpi_tickettemplatehiddenfields
-- ALTER TABLE `glpi_tickettemplatehiddenfields`
-- ADD KEY `tickettemplates_id` (`tickettemplates_id`);

-- Migration glpi_changetemplatehiddenfields
ALTER TABLE `glpi_changetemplatehiddenfields`
ADD KEY `changetemplates_id` (`changetemplates_id`);

-- Migration glpi_problemtemplatehiddenfields
ALTER TABLE `glpi_problemtemplatehiddenfields`
ADD KEY `problemtemplates_id` (`problemtemplates_id`);

-- Migration glpi_tickettemplatemandatoryfields
ALTER TABLE `glpi_tickettemplatemandatoryfields`
ADD KEY `tickettemplates_id` (`tickettemplates_id`);

-- Migration glpi_changetemplatemandatoryfields
ALTER TABLE `glpi_changetemplatemandatoryfields`
ADD KEY `changetemplates_id` (`changetemplates_id`);

-- Migration glpi_problemtemplatemandatoryfields
ALTER TABLE `glpi_problemtemplatemandatoryfields`
ADD KEY `problemtemplates_id` (`problemtemplates_id`);

-- Migration glpi_users
ALTER TABLE `glpi_users`
ADD `access_custom_shortcuts` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin CHECK (json_valid(`access_custom_shortcuts`)),
ADD `access_font` varchar(100),
ADD `access_shortcuts` tinyint DEFAULT 0,
ADD `access_zoom_level` smallint DEFAULT 100,
ADD `layout` char(20);

-- Migration glpi_virtualmachinestates
ALTER TABLE `glpi_virtualmachinestates`
MODIFY `comment` text NOT NULL;

-- Migration glpi_virtualmachinetypes
ALTER TABLE `glpi_virtualmachinetypes`
MODIFY `comment` text NOT NULL;

-- Migration glpi_knowbaseitems_items
ALTER TABLE `glpi_knowbaseitems_items`
ADD KEY `item_id` (`items_id`),
ADD KEY `item` (`itemtype`,`items_id`),
ADD KEY `itemtype` (`itemtype`);

-- Migration glpi_knowbaseitems_revisions
ALTER TABLE `glpi_knowbaseitems_revisions`
ADD `date_creation` datetime;

-- Migration glpi_knowbaseitems_comments
ALTER TABLE `glpi_knowbaseitems_comments`
MODIFY `comment` text NOT NULL;

-- Migration glpi_items_devicebatteries
ALTER TABLE `glpi_items_devicebatteries`
ADD KEY `computers_id` (`items_id`);

-- Migration glpi_items_devicefirmwares
ALTER TABLE `glpi_items_devicefirmwares`
ADD KEY `computers_id` (`items_id`);

-- Migration glpi_itilfollowuptemplates
ALTER TABLE `glpi_itilfollowuptemplates`
MODIFY `content` text;

-- Migration glpi_itilfollowups
ALTER TABLE `glpi_itilfollowups`
ADD KEY `item_id` (`items_id`),
ADD KEY `itemtype` (`itemtype`);

-- Migration glpi_planningexternaleventtemplates
ALTER TABLE `glpi_planningexternaleventtemplates`
MODIFY `text` text;

-- Migration glpi_domains_items
ALTER TABLE `glpi_domains_items`
ADD KEY `FK_device` (`items_id`,`itemtype`),
ADD KEY `domains_id` (`domains_id`);

-- Migration glpi_appliances_items
ALTER TABLE `glpi_appliances_items`
ADD KEY `appliances_id` (`appliances_id`);

-- Migration glpi_appliances_items_relations
ALTER TABLE `glpi_appliances_items_relations`
ADD KEY `items_id` (`items_id`),
ADD KEY `itemtype` (`itemtype`);

-- Fix
INSERT INTO `glpi_configs` (`id`, `context`, `name`, `value`) VALUES (NULL, 'core', 'use_ajax_autocompletion', '1');
UPDATE `glpi_users` SET `layout` = 'lefttab';

-- Changement de version
UPDATE `glpi_configs` SET `value` = '9.5.7' WHERE `name` = 'version';
UPDATE `glpi_configs` SET `value` = '9.5.7' WHERE `name` = 'dbversion';


