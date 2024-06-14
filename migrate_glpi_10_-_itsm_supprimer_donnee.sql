-- AGENT
DROP TABLE IF EXISTS glpi_agents;
DROP TABLE IF EXISTS glpi_agenttypes;

-- DASHBOARD
DROP TABLE IF EXISTS glpi_dashboards_filters;


-- CABLES

DROP TABLE IF EXISTS glpi_cabletypes;
DROP TABLE IF EXISTS glpi_cablestrands;
DROP TABLE IF EXISTS glpi_socketmodels;
DROP TABLE IF EXISTS glpi_cables;
DROP TABLE IF EXISTS glpi_networkportfiberchanneltypes;

DROP TABLE IF EXISTS glpi_manuallinks;


-- CAMERAS
DROP TABLE IF EXISTS glpi_devicecameras;
DROP TABLE IF EXISTS glpi_devicecameramodels;
DROP TABLE IF EXISTS glpi_imageformats;
DROP TABLE IF EXISTS glpi_imageresolutions;
DROP TABLE IF EXISTS glpi_items_devicecameras;
DROP TABLE IF EXISTS glpi_items_devicecameras_imageformats;
DROP TABLE IF EXISTS glpi_items_devicecameras_imageresolutions;

-- DATABASES
DROP TABLE IF EXISTS glpi_databaseinstancecategories;
DROP TABLE IF EXISTS glpi_databaseinstances;
DROP TABLE IF EXISTS glpi_databaseinstancetypes;
DROP TABLE IF EXISTS glpi_databases;

-- REMOTE MANAGEMENT
DROP TABLE IF EXISTS glpi_items_remotemanagements;

-- KNOWBASE CATHEGORIES
DROP TABLE IF EXISTS glpi_knowbaseitems_knowbaseitemcategories;

-- LOCKED FIELDS
DROP TABLE IF EXISTS glpi_lockedfields;

-- NETWORK PORTS
DROP TABLE IF EXISTS glpi_networkportconnectionlogs;
DROP TABLE IF EXISTS glpi_networkportmetrics;
DROP TABLE IF EXISTS glpi_networkporttypes;

-- REFUSE EQUIPMENTS
DROP TABLE IF EXISTS glpi_refusedequipments;

-- CHAT
DROP TABLE IF EXISTS glpi_notificationchatconfigs IF EXISTS;

-- REMOVE Context Inventory on Config
DELETE FROM IF EXISTS glpi_configs WHERE context = 'inventory';

-- REMOVE CRONJOB FOR AGENT
ALTER TABLE glpi_domains_items DROP COLUMN IF EXISTS is_dynamic;
ALTER TABLE glpi_domains_items DROP COLUMN IF EXISTS is_deleted;