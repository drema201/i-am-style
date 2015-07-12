-- MySQL dump 10.13  Distrib 5.5.40, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: ph238604_db
-- ------------------------------------------------------
-- Server version	5.5.40-0ubuntu0.12.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `ph238604_db`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `ph238604_db` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ph238604_db`;

--
-- Table structure for table `uzlnh_assets`
--

DROP TABLE IF EXISTS `uzlnh_assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uzlnh_assets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_asset_name` (`name`),
  KEY `idx_lft_rgt` (`lft`,`rgt`),
  KEY `idx_parent_id` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uzlnh_assets`
--

LOCK TABLES `uzlnh_assets` WRITE;
/*!40000 ALTER TABLE `uzlnh_assets` DISABLE KEYS */;
INSERT INTO `uzlnh_assets` VALUES (1,0,1,83,0,'root.1','Root Asset','{\"core.login.site\":{\"6\":1,\"2\":1},\"core.login.admin\":{\"6\":1},\"core.login.offline\":{\"6\":1},\"core.admin\":{\"8\":1},\"core.manage\":{\"7\":1},\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(2,1,1,2,1,'com_admin','com_admin','{}'),(3,1,3,6,1,'com_banners','com_banners','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(4,1,7,8,1,'com_cache','com_cache','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),(5,1,9,10,1,'com_checkin','com_checkin','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),(6,1,11,12,1,'com_config','com_config','{}'),(7,1,13,16,1,'com_contact','com_contact','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(8,1,17,26,1,'com_content','com_content','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":[],\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1},\"core.edit.own\":[]}'),(9,1,27,28,1,'com_cpanel','com_cpanel','{}'),(10,1,29,30,1,'com_installer','com_installer','{\"core.admin\":[],\"core.manage\":{\"7\":0},\"core.delete\":{\"7\":0},\"core.edit.state\":{\"7\":0}}'),(11,1,31,32,1,'com_languages','com_languages','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(12,1,33,34,1,'com_login','com_login','{}'),(13,1,35,36,1,'com_mailto','com_mailto','{}'),(14,1,37,38,1,'com_massmail','com_massmail','{}'),(15,1,39,40,1,'com_media','com_media','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":{\"5\":1}}'),(16,1,41,42,1,'com_menus','com_menus','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(17,1,43,44,1,'com_messages','com_messages','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),(18,1,45,46,1,'com_modules','com_modules','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(19,1,47,50,1,'com_newsfeeds','com_newsfeeds','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(20,1,51,52,1,'com_plugins','com_plugins','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(21,1,53,54,1,'com_redirect','com_redirect','{\"core.admin\":{\"7\":1},\"core.manage\":[]}'),(22,1,55,56,1,'com_search','com_search','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),(23,1,57,58,1,'com_templates','com_templates','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(24,1,59,62,1,'com_users','com_users','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(25,1,63,66,1,'com_weblinks','com_weblinks','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":[],\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1},\"core.edit.own\":[]}'),(26,1,67,68,1,'com_wrapper','com_wrapper','{}'),(27,8,18,25,2,'com_content.category.2','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(28,3,4,5,2,'com_banners.category.3','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(29,7,14,15,2,'com_contact.category.4','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(30,19,48,49,2,'com_newsfeeds.category.5','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(31,25,64,65,2,'com_weblinks.category.6','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(32,24,60,61,1,'com_users.notes.category.7','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(33,1,69,70,1,'com_finder','com_finder','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),(34,1,71,72,1,'com_joomlaupdate','com_joomlaupdate','{\"core.admin\":[],\"core.manage\":[],\"core.delete\":[],\"core.edit.state\":[]}'),(35,1,73,74,1,'com_virtuemart','virtuemart','{}'),(36,1,75,76,1,'com_virtuemart_allinone','virtuemart_allinone','{}'),(37,27,19,20,3,'com_content.article.1','Тестовая статья','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(38,1,77,80,1,'com_djimageslider','com_djimageslider','{}'),(39,38,78,79,2,'com_djimageslider.category.8','Слайдер','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(40,1,81,82,1,'com_xmap','com_xmap','{}'),(41,27,21,22,3,'com_content.article.2','Платье Carbrary вечернее','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(42,27,23,24,3,'com_content.article.3',' Платье из коллекции Ulyana Sergeenko','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}');
/*!40000 ALTER TABLE `uzlnh_assets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uzlnh_associations`
--

DROP TABLE IF EXISTS `uzlnh_associations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uzlnh_associations` (
  `id` varchar(50) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.',
  PRIMARY KEY (`context`,`id`),
  KEY `idx_key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uzlnh_associations`
--

LOCK TABLES `uzlnh_associations` WRITE;
/*!40000 ALTER TABLE `uzlnh_associations` DISABLE KEYS */;
/*!40000 ALTER TABLE `uzlnh_associations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uzlnh_banner_clients`
--

DROP TABLE IF EXISTS `uzlnh_banner_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uzlnh_banner_clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `extrainfo` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uzlnh_banner_clients`
--

LOCK TABLES `uzlnh_banner_clients` WRITE;
/*!40000 ALTER TABLE `uzlnh_banner_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `uzlnh_banner_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uzlnh_banner_tracks`
--

DROP TABLE IF EXISTS `uzlnh_banner_tracks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uzlnh_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  KEY `idx_track_date` (`track_date`),
  KEY `idx_track_type` (`track_type`),
  KEY `idx_banner_id` (`banner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uzlnh_banner_tracks`
--

LOCK TABLES `uzlnh_banner_tracks` WRITE;
/*!40000 ALTER TABLE `uzlnh_banner_tracks` DISABLE KEYS */;
/*!40000 ALTER TABLE `uzlnh_banner_tracks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uzlnh_banners`
--

DROP TABLE IF EXISTS `uzlnh_banners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uzlnh_banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `custombannercode` varchar(2048) NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `params` text NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`),
  KEY `idx_banner_catid` (`catid`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uzlnh_banners`
--

LOCK TABLES `uzlnh_banners` WRITE;
/*!40000 ALTER TABLE `uzlnh_banners` DISABLE KEYS */;
/*!40000 ALTER TABLE `uzlnh_banners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uzlnh_categories`
--

DROP TABLE IF EXISTS `uzlnh_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uzlnh_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `extension` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`extension`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uzlnh_categories`
--

LOCK TABLES `uzlnh_categories` WRITE;
/*!40000 ALTER TABLE `uzlnh_categories` DISABLE KEYS */;
INSERT INTO `uzlnh_categories` VALUES (1,0,0,0,15,0,'','system','ROOT','root','','',1,0,'0000-00-00 00:00:00',1,'{}','','','',0,'2009-10-18 16:07:09',0,'0000-00-00 00:00:00',0,'*'),(2,27,1,1,2,1,'uncategorised','com_content','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',42,'2010-06-28 13:26:37',0,'0000-00-00 00:00:00',0,'*'),(3,28,1,3,4,1,'uncategorised','com_banners','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\",\"foobar\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',42,'2010-06-28 13:27:35',0,'0000-00-00 00:00:00',0,'*'),(4,29,1,5,6,1,'uncategorised','com_contact','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',42,'2010-06-28 13:27:57',0,'0000-00-00 00:00:00',0,'*'),(5,30,1,7,8,1,'uncategorised','com_newsfeeds','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',42,'2010-06-28 13:28:15',0,'0000-00-00 00:00:00',0,'*'),(6,31,1,9,10,1,'uncategorised','com_weblinks','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',42,'2010-06-28 13:28:33',0,'0000-00-00 00:00:00',0,'*'),(7,32,1,11,12,1,'uncategorised','com_users.notes','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',42,'2010-06-28 13:28:33',0,'0000-00-00 00:00:00',0,'*'),(8,39,1,13,14,1,'slajder','com_djimageslider','Слайдер','slajder','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',706,'2014-07-20 14:05:25',0,'0000-00-00 00:00:00',0,'*');
/*!40000 ALTER TABLE `uzlnh_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uzlnh_contact_details`
--

DROP TABLE IF EXISTS `uzlnh_contact_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uzlnh_contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `con_position` varchar(255) DEFAULT NULL,
  `address` text,
  `suburb` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `misc` mediumtext,
  `image` varchar(255) DEFAULT NULL,
  `imagepos` varchar(20) DEFAULT NULL,
  `email_to` varchar(255) DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  `sortname1` varchar(255) NOT NULL,
  `sortname2` varchar(255) NOT NULL,
  `sortname3` varchar(255) NOT NULL,
  `language` char(7) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uzlnh_contact_details`
--

LOCK TABLES `uzlnh_contact_details` WRITE;
/*!40000 ALTER TABLE `uzlnh_contact_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `uzlnh_contact_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uzlnh_content`
--

DROP TABLE IF EXISTS `uzlnh_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uzlnh_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `title_alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT 'Deprecated in Joomla! 3.0',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `sectionid` int(10) unsigned NOT NULL DEFAULT '0',
  `mask` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` varchar(5120) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `parentid` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uzlnh_content`
--

LOCK TABLES `uzlnh_content` WRITE;
/*!40000 ALTER TABLE `uzlnh_content` DISABLE KEYS */;
INSERT INTO `uzlnh_content` VALUES (1,37,'Тестовая статья','testovaya-statya','','<p>С другой стороны постоянное информационно-пропагандистское обеспечение нашей деятельности требуют определения и уточнения модели развития. С другой стороны рамки и место обучения кадров способствует подготовки и реализации систем массового участия. Таким образом сложившаяся структура организации играет важную роль в формировании системы обучения кадров, соответствует насущным потребностям.</p>\r\n<p>Разнообразный и богатый опыт начало повседневной работы по формированию позиции позволяет выполнять важные задания по разработке системы обучения кадров, соответствует насущным потребностям. Равным образом рамки и место обучения кадров способствует подготовки и реализации дальнейших направлений развития. Равным образом сложившаяся структура организации влечет за собой процесс внедрения и модернизации форм развития. Не следует, однако забывать, что новая модель организационной деятельности представляет собой интересный эксперимент проверки позиций, занимаемых участниками в отношении поставленных задач. Товарищи! рамки и место обучения кадров требуют от нас анализа существенных финансовых и административных условий. Равным образом консультация с широким активом позволяет выполнять важные задания по разработке дальнейших направлений развития.</p>\r\n<p>Товарищи! реализация намеченных плановых заданий позволяет оценить значение позиций, занимаемых участниками в отношении поставленных задач. Повседневная практика показывает, что дальнейшее развитие различных форм деятельности представляет собой интересный эксперимент проверки модели развития. Товарищи! консультация с широким активом позволяет выполнять важные задания по разработке позиций, занимаемых участниками в отношении поставленных задач. Товарищи! реализация намеченных плановых заданий позволяет оценить значение позиций, занимаемых участниками в отношении поставленных задач. Значимость этих проблем настолько очевидна, что новая модель организационной деятельности позволяет выполнять важные задания по разработке модели развития.</p>','',1,0,0,2,'2014-07-15 08:35:10',706,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','2014-07-15 08:35:10','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,0,2,'','',1,119,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(2,41,'Платье Carbrary вечернее','plate-carbrary-vechernee','','<p>Платье Carbrary вечернее, облегающий верх - парча приглушенного золотого цвета, юбка-колокол(двуслойная), верх - тончайшая органза, по нижнему краю отделанная широкой атласной полосой! Отлично подойдет как для молодежной вечеринки, так и для похода в театр!</p>','',1,0,0,2,'2014-08-16 14:30:29',706,'Ольга','2014-08-16 14:31:14',706,0,'0000-00-00 00:00:00','2014-08-16 14:30:29','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',2,0,1,'','',1,0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(3,42,' Платье из коллекции Ulyana Sergeenko','plate-iz-kollektsii-ulyana-sergeenko','','<p>ВНИМАНИЕ! Платье из эксклюзивной коллекции Ulyana Sergeenko, 100% шелк, длинное в пол, рисунок \"гжель\". Облегающий верх, широкая струящаяся юбка, пышные рукава  \"фонарик\"-  длина до локтя. Имидж девушки-крестьянки, нежной и трогательной на все времена!</p>','',1,0,0,2,'2014-08-16 14:37:25',706,'','0000-00-00 00:00:00',0,706,'2015-01-26 19:54:01','2014-08-16 14:37:25','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,0,0,'','',1,0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*','');
/*!40000 ALTER TABLE `uzlnh_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uzlnh_content_frontpage`
--

DROP TABLE IF EXISTS `uzlnh_content_frontpage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uzlnh_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uzlnh_content_frontpage`
--

LOCK TABLES `uzlnh_content_frontpage` WRITE;
/*!40000 ALTER TABLE `uzlnh_content_frontpage` DISABLE KEYS */;
/*!40000 ALTER TABLE `uzlnh_content_frontpage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uzlnh_content_rating`
--

DROP TABLE IF EXISTS `uzlnh_content_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uzlnh_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uzlnh_content_rating`
--

LOCK TABLES `uzlnh_content_rating` WRITE;
/*!40000 ALTER TABLE `uzlnh_content_rating` DISABLE KEYS */;
/*!40000 ALTER TABLE `uzlnh_content_rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uzlnh_core_log_searches`
--

DROP TABLE IF EXISTS `uzlnh_core_log_searches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uzlnh_core_log_searches` (
  `search_term` varchar(128) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uzlnh_core_log_searches`
--

LOCK TABLES `uzlnh_core_log_searches` WRITE;
/*!40000 ALTER TABLE `uzlnh_core_log_searches` DISABLE KEYS */;
/*!40000 ALTER TABLE `uzlnh_core_log_searches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uzlnh_djimageslider`
--

DROP TABLE IF EXISTS `uzlnh_djimageslider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uzlnh_djimageslider` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL DEFAULT '',
  `image` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`,`published`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uzlnh_djimageslider`
--

LOCK TABLES `uzlnh_djimageslider` WRITE;
/*!40000 ALTER TABLE `uzlnh_djimageslider` DISABLE KEYS */;
INSERT INTO `uzlnh_djimageslider` VALUES (1,8,'Слайд 1','slajd-1','images/slides/slide1.png','<p>Описание слайда</p>',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,'0000-00-00 00:00:00',1,'{\"link_type\":\"url\",\"link_menu\":\"123\",\"link_url\":\"\",\"link_article\":\"\"}'),(2,8,'Слайд 2','slajd-2','images/slides/slide2.png','<p>Описание</p>',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,'0000-00-00 00:00:00',2,'{\"link_type\":\"menu\",\"link_menu\":\"123\",\"link_url\":\"\",\"link_article\":\"\"}'),(3,8,'Слайд 3','slajd-3','images/slides/slide3.png','<p>Текст слайда</p>',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,'0000-00-00 00:00:00',3,'{\"link_type\":\"menu\",\"link_menu\":\"123\",\"link_url\":\"\",\"link_article\":\"\"}'),(4,8,'Слайд 4','slajd-4','images/slides/slide4.png','<p>Текст</p>',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,'0000-00-00 00:00:00',4,'{\"link_type\":\"menu\",\"link_menu\":\"123\",\"link_url\":\"\",\"link_article\":\"\"}'),(5,8,'Слайд 5','slajd-5','images/slides/slide5.png','<p>Текст текст текст</p>',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,'0000-00-00 00:00:00',5,'{\"link_type\":\"menu\",\"link_menu\":\"123\",\"link_url\":\"\",\"link_article\":\"\"}');
/*!40000 ALTER TABLE `uzlnh_djimageslider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uzlnh_extensions`
--

DROP TABLE IF EXISTS `uzlnh_extensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uzlnh_extensions` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `element` varchar(100) NOT NULL,
  `folder` varchar(100) NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  `access` int(10) unsigned NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text NOT NULL,
  `params` text NOT NULL,
  `custom_data` text NOT NULL,
  `system_data` text NOT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0',
  PRIMARY KEY (`extension_id`),
  KEY `element_clientid` (`element`,`client_id`),
  KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  KEY `extension` (`type`,`element`,`folder`,`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10054 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uzlnh_extensions`
--

LOCK TABLES `uzlnh_extensions` WRITE;
/*!40000 ALTER TABLE `uzlnh_extensions` DISABLE KEYS */;
INSERT INTO `uzlnh_extensions` VALUES (1,'com_mailto','component','com_mailto','',0,1,1,1,'{\"legacy\":false,\"name\":\"com_mailto\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_MAILTO_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(2,'com_wrapper','component','com_wrapper','',0,1,1,1,'{\"legacy\":false,\"name\":\"com_wrapper\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_WRAPPER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(3,'com_admin','component','com_admin','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_admin\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_ADMIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(4,'com_banners','component','com_banners','',1,1,1,0,'{\"legacy\":false,\"name\":\"com_banners\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_BANNERS_XML_DESCRIPTION\",\"group\":\"\"}','{\"purchase_type\":\"3\",\"track_impressions\":\"0\",\"track_clicks\":\"0\",\"metakey_prefix\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(5,'com_cache','component','com_cache','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_cache\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_CACHE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(6,'com_categories','component','com_categories','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_categories\",\"type\":\"component\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(7,'com_checkin','component','com_checkin','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_checkin\",\"type\":\"component\",\"creationDate\":\"Unknown\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2008 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_CHECKIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(8,'com_contact','component','com_contact','',1,1,1,0,'{\"legacy\":false,\"name\":\"com_contact\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_CONTACT_XML_DESCRIPTION\",\"group\":\"\"}','{\"show_contact_category\":\"hide\",\"show_contact_list\":\"0\",\"presentation_style\":\"sliders\",\"show_name\":\"1\",\"show_position\":\"1\",\"show_email\":\"0\",\"show_street_address\":\"1\",\"show_suburb\":\"1\",\"show_state\":\"1\",\"show_postcode\":\"1\",\"show_country\":\"1\",\"show_telephone\":\"1\",\"show_mobile\":\"1\",\"show_fax\":\"1\",\"show_webpage\":\"1\",\"show_misc\":\"1\",\"show_image\":\"1\",\"image\":\"\",\"allow_vcard\":\"0\",\"show_articles\":\"0\",\"show_profile\":\"0\",\"show_links\":\"0\",\"linka_name\":\"\",\"linkb_name\":\"\",\"linkc_name\":\"\",\"linkd_name\":\"\",\"linke_name\":\"\",\"contact_icons\":\"0\",\"icon_address\":\"\",\"icon_email\":\"\",\"icon_telephone\":\"\",\"icon_mobile\":\"\",\"icon_fax\":\"\",\"icon_misc\":\"\",\"show_headings\":\"1\",\"show_position_headings\":\"1\",\"show_email_headings\":\"0\",\"show_telephone_headings\":\"1\",\"show_mobile_headings\":\"0\",\"show_fax_headings\":\"0\",\"allow_vcard_headings\":\"0\",\"show_suburb_headings\":\"1\",\"show_state_headings\":\"1\",\"show_country_headings\":\"1\",\"show_email_form\":\"1\",\"show_email_copy\":\"1\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"1\",\"custom_reply\":\"0\",\"redirect\":\"\",\"show_category_crumb\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(9,'com_cpanel','component','com_cpanel','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_cpanel\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_CPANEL_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10,'com_installer','component','com_installer','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_installer\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_INSTALLER_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(11,'com_languages','component','com_languages','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_languages\",\"type\":\"component\",\"creationDate\":\"2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\"}','{\"administrator\":\"ru-RU\",\"site\":\"ru-RU\"}','','',0,'0000-00-00 00:00:00',0,0),(12,'com_login','component','com_login','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_login\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(13,'com_media','component','com_media','',1,1,0,1,'{\"legacy\":false,\"name\":\"com_media\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_MEDIA_XML_DESCRIPTION\",\"group\":\"\"}','{\"upload_extensions\":\"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS\",\"upload_maxsize\":\"10\",\"file_path\":\"images\",\"image_path\":\"images\",\"restrict_uploads\":\"1\",\"allowed_media_usergroup\":\"3\",\"check_mime\":\"1\",\"image_extensions\":\"bmp,gif,jpg,png\",\"ignore_extensions\":\"\",\"upload_mime\":\"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip\",\"upload_mime_illegal\":\"text\\/html\",\"enable_flash\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(14,'com_menus','component','com_menus','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_menus\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_MENUS_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(15,'com_messages','component','com_messages','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_messages\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_MESSAGES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(16,'com_modules','component','com_modules','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_modules\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_MODULES_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(17,'com_newsfeeds','component','com_newsfeeds','',1,1,1,0,'{\"legacy\":false,\"name\":\"com_newsfeeds\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\"}','{\"show_feed_image\":\"1\",\"show_feed_description\":\"1\",\"show_item_description\":\"1\",\"feed_word_count\":\"0\",\"show_headings\":\"1\",\"show_name\":\"1\",\"show_articles\":\"0\",\"show_link\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"1\",\"display_num\":\"\",\"show_pagination_limit\":\"1\",\"show_pagination\":\"1\",\"show_pagination_results\":\"1\",\"show_cat_items\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(18,'com_plugins','component','com_plugins','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_plugins\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_PLUGINS_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(19,'com_search','component','com_search','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_search\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_SEARCH_XML_DESCRIPTION\",\"group\":\"\"}','{\"enabled\":\"0\",\"show_date\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(20,'com_templates','component','com_templates','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_templates\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_TEMPLATES_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(21,'com_weblinks','component','com_weblinks','',1,1,1,0,'{\"legacy\":false,\"name\":\"com_weblinks\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_WEBLINKS_XML_DESCRIPTION\",\"group\":\"\"}','{\"show_comp_description\":\"1\",\"comp_description\":\"\",\"show_link_hits\":\"1\",\"show_link_description\":\"1\",\"show_other_cats\":\"0\",\"show_headings\":\"0\",\"show_numbers\":\"0\",\"show_report\":\"1\",\"count_clicks\":\"1\",\"target\":\"0\",\"link_icons\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(22,'com_content','component','com_content','',1,1,0,1,'{\"legacy\":false,\"name\":\"com_content\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_CONTENT_XML_DESCRIPTION\",\"group\":\"\"}','{\"article_layout\":\"_:default\",\"show_title\":\"1\",\"link_titles\":\"0\",\"show_intro\":\"1\",\"show_category\":\"0\",\"link_category\":\"0\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"0\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"0\",\"show_vote\":\"0\",\"show_readmore\":\"1\",\"show_readmore_title\":\"0\",\"readmore_limit\":\"100\",\"show_icons\":\"0\",\"show_print_icon\":\"0\",\"show_email_icon\":\"0\",\"show_hits\":\"0\",\"show_noauth\":\"0\",\"urls_position\":\"0\",\"show_publishing_options\":\"1\",\"show_article_options\":\"1\",\"show_urls_images_frontend\":\"0\",\"show_urls_images_backend\":\"1\",\"targeta\":0,\"targetb\":0,\"targetc\":0,\"float_intro\":\"left\",\"float_fulltext\":\"left\",\"category_layout\":\"_:blog\",\"show_category_heading_title_text\":\"1\",\"show_category_title\":\"0\",\"show_description\":\"0\",\"show_description_image\":\"0\",\"maxLevel\":\"1\",\"show_empty_categories\":\"0\",\"show_no_articles\":\"1\",\"show_subcat_desc\":\"1\",\"show_cat_num_articles\":\"0\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_num_articles_cat\":\"1\",\"num_leading_articles\":\"1000\",\"num_intro_articles\":\"0\",\"num_columns\":\"3\",\"num_links\":\"0\",\"multi_column_order\":\"0\",\"show_subcategory_content\":\"0\",\"show_pagination_limit\":\"0\",\"filter_field\":\"hide\",\"show_headings\":\"0\",\"list_show_date\":\"0\",\"date_format\":\"\",\"list_show_hits\":\"0\",\"list_show_author\":\"0\",\"orderby_pri\":\"order\",\"orderby_sec\":\"rdate\",\"order_date\":\"published\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_feed_link\":\"1\",\"feed_summary\":\"0\",\"feed_show_readmore\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(23,'com_config','component','com_config','',1,1,0,1,'{\"legacy\":false,\"name\":\"com_config\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_CONFIG_XML_DESCRIPTION\",\"group\":\"\"}','{\"filters\":{\"1\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"6\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"7\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"2\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"3\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"4\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"5\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"8\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"}}}','','',0,'0000-00-00 00:00:00',0,0),(24,'com_redirect','component','com_redirect','',1,1,0,1,'{\"legacy\":false,\"name\":\"com_redirect\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(25,'com_users','component','com_users','',1,1,0,1,'{\"legacy\":false,\"name\":\"com_users\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_USERS_XML_DESCRIPTION\",\"group\":\"\"}','{\"allowUserRegistration\":\"1\",\"new_usertype\":\"2\",\"useractivation\":\"1\",\"frontend_userparams\":\"1\",\"mailSubjectPrefix\":\"\",\"mailBodySuffix\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(27,'com_finder','component','com_finder','',1,1,0,0,'{\"legacy\":false,\"name\":\"com_finder\",\"type\":\"component\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_FINDER_XML_DESCRIPTION\",\"group\":\"\"}','{\"show_description\":\"1\",\"description_length\":255,\"allow_empty_query\":\"0\",\"show_url\":\"1\",\"show_advanced\":\"1\",\"expand_advanced\":\"0\",\"show_date_filters\":\"0\",\"highlight_terms\":\"1\",\"opensearch_name\":\"\",\"opensearch_description\":\"\",\"batch_size\":\"50\",\"memory_table_limit\":30000,\"title_multiplier\":\"1.7\",\"text_multiplier\":\"0.7\",\"meta_multiplier\":\"1.2\",\"path_multiplier\":\"2.0\",\"misc_multiplier\":\"0.3\",\"stemmer\":\"snowball\"}','','',0,'0000-00-00 00:00:00',0,0),(28,'com_joomlaupdate','component','com_joomlaupdate','',1,1,0,1,'{\"legacy\":false,\"name\":\"com_joomlaupdate\",\"type\":\"component\",\"creationDate\":\"February 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(100,'PHPMailer','library','phpmailer','',0,1,1,1,'{\"legacy\":false,\"name\":\"PHPMailer\",\"type\":\"library\",\"creationDate\":\"2001\",\"author\":\"PHPMailer\",\"copyright\":\"(c) 2001-2003, Brent R. Matzelle, (c) 2004-2009, Andy Prevost. All Rights Reserved., (c) 2010-2011, Jim Jagielski. All Rights Reserved.\",\"authorEmail\":\"jimjag@gmail.com\",\"authorUrl\":\"https:\\/\\/code.google.com\\/a\\/apache-extras.org\\/p\\/phpmailer\\/\",\"version\":\"5.2\",\"description\":\"LIB_PHPMAILER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(101,'SimplePie','library','simplepie','',0,1,1,1,'{\"legacy\":false,\"name\":\"SimplePie\",\"type\":\"library\",\"creationDate\":\"2004\",\"author\":\"SimplePie\",\"copyright\":\"Copyright (c) 2004-2009, Ryan Parman and Geoffrey Sneddon\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/simplepie.org\\/\",\"version\":\"1.2\",\"description\":\"LIB_SIMPLEPIE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(102,'phputf8','library','phputf8','',0,1,1,1,'{\"legacy\":false,\"name\":\"phputf8\",\"type\":\"library\",\"creationDate\":\"2006\",\"author\":\"Harry Fuecks\",\"copyright\":\"Copyright various authors\",\"authorEmail\":\"hfuecks@gmail.com\",\"authorUrl\":\"http:\\/\\/sourceforge.net\\/projects\\/phputf8\",\"version\":\"0.5\",\"description\":\"LIB_PHPUTF8_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(103,'Joomla! Platform','library','joomla','',0,1,1,1,'{\"legacy\":false,\"name\":\"Joomla! Platform\",\"type\":\"library\",\"creationDate\":\"2008\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"http:\\/\\/www.joomla.org\",\"version\":\"11.4\",\"description\":\"LIB_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(200,'mod_articles_archive','module','mod_articles_archive','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_articles_archive\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters.\\n\\t\\tAll rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(201,'mod_articles_latest','module','mod_articles_latest','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_articles_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_LATEST_NEWS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(202,'mod_articles_popular','module','mod_articles_popular','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_articles_popular\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(203,'mod_banners','module','mod_banners','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_banners\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_BANNERS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(204,'mod_breadcrumbs','module','mod_breadcrumbs','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_breadcrumbs\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_BREADCRUMBS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(205,'mod_custom','module','mod_custom','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(206,'mod_feed','module','mod_feed','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(207,'mod_footer','module','mod_footer','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_footer\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_FOOTER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(208,'mod_login','module','mod_login','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(209,'mod_menu','module','mod_menu','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(210,'mod_articles_news','module','mod_articles_news','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_articles_news\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_ARTICLES_NEWS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(211,'mod_random_image','module','mod_random_image','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_random_image\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_RANDOM_IMAGE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(212,'mod_related_items','module','mod_related_items','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_related_items\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_RELATED_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(213,'mod_search','module','mod_search','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_search\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_SEARCH_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(214,'mod_stats','module','mod_stats','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_stats\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(215,'mod_syndicate','module','mod_syndicate','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_syndicate\",\"type\":\"module\",\"creationDate\":\"May 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_SYNDICATE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(216,'mod_users_latest','module','mod_users_latest','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_users_latest\",\"type\":\"module\",\"creationDate\":\"December 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_USERS_LATEST_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(217,'mod_weblinks','module','mod_weblinks','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_weblinks\",\"type\":\"module\",\"creationDate\":\"July 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_WEBLINKS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(218,'mod_whosonline','module','mod_whosonline','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_whosonline\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_WHOSONLINE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(219,'mod_wrapper','module','mod_wrapper','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_wrapper\",\"type\":\"module\",\"creationDate\":\"October 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_WRAPPER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(220,'mod_articles_category','module','mod_articles_category','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_articles_category\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(221,'mod_articles_categories','module','mod_articles_categories','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_articles_categories\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(222,'mod_languages','module','mod_languages','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_languages\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(223,'mod_finder','module','mod_finder','',0,1,0,0,'{\"legacy\":false,\"name\":\"mod_finder\",\"type\":\"module\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_FINDER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(300,'mod_custom','module','mod_custom','',1,1,1,1,'{\"legacy\":false,\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(301,'mod_feed','module','mod_feed','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(302,'mod_latest','module','mod_latest','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_LATEST_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(303,'mod_logged','module','mod_logged','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_logged\",\"type\":\"module\",\"creationDate\":\"January 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_LOGGED_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(304,'mod_login','module','mod_login','',1,1,1,1,'{\"legacy\":false,\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"March 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(305,'mod_menu','module','mod_menu','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(307,'mod_popular','module','mod_popular','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_popular\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(308,'mod_quickicon','module','mod_quickicon','',1,1,1,1,'{\"legacy\":false,\"name\":\"mod_quickicon\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_QUICKICON_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(309,'mod_status','module','mod_status','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_status\",\"type\":\"module\",\"creationDate\":\"Feb 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_STATUS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(310,'mod_submenu','module','mod_submenu','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_submenu\",\"type\":\"module\",\"creationDate\":\"Feb 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_SUBMENU_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(311,'mod_title','module','mod_title','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_title\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_TITLE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(312,'mod_toolbar','module','mod_toolbar','',1,1,1,1,'{\"legacy\":false,\"name\":\"mod_toolbar\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_TOOLBAR_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(313,'mod_multilangstatus','module','mod_multilangstatus','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_multilangstatus\",\"type\":\"module\",\"creationDate\":\"September 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_MULTILANGSTATUS_XML_DESCRIPTION\",\"group\":\"\"}','{\"cache\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(314,'mod_version','module','mod_version','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_version\",\"type\":\"module\",\"creationDate\":\"January 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_VERSION_XML_DESCRIPTION\",\"group\":\"\"}','{\"format\":\"short\",\"product\":\"1\",\"cache\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(400,'plg_authentication_gmail','plugin','gmail','authentication',0,0,1,0,'{\"legacy\":false,\"name\":\"plg_authentication_gmail\",\"type\":\"plugin\",\"creationDate\":\"February 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_GMAIL_XML_DESCRIPTION\",\"group\":\"\"}','{\"applysuffix\":\"0\",\"suffix\":\"\",\"verifypeer\":\"1\",\"user_blacklist\":\"\"}','','',0,'0000-00-00 00:00:00',1,0),(401,'plg_authentication_joomla','plugin','joomla','authentication',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_authentication_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_AUTH_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(402,'plg_authentication_ldap','plugin','ldap','authentication',0,0,1,0,'{\"legacy\":false,\"name\":\"plg_authentication_ldap\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_LDAP_XML_DESCRIPTION\",\"group\":\"\"}','{\"host\":\"\",\"port\":\"389\",\"use_ldapV3\":\"0\",\"negotiate_tls\":\"0\",\"no_referrals\":\"0\",\"auth_method\":\"bind\",\"base_dn\":\"\",\"search_string\":\"\",\"users_dn\":\"\",\"username\":\"admin\",\"password\":\"bobby7\",\"ldap_fullname\":\"fullName\",\"ldap_email\":\"mail\",\"ldap_uid\":\"uid\"}','','',0,'0000-00-00 00:00:00',3,0),(404,'plg_content_emailcloak','plugin','emailcloak','content',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_content_emailcloak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION\",\"group\":\"\"}','{\"mode\":\"1\"}','','',0,'0000-00-00 00:00:00',1,0),(405,'plg_content_geshi','plugin','geshi','content',0,0,1,0,'{\"legacy\":false,\"name\":\"plg_content_geshi\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"qbnz.com\\/highlighter\",\"version\":\"2.5.0\",\"description\":\"PLG_CONTENT_GESHI_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',2,0),(406,'plg_content_loadmodule','plugin','loadmodule','content',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_content_loadmodule\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_LOADMODULE_XML_DESCRIPTION\",\"group\":\"\"}','{\"style\":\"xhtml\"}','','',0,'2011-09-18 15:22:50',0,0),(407,'plg_content_pagebreak','plugin','pagebreak','content',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_content_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\"}','{\"title\":\"1\",\"multipage_toc\":\"1\",\"showall\":\"1\"}','','',0,'0000-00-00 00:00:00',4,0),(408,'plg_content_pagenavigation','plugin','pagenavigation','content',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_content_pagenavigation\",\"type\":\"plugin\",\"creationDate\":\"January 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_PAGENAVIGATION_XML_DESCRIPTION\",\"group\":\"\"}','{\"position\":\"1\"}','','',0,'0000-00-00 00:00:00',5,0),(409,'plg_content_vote','plugin','vote','content',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_content_vote\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_VOTE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',6,0),(410,'plg_editors_codemirror','plugin','codemirror','editors',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_editors_codemirror\",\"type\":\"plugin\",\"creationDate\":\"28 March 2011\",\"author\":\"Marijn Haverbeke\",\"copyright\":\"\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"PLG_CODEMIRROR_XML_DESCRIPTION\",\"group\":\"\"}','{\"linenumbers\":\"0\",\"tabmode\":\"indent\"}','','',0,'0000-00-00 00:00:00',1,0),(411,'plg_editors_none','plugin','none','editors',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_editors_none\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Unknown\",\"copyright\":\"\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"\",\"version\":\"2.5.0\",\"description\":\"PLG_NONE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',2,0),(412,'plg_editors_tinymce','plugin','tinymce','editors',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_editors_tinymce\",\"type\":\"plugin\",\"creationDate\":\"2005-2013\",\"author\":\"Moxiecode Systems AB\",\"copyright\":\"Moxiecode Systems AB\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"tinymce.moxiecode.com\\/\",\"version\":\"3.5.4.1\",\"description\":\"PLG_TINY_XML_DESCRIPTION\",\"group\":\"\"}','{\"mode\":\"2\",\"skin\":\"0\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"lang_code\":\"en\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"extended_elements\":\"\",\"toolbar\":\"top\",\"toolbar_align\":\"left\",\"html_height\":\"550\",\"html_width\":\"750\",\"resizing\":\"true\",\"resize_horizontal\":\"false\",\"element_path\":\"1\",\"fonts\":\"1\",\"paste\":\"1\",\"searchreplace\":\"1\",\"insertdate\":\"1\",\"format_date\":\"%Y-%m-%d\",\"inserttime\":\"1\",\"format_time\":\"%H:%M:%S\",\"colors\":\"1\",\"table\":\"1\",\"smilies\":\"1\",\"media\":\"1\",\"hr\":\"1\",\"directionality\":\"1\",\"fullscreen\":\"1\",\"style\":\"1\",\"layer\":\"1\",\"xhtmlxtras\":\"1\",\"visualchars\":\"1\",\"visualblocks\":\"1\",\"nonbreaking\":\"1\",\"template\":\"1\",\"blockquote\":\"1\",\"wordcount\":\"1\",\"advimage\":\"1\",\"advlink\":\"1\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"inlinepopups\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"}','','',0,'0000-00-00 00:00:00',3,0),(413,'plg_editors-xtd_article','plugin','article','editors-xtd',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_editors-xtd_article\",\"type\":\"plugin\",\"creationDate\":\"October 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_ARTICLE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',1,0),(414,'plg_editors-xtd_image','plugin','image','editors-xtd',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_editors-xtd_image\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_IMAGE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',2,0),(415,'plg_editors-xtd_pagebreak','plugin','pagebreak','editors-xtd',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_editors-xtd_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',3,0),(416,'plg_editors-xtd_readmore','plugin','readmore','editors-xtd',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_editors-xtd_readmore\",\"type\":\"plugin\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_READMORE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',4,0),(417,'plg_search_categories','plugin','categories','search',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_search_categories\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(418,'plg_search_contacts','plugin','contacts','search',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_search_contacts\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SEARCH_CONTACTS_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(419,'plg_search_content','plugin','content','search',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_search_content\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SEARCH_CONTENT_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(420,'plg_search_newsfeeds','plugin','newsfeeds','search',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_search_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(421,'plg_search_weblinks','plugin','weblinks','search',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_search_weblinks\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SEARCH_WEBLINKS_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(422,'plg_system_languagefilter','plugin','languagefilter','system',0,0,1,1,'{\"legacy\":false,\"name\":\"plg_system_languagefilter\",\"type\":\"plugin\",\"creationDate\":\"July 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',1,0),(423,'plg_system_p3p','plugin','p3p','system',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_system_p3p\",\"type\":\"plugin\",\"creationDate\":\"September 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_P3P_XML_DESCRIPTION\",\"group\":\"\"}','{\"headers\":\"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM\"}','','',0,'0000-00-00 00:00:00',2,0),(424,'plg_system_cache','plugin','cache','system',0,0,1,1,'{\"legacy\":false,\"name\":\"plg_system_cache\",\"type\":\"plugin\",\"creationDate\":\"February 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_CACHE_XML_DESCRIPTION\",\"group\":\"\"}','{\"browsercache\":\"0\",\"cachetime\":\"15\"}','','',0,'0000-00-00 00:00:00',9,0),(425,'plg_system_debug','plugin','debug','system',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_system_debug\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_DEBUG_XML_DESCRIPTION\",\"group\":\"\"}','{\"profile\":\"1\",\"queries\":\"1\",\"memory\":\"1\",\"language_files\":\"1\",\"language_strings\":\"1\",\"strip-first\":\"1\",\"strip-prefix\":\"\",\"strip-suffix\":\"\"}','','',0,'0000-00-00 00:00:00',4,0),(426,'plg_system_log','plugin','log','system',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_system_log\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_LOG_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',5,0),(427,'plg_system_redirect','plugin','redirect','system',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_system_redirect\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_REDIRECT_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',6,0),(428,'plg_system_remember','plugin','remember','system',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_system_remember\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_REMEMBER_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',7,0),(429,'plg_system_sef','plugin','sef','system',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_system_sef\",\"type\":\"plugin\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SEF_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',8,0),(430,'plg_system_logout','plugin','logout','system',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_system_logout\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',3,0),(431,'plg_user_contactcreator','plugin','contactcreator','user',0,0,1,1,'{\"legacy\":false,\"name\":\"plg_user_contactcreator\",\"type\":\"plugin\",\"creationDate\":\"August 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_CONTACTCREATOR_XML_DESCRIPTION\",\"group\":\"\"}','{\"autowebpage\":\"\",\"category\":\"34\",\"autopublish\":\"0\"}','','',0,'0000-00-00 00:00:00',1,0),(432,'plg_user_joomla','plugin','joomla','user',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_user_joomla\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2009 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_USER_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','{\"autoregister\":\"1\"}','','',0,'0000-00-00 00:00:00',2,0),(433,'plg_user_profile','plugin','profile','user',0,0,1,1,'{\"legacy\":false,\"name\":\"plg_user_profile\",\"type\":\"plugin\",\"creationDate\":\"January 2008\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_USER_PROFILE_XML_DESCRIPTION\",\"group\":\"\"}','{\"register-require_address1\":\"1\",\"register-require_address2\":\"1\",\"register-require_city\":\"1\",\"register-require_region\":\"1\",\"register-require_country\":\"1\",\"register-require_postal_code\":\"1\",\"register-require_phone\":\"1\",\"register-require_website\":\"1\",\"register-require_favoritebook\":\"1\",\"register-require_aboutme\":\"1\",\"register-require_tos\":\"1\",\"register-require_dob\":\"1\",\"profile-require_address1\":\"1\",\"profile-require_address2\":\"1\",\"profile-require_city\":\"1\",\"profile-require_region\":\"1\",\"profile-require_country\":\"1\",\"profile-require_postal_code\":\"1\",\"profile-require_phone\":\"1\",\"profile-require_website\":\"1\",\"profile-require_favoritebook\":\"1\",\"profile-require_aboutme\":\"1\",\"profile-require_tos\":\"1\",\"profile-require_dob\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(434,'plg_extension_joomla','plugin','joomla','extension',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_extension_joomla\",\"type\":\"plugin\",\"creationDate\":\"May 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',1,0),(435,'plg_content_joomla','plugin','joomla','content',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_content_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_CONTENT_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(436,'plg_system_languagecode','plugin','languagecode','system',0,0,1,0,'{\"legacy\":false,\"name\":\"plg_system_languagecode\",\"type\":\"plugin\",\"creationDate\":\"November 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',10,0),(437,'plg_quickicon_joomlaupdate','plugin','joomlaupdate','quickicon',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_quickicon_joomlaupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(438,'plg_quickicon_extensionupdate','plugin','extensionupdate','quickicon',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_quickicon_extensionupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(439,'plg_captcha_recaptcha','plugin','recaptcha','captcha',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_captcha_recaptcha\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION\",\"group\":\"\"}','{\"public_key\":\"\",\"private_key\":\"\",\"theme\":\"clean\"}','','',0,'0000-00-00 00:00:00',0,0),(440,'plg_system_highlight','plugin','highlight','system',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_system_highlight\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',7,0),(441,'plg_content_finder','plugin','finder','content',0,0,1,0,'{\"legacy\":false,\"name\":\"plg_content_finder\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_CONTENT_FINDER_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(442,'plg_finder_categories','plugin','categories','finder',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_finder_categories\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_FINDER_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',1,0),(443,'plg_finder_contacts','plugin','contacts','finder',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_finder_contacts\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_FINDER_CONTACTS_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',2,0),(444,'plg_finder_content','plugin','content','finder',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_finder_content\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_FINDER_CONTENT_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',3,0),(445,'plg_finder_newsfeeds','plugin','newsfeeds','finder',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_finder_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',4,0),(446,'plg_finder_weblinks','plugin','weblinks','finder',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_finder_weblinks\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_FINDER_WEBLINKS_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',5,0),(500,'atomic','template','atomic','',0,1,1,0,'{\"legacy\":false,\"name\":\"atomic\",\"type\":\"template\",\"creationDate\":\"10\\/10\\/09\",\"author\":\"Ron Severdia\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"contact@kontentdesign.com\",\"authorUrl\":\"http:\\/\\/www.kontentdesign.com\",\"version\":\"2.5.0\",\"description\":\"TPL_ATOMIC_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(502,'bluestork','template','bluestork','',1,1,1,0,'{\"legacy\":false,\"name\":\"bluestork\",\"type\":\"template\",\"creationDate\":\"07\\/02\\/09\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"TPL_BLUESTORK_XML_DESCRIPTION\",\"group\":\"\"}','{\"useRoundedCorners\":\"1\",\"showSiteName\":\"0\",\"textBig\":\"0\",\"highContrast\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(503,'beez_20','template','beez_20','',0,1,1,0,'{\"legacy\":false,\"name\":\"beez_20\",\"type\":\"template\",\"creationDate\":\"25 November 2009\",\"author\":\"Angie Radtke\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"a.radtke@derauftritt.de\",\"authorUrl\":\"http:\\/\\/www.der-auftritt.de\",\"version\":\"2.5.0\",\"description\":\"TPL_BEEZ2_XML_DESCRIPTION\",\"group\":\"\"}','{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"sitetitle\":\"\",\"sitedescription\":\"\",\"navposition\":\"center\",\"templatecolor\":\"nature\"}','','',0,'0000-00-00 00:00:00',0,0),(504,'hathor','template','hathor','',1,1,1,0,'{\"legacy\":false,\"name\":\"hathor\",\"type\":\"template\",\"creationDate\":\"May 2010\",\"author\":\"Andrea Tarr\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"hathor@tarrconsulting.com\",\"authorUrl\":\"http:\\/\\/www.tarrconsulting.com\",\"version\":\"2.5.0\",\"description\":\"TPL_HATHOR_XML_DESCRIPTION\",\"group\":\"\"}','{\"showSiteName\":\"0\",\"colourChoice\":\"0\",\"boldText\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(505,'beez5','template','beez5','',0,1,1,0,'{\"legacy\":false,\"name\":\"beez5\",\"type\":\"template\",\"creationDate\":\"21 May 2010\",\"author\":\"Angie Radtke\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"a.radtke@derauftritt.de\",\"authorUrl\":\"http:\\/\\/www.der-auftritt.de\",\"version\":\"2.5.0\",\"description\":\"TPL_BEEZ5_XML_DESCRIPTION\",\"group\":\"\"}','{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"sitetitle\":\"\",\"sitedescription\":\"\",\"navposition\":\"center\",\"html5\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(600,'English (United Kingdom)','language','en-GB','',0,1,1,0,'{\"legacy\":false,\"name\":\"English (United Kingdom)\",\"type\":\"language\",\"creationDate\":\"2008-03-15\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.19\",\"description\":\"en-GB site language\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(601,'English (United Kingdom)','language','en-GB','',1,1,1,0,'{\"legacy\":false,\"name\":\"English (United Kingdom)\",\"type\":\"language\",\"creationDate\":\"2008-03-15\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.19\",\"description\":\"en-GB administrator language\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(700,'files_joomla','file','joomla','',0,1,1,1,'{\"legacy\":false,\"name\":\"files_joomla\",\"type\":\"file\",\"creationDate\":\"June 2014\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.22\",\"description\":\"FILES_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(800,'PKG_JOOMLA','package','pkg_joomla','',0,1,1,1,'{\"legacy\":false,\"name\":\"PKG_JOOMLA\",\"type\":\"package\",\"creationDate\":\"2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"http:\\/\\/www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PKG_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10000,'Russian','language','ru-RU','',1,1,1,0,'{\"legacy\":false,\"name\":\"Russian\",\"type\":\"language\",\"creationDate\":\"2012-06-20\",\"author\":\"Russian Translation Team\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved\",\"authorEmail\":\"smart@joomlaportal.ru\",\"authorUrl\":\"www.joomlaportal.ru\",\"version\":\"2.5.6.1\",\"description\":\"Russian language pack (administrator) for Joomla! 2.5\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10001,'Russian','language','ru-RU','',0,1,1,0,'{\"legacy\":false,\"name\":\"Russian\",\"type\":\"language\",\"creationDate\":\"2012-06-20\",\"author\":\"Russian Translation Team\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved\",\"authorEmail\":\"smart@joomlaportal.ru\",\"authorUrl\":\"www.joomlaportal.ru\",\"version\":\"2.5.6.1\",\"description\":\"Russian language pack (site) for Joomla! 2.5\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10002,'virtuemart','component','com_virtuemart','',1,1,0,0,'{\"legacy\":true,\"name\":\"VIRTUEMART\",\"type\":\"component\",\"creationDate\":\"March 17 2013\",\"author\":\"The VirtueMart Development Team\",\"copyright\":\"Copyright (C) 2004-2012 Virtuemart Team. All rights reserved.\",\"authorEmail\":\"max|at|virtuemart.net\",\"authorUrl\":\"http:\\/\\/www.virtuemart.net\",\"version\":\"2.0.20b\",\"description\":\"\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10003,'virtuemart_allinone','component','com_virtuemart_allinone','',1,1,0,0,'{\"legacy\":true,\"name\":\"VirtueMart_allinone\",\"type\":\"component\",\"creationDate\":\"May 29 2014\",\"author\":\"The VirtueMart Development Team\",\"copyright\":\"Copyright (C) 2004-2013 Virtuemart Team. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/www.virtuemart.net\",\"version\":\"2.6.6\",\"description\":\"\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10004,'Standard','plugin','standard','vmpayment',0,1,1,0,'{\"legacy\":true,\"name\":\"VMPAYMENT_STANDARD\",\"type\":\"plugin\",\"creationDate\":\"March 17 2013\",\"author\":\"The VirtueMart Development Team\",\"copyright\":\"Copyright (C) 2004-2012 Virtuemart Team. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/www.virtuemart.net\",\"version\":\"2.0.20b\",\"description\":\"Standard payment plugin\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10005,'Paypal','plugin','paypal','vmpayment',0,1,1,0,'{\"legacy\":true,\"name\":\"VMPAYMENT_PAYPAL\",\"type\":\"plugin\",\"creationDate\":\"March 17 2013\",\"author\":\"The VirtueMart Development Team\",\"copyright\":\"Copyright (C) 2004-2012 Virtuemart Team. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/www.virtuemart.net\",\"version\":\"2.0.20b\",\"description\":\"<a href=\\\"http:\\/\\/paypal.com\\\" target=\\\"_blank\\\">PayPal<\\/a> is a popular\\n\\tpayment provider and available in many countries. \\n    \",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10006,'PayZen','plugin','payzen','vmpayment',0,1,1,0,'{\"legacy\":true,\"name\":\"VM - Payment, PayZen\",\"type\":\"plugin\",\"creationDate\":\"July 04 2012\",\"author\":\"Lyra Network\",\"copyright\":\"Copyright Lyra Network.\",\"authorEmail\":\"support@payzen.eu\",\"authorUrl\":\"http:\\/\\/www.lyra-network.com\",\"version\":\"2.0.8c\",\"description\":\"\\n    \\t<a href=\\\"http:\\/\\/www.lyra-network.com\\\" target=\\\"_blank\\\">PayZen<\\/a> is a multi bank payment provider. \\n    \",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10007,'SystemPay','plugin','systempay','vmpayment',0,1,1,0,'{\"legacy\":true,\"name\":\"VM - Payment, Systempay\",\"type\":\"plugin\",\"creationDate\":\"July 04 2012\",\"author\":\"Lyra Network\",\"copyright\":\"Copyright Lyra Network.\",\"authorEmail\":\"supportvad@lyra-network.com\",\"authorUrl\":\"http:\\/\\/www.lyra-network.com\",\"version\":\"2.0.8c\",\"description\":\"\\n    \\t<a href=\\\"http:\\/\\/www.lyra-network.com\\\" target=\\\"_blank\\\">Systempay<\\/a> is a multi bank payment provider. \\n    \",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10008,'Moneybookers Credit Cards','plugin','moneybookers_acc','vmpayment',0,1,1,0,'{\"legacy\":true,\"name\":\"Vm Payment plugin Moneybookers Credit Cards\",\"type\":\"plugin\",\"creationDate\":\"April 2012\",\"author\":\"Skrill Holdings Limited\",\"copyright\":\"Copyright (C) 2012 Skrill.\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/www.skrill.com\",\"version\":\"2.0.6\",\"description\":\"<a href=\\\"http:\\/\\/www.skrill.com\\\" target=\\\"_blank\\\">Moneybookers<\\/a> is a popular\\n\\tpayment provider authorised by the Financial Services Authority of the United Kingdom (FSA). \\n    \",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10009,'Moneybookers Lastschrift','plugin','moneybookers_did','vmpayment',0,1,1,0,'{\"legacy\":true,\"name\":\"Vm Payment plugin Moneybookers Lastschrift\",\"type\":\"plugin\",\"creationDate\":\"April 2012\",\"author\":\"Skrill Holdings Limited\",\"copyright\":\"Copyright (C) 2012 Skrill.\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/www.skrill.com\",\"version\":\"2.0.6\",\"description\":\"<a href=\\\"http:\\/\\/www.skrill.com\\\" target=\\\"_blank\\\">Moneybookers<\\/a> is a popular\\n\\tpayment provider authorised by the Financial Services Authority of the United Kingdom (FSA). \\n    \",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10010,'Moneybookers iDeal','plugin','moneybookers_idl','vmpayment',0,1,1,0,'{\"legacy\":true,\"name\":\"Vm Payment plugin Moneybookers iDeal\",\"type\":\"plugin\",\"creationDate\":\"April 2012\",\"author\":\"Skrill Holdings Limited\",\"copyright\":\"Copyright (C) 2012 Skrill.\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/www.skrill.com\",\"version\":\"2.0.6\",\"description\":\"<a href=\\\"http:\\/\\/www.skrill.com\\\" target=\\\"_blank\\\">Moneybookers<\\/a> is a popular\\n\\tpayment provider authorised by the Financial Services Authority of the United Kingdom (FSA). \\n    \",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10011,'Moneybookers Giropay','plugin','moneybookers_gir','vmpayment',0,1,1,0,'{\"legacy\":true,\"name\":\"Vm Payment plugin Moneybookers Giropay\",\"type\":\"plugin\",\"creationDate\":\"April 2012\",\"author\":\"Skrill Holdings Limited\",\"copyright\":\"Copyright (C) 2012 Skrill.\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/www.skrill.com\",\"version\":\"2.0.6\",\"description\":\"<a href=\\\"http:\\/\\/www.skrill.com\\\" target=\\\"_blank\\\">Moneybookers<\\/a> is a popular\\n\\tpayment provider authorised by the Financial Services Authority of the United Kingdom (FSA). \\n    \",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10012,'Moneybookers Sofortueberweisung','plugin','moneybookers_sft','vmpayment',0,1,1,0,'{\"legacy\":true,\"name\":\"Vm Payment plugin Moneybookers Sofortueberweisung\",\"type\":\"plugin\",\"creationDate\":\"April 2012\",\"author\":\"Skrill Holdings Limited\",\"copyright\":\"Copyright (C) 2012 Skrill.\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/www.skrill.com\",\"version\":\"2.0.6\",\"description\":\"<a href=\\\"http:\\/\\/www.skrill.com\\\" target=\\\"_blank\\\">Moneybookers<\\/a> is a popular\\n\\tpayment provider authorised by the Financial Services Authority of the United Kingdom (FSA). \\n    \",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10013,'Moneybookers Przelewy24','plugin','moneybookers_pwy','vmpayment',0,1,1,0,'{\"legacy\":true,\"name\":\"Vm Payment plugin Moneybookers Przelewy24\",\"type\":\"plugin\",\"creationDate\":\"April 2012\",\"author\":\"Skrill Holdings Limited\",\"copyright\":\"Copyright (C) 2012 Skrill.\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/www.skrill.com\",\"version\":\"2.0.6\",\"description\":\"<a href=\\\"http:\\/\\/www.skrill.com\\\" target=\\\"_blank\\\">Moneybookers<\\/a> is a popular\\n\\tpayment provider authorised by the Financial Services Authority of the United Kingdom (FSA). \\n    \",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10014,'Moneybookers Online Bank Transfer','plugin','moneybookers_obt','vmpayment',0,1,1,0,'{\"legacy\":true,\"name\":\"Vm Payment plugin Moneybookers Bank Transfer\",\"type\":\"plugin\",\"creationDate\":\"April 2012\",\"author\":\"Skrill Holdings Limited\",\"copyright\":\"Copyright (C) 2012 Skrill.\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/www.skrill.com\",\"version\":\"2.0.6\",\"description\":\"<a href=\\\"http:\\/\\/www.skrill.com\\\" target=\\\"_blank\\\">Moneybookers<\\/a> is a popular\\n\\tpayment provider authorised by the Financial Services Authority of the United Kingdom (FSA). \\n    \",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10015,'Moneybookers Skrill Digital Wallet','plugin','moneybookers_wlt','vmpayment',0,1,1,0,'{\"legacy\":true,\"name\":\"Vm Payment plugin Moneybookers Digital Wallet\",\"type\":\"plugin\",\"creationDate\":\"April 2012\",\"author\":\"Skrill Holdings Limited\",\"copyright\":\"Copyright (C) 2012 Skrill.\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/www.skrill.com\",\"version\":\"2.0.6\",\"description\":\"<a href=\\\"http:\\/\\/www.skrill.com\\\" target=\\\"_blank\\\">Moneybookers<\\/a> is a popular\\n\\tpayment provider authorised by the Financial Services Authority of the United Kingdom (FSA). \\n    \",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10016,'Authorize.net','plugin','authorizenet','vmpayment',0,1,1,0,'{\"legacy\":true,\"name\":\"VM Payment - authorize.net AIM\",\"type\":\"plugin\",\"creationDate\":\"March 17 2013\",\"author\":\"The VirtueMart Development Team\",\"copyright\":\"Copyright (C) 2004-2011 Virtuemart Team. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/www.virtuemart.net\",\"version\":\"2.0.20b\",\"description\":\"\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10017,'Klarna','plugin','klarna','vmpayment',0,1,1,0,'{\"legacy\":true,\"name\":\"VM - Payment, Klarna\",\"type\":\"plugin\",\"creationDate\":\"March 17 2013\",\"author\":\"The VirtueMart Development Team\",\"copyright\":\"Copyright (C) 2004-2012 Virtuemart Team. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/www.virtuemart.net\",\"version\":\"2.0.20b\",\"description\":\"VMPAYMENT_KLARNA_CONF_PLUGIN_DESC\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10018,'Heidelpay','plugin','heidelpay','vmpayment',0,1,1,0,'{\"legacy\":false,\"name\":\"VMPAYMENT_HEIDELPAY\",\"type\":\"plugin\",\"creationDate\":\"12-Sep-2012\",\"author\":\"Heidelberger Payment GmbH\",\"copyright\":\"Copyright Heidelberger Payment GmbH\",\"authorEmail\":\"info@heidelpay.de\",\"authorUrl\":\"http:\\/\\/www.heidelpay.de\",\"version\":\"12.09\",\"description\":\"<h2>Virtuemart Plugin von:<\\/h2><p><a href=\\\"http:\\/\\/www.Heidelpay.de\\\" target=\\\"_blank\\\"><img src=\\\"http:\\/\\/www.heidelpay.de\\/gfx\\/logo.gif\\\" style=\\\"margin-right:20px;\\\"\\/><\\/a><\\/p> \",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10019,'By weight, ZIP and countries','plugin','weight_countries','vmshipment',0,1,1,0,'{\"legacy\":true,\"name\":\"VMSHIPMENT_WEIGHT_COUNTRIES\",\"type\":\"plugin\",\"creationDate\":\"March 17 2013\",\"author\":\"The VirtueMart Development Team\",\"copyright\":\"Copyright (C) 2004-2012 Virtuemart Team. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/www.virtuemart.net\",\"version\":\"2.0.20b\",\"description\":\"VMSHIPMENT_WEIGHT_COUNTRIES_PLUGIN_DESC\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10020,'Customer text input','plugin','textinput','vmcustom',0,1,1,0,'{\"legacy\":true,\"name\":\"VMCustom - textinput\",\"type\":\"plugin\",\"creationDate\":\"March 17 2013\",\"author\":\"The VirtueMart Development Team\",\"copyright\":\"Copyright (C) 2004-2012 Virtuemart Team. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/www.virtuemart.net\",\"version\":\"2.0.20b\",\"description\":\"text input plugin for product\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10021,'Product specification','plugin','specification','vmcustom',0,1,1,0,'{\"legacy\":true,\"name\":\"VMCustom - specification\",\"type\":\"plugin\",\"creationDate\":\"March 17 2013\",\"author\":\"The VirtueMart Development Team\",\"copyright\":\"Copyright (C) 2004-2012 Virtuemart Team. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/www.virtuemart.net\",\"version\":\"2.0.20b\",\"description\":\"text input plugin for product\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10022,'Stockable variants','plugin','stockable','vmcustom',0,1,1,0,'{\"legacy\":true,\"name\":\"VMCUSTOM_STOCKABLE\",\"type\":\"plugin\",\"creationDate\":\"March 17 2013\",\"author\":\"The VirtueMart Development Team\",\"copyright\":\"Copyright (C) 2004-2012 Virtuemart Team. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/www.virtuemart.net\",\"version\":\"2.0.20b\",\"description\":\"VMCUSTOM_STOCKABLE_DESC\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10023,'Avalara Tax','plugin','avalara','vmcalculation',0,0,1,0,'{\"legacy\":true,\"name\":\"VM - Calculation Avalara Tax\",\"type\":\"plugin\",\"creationDate\":\"February 2013\",\"author\":\"Max Milbers\",\"copyright\":\"Copyright (C) 2013 iStraxx UG (haftungsbeschr\\u00e4nkt). All rights reserved\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/virtuemart.net\",\"version\":\"2.0.18b\",\"description\":\"On demand tax calculation for whole U.S.A.\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10024,'Virtuemart Product','plugin','virtuemart','search',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_search_virtuemart\",\"type\":\"plugin\",\"creationDate\":\"March 17 2013\",\"author\":\"The VirtueMart Development Team\",\"copyright\":\"Copyright (C) 2004-2012 Virtuemart Team. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/www.virtuemart.net\",\"version\":\"2.0.20b\",\"description\":\"Allows Searching of VirtueMart Component\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10025,'mod_virtuemart_currencies','module','mod_virtuemart_currencies','',0,1,1,0,'{\"legacy\":true,\"name\":\"mod_virtuemart_currencies\",\"type\":\"module\",\"creationDate\":\"March 17 2013\",\"author\":\"The VirtueMart Development Team\",\"copyright\":\"Copyright (C) 2004-2012 Virtuemart Team. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/www.virtuemart.net\",\"version\":\"2.0.20b\",\"description\":\"MOD_VIRTUEMART_CURRENCIES_DESC\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',4,0),(10026,'mod_virtuemart_product','module','mod_virtuemart_product','',0,1,1,0,'{\"legacy\":true,\"name\":\"mod_virtuemart_product\",\"type\":\"module\",\"creationDate\":\"March 17 2013\",\"author\":\"The VirtueMart Development Team\",\"copyright\":\"Copyright (C) 2004-2012 Virtuemart Team. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/www.virtuemart.net\",\"version\":\"2.0.20b\",\"description\":\"MOD_VIRTUEMART_PRODUCT_DESC\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',3,0),(10027,'mod_virtuemart_search','module','mod_virtuemart_search','',0,1,1,0,'{\"legacy\":true,\"name\":\"mod_virtuemart_search\",\"type\":\"module\",\"creationDate\":\"March 17 2013\",\"author\":\"The VirtueMart Development Team\",\"copyright\":\"Copyright (C) 2004-2012 Virtuemart Team. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/www.virtuemart.net\",\"version\":\"2.0.20b\",\"description\":\"MOD_VIRTUEMART_SEARCH_DESC\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',2,0),(10028,'mod_virtuemart_manufacturer','module','mod_virtuemart_manufacturer','',0,1,1,0,'{\"legacy\":true,\"name\":\"mod_virtuemart_manufacturer\",\"type\":\"module\",\"creationDate\":\"March 17 2013\",\"author\":\"The VirtueMart Development Team\",\"copyright\":\"Copyright (C) 2004-2012 Virtuemart Team. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/www.virtuemart.net\",\"version\":\"2.0.20b\",\"description\":\"MOD_VIRTUEMART_MANUFACTURER_DESC\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',5,0),(10029,'mod_virtuemart_cart','module','mod_virtuemart_cart','',0,1,1,0,'{\"legacy\":true,\"name\":\"VirtueMart Shopping Cart\",\"type\":\"module\",\"creationDate\":\"March 17 2013\",\"author\":\"The VirtueMart Development Team\",\"copyright\":\"Copyright (C) 2004-2012 Virtuemart Team. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/www.virtuemart.net\",\"version\":\"2.0.20b\",\"description\":\"MOD_VIRTUEMART_CART_DESC\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10030,'mod_virtuemart_category','module','mod_virtuemart_category','',0,1,1,0,'{\"legacy\":true,\"name\":\"mod_virtuemart_category\",\"type\":\"module\",\"creationDate\":\"March 17 2013\",\"author\":\"The VirtueMart Development Team\",\"copyright\":\"Copyright (C) 2004-2012 Virtuemart Team. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/www.virtuemart.net\",\"version\":\"2.0.20b\",\"description\":\"MOD_VIRTUEMART_CATEGORY_DESC\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',6,0),(10031,'VM Payment - KlarnaCheckout','plugin','klarnacheckout','vmpayment',0,0,1,0,'{\"legacy\":false,\"name\":\"Klarna Checkout\",\"type\":\"plugin\",\"creationDate\":\"May 29 2014\",\"author\":\"The VirtueMart Development Team\",\"copyright\":\"Copyright (C) 2004-2014 Virtuemart Team. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/www.virtuemart.net\",\"version\":\"2.6.6\",\"description\":\"\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10032,'VM Payment - Sofort Banking/Überweisung','plugin','sofort','vmpayment',0,0,1,0,'{\"legacy\":false,\"name\":\"Sofort\",\"type\":\"plugin\",\"creationDate\":\"May 29 2014\",\"author\":\"The VirtueMart Development Team\",\"copyright\":\"Copyright (C) 2004-2014 Virtuemart Team. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/www.virtuemart.net\",\"version\":\"2.6.6\",\"description\":\"<a href=\\\"http:\\/www.sofort.com\\\" target=\\\"_blank\\\">Sofort<\\/a> is a popular\\n\\tpayment provider and available in many countries. \\n    \",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10033,'VM Payment - Paybox','plugin','paybox','vmpayment',0,0,1,0,'{\"legacy\":false,\"name\":\"VM Payment - Paybox\",\"type\":\"plugin\",\"creationDate\":\"May 29 2014\",\"author\":\"The VirtueMart Development Team\",\"copyright\":\"Copyright (C) 2004-2014 Virtuemart Team. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/www.virtuemart.net\",\"version\":\"2.6.6\",\"description\":\"<a href=\\\"http:\\/\\/paybox.com\\\" target=\\\"_blank\\\">Paybox<\\/a> \\n    \",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10034,'VM Payment - Moneybookers','plugin','moneybookers','vmpayment',0,0,1,0,'{\"legacy\":false,\"name\":\"Moneybookers\",\"type\":\"plugin\",\"creationDate\":\"April 2012\",\"author\":\"Skrill Holdings Limited\",\"copyright\":\"Copyright (C) 2012 Skrill.\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/www.skrill.com\",\"version\":\"2.6.6\",\"description\":\"<a href=\\\"http:\\/\\/www.skrill.com\\\" target=\\\"_blank\\\">Moneybookers<\\/a> is a popular\\n\\tpayment provider authorised by the Financial Services Authority of the United Kingdom (FSA). \\n    \",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10035,'VM Payment - Sofort iDeal','plugin','sofort_ideal','vmpayment',0,0,1,0,'{\"legacy\":false,\"name\":\"Sofort Ideal\",\"type\":\"plugin\",\"creationDate\":\"May 29 2014\",\"author\":\"The VirtueMart Development Team\",\"copyright\":\"Copyright (C) 2004-2014 Virtuemart Team. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/www.virtuemart.net\",\"version\":\"2.6.6\",\"description\":\"<a href=\\\"http:\\/www.sofort.com\\\" target=\\\"_blank\\\">Sofort<\\/a> is a popular\\n\\tpayment provider and available in many countries. \\n    \",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10036,'com_virtuemart - ru-RU','file','com_virtuemart-ru-RU','',0,1,0,0,'{\"legacy\":false,\"name\":\"com_virtuemart - ru-RU\",\"type\":\"file\",\"creationDate\":\"20.08.2013\",\"author\":\"VirtueMart language team\",\"copyright\":\"\\u00a9 2008-2013 - compojoom-com. All rights reserved!\",\"authorEmail\":\"max@virtuemart.net\",\"authorUrl\":\"https:\\/\\/virtuemart.net\",\"version\":\"2013-08-20-01-19-20\",\"description\":\"\\n        This package was auto generated with CTransifex(https:\\/\\/compojoom.com). We\'ve grabbed the latest language files for our extension from transifex.com.\\n        Special thanks to OpenTranslators (http:\\/\\/opentranslators.org) for helping us with this translation!\\n    \",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10037,'Virtuemart 2 multiple customfield plugin','plugin','param','vmcustom',0,0,1,0,'{\"legacy\":true,\"name\":\"Virtuemart 2 multiple customfield plugin\",\"type\":\"plugin\",\"creationDate\":\"2013.04.01\",\"author\":\"Usov Dima\",\"copyright\":\"Copyright (C) 2012-2013 usovdm\",\"authorEmail\":\"usovdm@gmail.com\",\"authorUrl\":\"http:\\/\\/myext.ru\",\"version\":\"2.0.5\",\"description\":\"PLG_VMCUSTOM_PARAM_XML_DESC\",\"group\":\"\"}','{\"mcf_key\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(10038,'Search (filter) module for Virtuemart 2 multiple customfield plugin','module','mod_virtuemart_param_filter','',0,1,0,0,'{\"legacy\":true,\"name\":\"Search (filter) module for Virtuemart 2 multiple customfield plugin\",\"type\":\"module\",\"creationDate\":\"2013.08.13\",\"author\":\"Usov Dima\",\"copyright\":\"Copyright (C) 2012-2013 usovdm\",\"authorEmail\":\"usovdm@gmail.com\",\"authorUrl\":\"http:\\/\\/myext.ru\",\"version\":\"2.0.6\",\"description\":\"mod_vmcustom_param_filter_xml_DESC\",\"group\":\"\"}','{\"layout\":\"default\",\"method\":\"get\",\"limit\":\"10\",\"parent_auto\":\"0\",\"stock\":\"0\",\"children\":\"-1\",\"show_all_count\":\"1\",\"mod_ajax\":\"1\",\"count_show\":\"1\",\"count_zero_show\":\"disable\",\"mod_ajax_div\":\"\",\"loader_img\":\"aload-black_on_white\",\"mcf_mod_uniq_display\":\"1\",\"mcf_mod_uniq_result\":\"0\",\"view_assign\":\"-1\",\"categories_show\":\"1\",\"in_active_category\":\"0\",\"active_category_id\":\"\",\"mcf_subcategories\":\"0\",\"mcf_only_subcategories\":\"0\",\"categories_heading\":\"\",\"categories_select_heading\":\"Choose category\",\"categories_layout\":\"checkbox\",\"manufacturers_show\":\"1\",\"manufacturers_heading\":\"\",\"manufacturers_select_heading\":\"Choose manufacturer\",\"mcf_body\":\"Z3ppbmZsYXRl;dVJta9swEP4rN+EFmyZOAmvZ\\/JJRtoyuUChrv4ymGMU6x2plyejFm1v63yc7GYOQfRHc3fM899zpdkJtqYCgto2YBi3VtCkMUl3WBWcmhYCpEvIJXH+jpVW6T5Id2q+qdA1KG0YecMyBHLgxaMOBOlsdlyOYTE6Q3uUwW8JnOE2CBKQTYugmdkVTVqOlW+F2XF6haFGPvvaJkHRN6YxVDZmSUYkMPj2reMbe23syShYMS8Uw\\/Ct46Gmi2eoATAF4Ff6j5dCw83BLDV58KFCO7N0Lw0pQiyF5au62P0hs3NZY\\/V\\/YIEFuSHx9e3l\\/Vdx9v1\\/HZE2iKJoupsuLyAfn7AsOiegV3lAYfIXANq13TbWm\\/bDxSukw4PkiDXiWf\\/Lv2ZkHe6+HtR8v7yHgj1E0yjw8eqGTgBTeTn7lwEr35+EjkjHegbG9wHxDKiXtzPAXTD4u3qcbsvqpHNS0Q6AglfQHwzs\\/NIMOteFKwq+alzUwblpBewOuBatguYB9R9BonLAmhssDE3rlNDSKOYFQo8YEMgq1xsp3r61tk\\/m86fG3jdFtCFiq\\/RH4UrEVVD57Qzf9eixmc7rK5t77isRkI\\/2Tcdk6C7Zvh0lqzhhKLyFpM8TDp3PJrc90VLghtVz4YO754y6GdWm0Tkuw2mH6Bw==;Y3JlYXRlX2Z1bmN0aW9u\",\"mcf_mod\":\"bxaisiexi6xi4xi_xdieicixoidxe\",\"manufacturers_layout\":\"auto\",\"price_show\":\"1\",\"price_heading\":\"\",\"price_discount\":\"0\",\"price_mcur\":\"0\",\"price_layout\":\"auto\",\"price_select_heading\":\"\",\"customfields_show\":\"1\",\"customfields_select_heading\":\"Choose some options\",\"customfields_layout\":\"auto\",\"moduleclass_sfx\":\"\",\"class_sfx\":\"\",\"mcf_jqueryui\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(10039,'imstyle','template','imstyle','',0,1,1,0,'{\"legacy\":false,\"name\":\"imstyle\",\"type\":\"template\",\"creationDate\":\"15\\/07\\/14\",\"author\":\"Konash Lena\",\"copyright\":\"\",\"authorEmail\":\"konash.lena@yandex.ru\",\"authorUrl\":\"\",\"version\":\"2.5.0\",\"description\":\"\\u0428\\u0430\\u0431\\u043b\\u043e\\u043d \\u0434\\u043b\\u044f \\u0441\\u0430\\u0439\\u0442\\u0430 IMStyle\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10040,'mod_virtuemart_randcatproduct','module','mod_virtuemart_randcatproduct','',0,1,0,0,'{\"legacy\":true,\"name\":\"mod_virtuemart_randcatproduct\",\"type\":\"module\",\"creationDate\":\"May 2013\",\"author\":\"Andrew Zahalski\",\"copyright\":\"Copyright (C) 2013 Andrew Zahalski. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/pusk.ws\",\"version\":\"1.2\",\"description\":\"\\u0412\\u044b\\u0432\\u043e\\u0434 \\u0442\\u043e\\u0432\\u0430\\u0440\\u043e\\u0432 \\u0438\\u0437 \\u043a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u0438 \\u0432 \\u0434\\u0435\\u0442\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u0432\\u0438\\u0434\",\"group\":\"\"}','{\"kol\":\"9\",\"kolstr\":\"3\",\"show_addcart\":\"1\",\"show_price\":\"1\",\"show_car\":\"0\",\"shirinastr\":\"654\",\"stepcarusel\":\"1\",\"show_jquery\":\"0\",\"category\":\"1\",\"vmmanufacturer_idn\":\"0\",\"stock\":\"1\",\"show_all\":\"1\",\"cur_product\":\"1\",\"cur_manufacturer\":\"0\",\"cache\":\"0\",\"moduleclass_sfx\":\"\",\"class_sfx\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(10041,'Sj Vm Extra Slider','module','mod_sj_vm_extraslider','',0,1,0,0,'{\"legacy\":false,\"name\":\"Sj Vm Extra Slider\",\"type\":\"module\",\"creationDate\":\"January 2012\",\"author\":\"YouTech Company\",\"copyright\":\"Copyright (c) 2012 YouTech Company\",\"authorEmail\":\"contact@ytcvn.com\",\"authorUrl\":\"http:\\/\\/www.smartaddons.com\",\"version\":\"2.5\",\"description\":\"SJ_XML_DESCRIPTION\",\"group\":\"\"}','{\"moduleclass_sfx\":\"\",\"theme\":\"basic1\",\"button_page\":\"\",\"item_link_target\":\"_self\",\"source_category\":\"\",\"subcategories\":\"0\",\"source_order\":\"group.topten\",\"source_limit\":\"20\",\"num_rows\":\"2\",\"num_cols\":\"3\",\"title_slider_display\":\"1\",\"title_slider\":\"Latest News\",\"item_title_display\":\"1\",\"item_title_linkable\":\"1\",\"item_title_max_characs\":\"25\",\"item_desc_display\":\"1\",\"item_desc_max_characs\":\"200\",\"item_description_striptags\":\"1\",\"item_description_keeptags\":\"\",\"item_price_display\":\"1\",\"item_readmore_display\":\"1\",\"item_readmore_text\":\"Readmore\",\"prenext_show\":\"1\",\"item_image_display\":\"1\",\"item_image_linkable\":\"1\",\"item_image_width\":\"200\",\"item_image_height\":\"250\",\"item_image_background\":\"#FFFFFF\",\"play\":\"0\",\"pause_hover\":\"1\",\"effect\":\"horizotal\",\"include_jquery\":\"1\",\"custom\":\"\",\"pretext\":\"\",\"posttext\":\"\",\"owncache\":\"1\",\"cache_time\":\"900\"}','','',0,'0000-00-00 00:00:00',0,0),(10042,'com_djimageslider','component','com_djimageslider','',1,1,0,0,'{\"legacy\":false,\"name\":\"com_djimageslider\",\"type\":\"component\",\"creationDate\":\"August 2012\",\"author\":\"DJ-Extensions.com\",\"copyright\":\"Copyright (C) 2012 DJ-Extensions.com, All rights reserved.\",\"authorEmail\":\"contact@dj-extensions.com\",\"authorUrl\":\"http:\\/\\/dj-extensions.com\",\"version\":\"2.0.1.stable\",\"description\":\"DJ-ImageSlider component\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10043,'DJ-ImageSlider','module','mod_djimageslider','',0,1,0,0,'{\"legacy\":false,\"name\":\"DJ-ImageSlider\",\"type\":\"module\",\"creationDate\":\"August 2012\",\"author\":\"DJ-Extensions.com\",\"copyright\":\"Copyright (C) 2012 DJ-Extensions.com, All rights reserved.\",\"authorEmail\":\"contact@dj-extensions.com\",\"authorUrl\":\"http:\\/\\/dj-extensions.com\",\"version\":\"2.0.3.stable\",\"description\":\"DJ-ImageSlider Module\",\"group\":\"\"}','{\"slider_source\":\"0\",\"slider_type\":\"0\",\"link_image\":\"1\",\"image_folder\":\"images\\/sampledata\\/fruitshop\",\"link\":\"\",\"show_title\":\"1\",\"show_desc\":\"1\",\"show_readmore\":\"0\",\"readmore_text\":\"\",\"link_title\":\"1\",\"link_desc\":\"0\",\"limit_desc\":\"\",\"image_width\":\"240\",\"image_height\":\"180\",\"fit_to\":\"0\",\"visible_images\":\"3\",\"space_between_images\":\"10\",\"max_images\":\"20\",\"sort_by\":\"1\",\"effect\":\"Cubic\",\"autoplay\":\"1\",\"show_buttons\":\"1\",\"show_arrows\":\"1\",\"show_custom_nav\":\"0\",\"desc_width\":\"\",\"desc_bottom\":\"0\",\"desc_horizontal\":\"0\",\"left_arrow\":\"\",\"right_arrow\":\"\",\"play_button\":\"\",\"pause_button\":\"\",\"arrows_top\":\"30\",\"arrows_horizontal\":\"5\",\"effect_type\":\"0\",\"duration\":\"\",\"delay\":\"\",\"preload\":\"800\",\"cache\":\"1\",\"cache_time\":\"900\"}','','',0,'0000-00-00 00:00:00',0,0),(10044,'dj-imageslider','package','pkg_dj-imageslider','',0,1,1,0,'{\"legacy\":false,\"name\":\"DJ-ImageSlider Package\",\"type\":\"package\",\"creationDate\":\"August 2012\",\"author\":\"DJ-Extensions.com\",\"copyright\":\"Copyright (C) 2012 DJ-Extensions.com, All rights reserved.\",\"authorEmail\":\"contact@dj-extensions.com\",\"authorUrl\":\"http:\\/\\/dj-extensions.com\",\"version\":\"2.0.3.stable\",\"description\":\"\\n\\t\\t<style> #right-text {font-family:Arial, Helvetica, sans-serif;\\tfont-size:11px;\\t} #right-text a:link, #right-text a:visited {color:#4991c1;font-weight:bold; font-size: 13px;} #right-text a:hover {text-decoration:underline;}\\t#right-text h2 {color:#fa9539;text-transform:uppercase;\\tfont-size:16px;\\tpadding:0;\\tmargin:2px 0;}\\t#right-text p {padding:0;margin:4px 0;}\\t#left-logo {float:left;width:270px;height:120px;display:block;} #left-logo img {margin: 40px 20px;} #right-text {float:left;width:400px;}<\\/style>\\n\\t\\n\\t\\t<div id=\\\"left-logo\\\">\\n\\t\\t\\t<a target=\\\"_blank\\\" href=\\\"http:\\/\\/dj-extensions.com\\\"><img src=\\\"http:\\/\\/new.dj-extensions.com\\/templates\\/dj-extensions\\/images\\/logo.png\\\" alt=\\\"DJ-Extensions.com\\\" \\/><\\/a>\\n\\t\\t<\\/div>\\n\\t\\t\\n\\t\\t<div id=\\\"right-text\\\">\\n\\t\\t\\t<h2>Thank you for installing DJ-ImageSlider!<\\/h2>\\n\\t\\t\\t<p>The DJ-ImageSlider extension allows you to display image slides with title and short description linked to any menu item, article or custom url address.<\\/p>\\n\\t\\t\\t<p>If you want to learn how to use DJ-ImageSlider please read <a target=\\\"_blank\\\" href=\\\"http:\\/\\/dj-extensions.com\\/documentation\\\">Documentation<\\/a> and search our <a target=\\\"_blank\\\" href=\\\"http:\\/\\/dj-extensions.com\\/forum\\\">Support Forum<\\/a><br \\/><br \\/>Check out our other extensions at <a target=\\\"_blank\\\" href=\\\"http:\\/\\/dj-extensions.com\\\">DJ-Extensions.com<\\/a><\\/p>\\n\\t\\t<\\/div>\\n\\t\\n\\t\\t\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10045,'com_xmap','component','com_xmap','',1,1,0,0,'{\"legacy\":false,\"name\":\"com_xmap\",\"type\":\"component\",\"creationDate\":\"2011-04-10\",\"author\":\"Guillermo Vargas\",\"copyright\":\"This component is released under the GNU\\/GPL License\",\"authorEmail\":\"guille@vargas.co.cr\",\"authorUrl\":\"http:\\/\\/www.jooxmap.com\",\"version\":\"2.3.4\",\"description\":\"Xmap - Sitemap Generator for Joomla!\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10046,'Xmap - Content Plugin','plugin','com_content','xmap',0,1,1,0,'{\"legacy\":false,\"name\":\"Xmap - Content Plugin\",\"type\":\"plugin\",\"creationDate\":\"01\\/26\\/2011\",\"author\":\"Guillermo Vargas\",\"copyright\":\"GNU GPL\",\"authorEmail\":\"guille@vargas.co.cr\",\"authorUrl\":\"joomla.vargas.co.cr\",\"version\":\"2.0.4\",\"description\":\"XMAP_CONTENT_PLUGIN_DESCRIPTION\",\"group\":\"\"}','{\"expand_categories\":\"1\",\"expand_featured\":\"1\",\"include_archived\":\"2\",\"show_unauth\":\"0\",\"add_pagebreaks\":\"1\",\"max_art\":\"0\",\"max_art_age\":\"0\",\"add_images\":\"1\",\"cat_priority\":\"-1\",\"cat_changefreq\":\"-1\",\"art_priority\":\"-1\",\"art_changefreq\":\"-1\",\"keywords\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(10047,'Xmap - Kunena Plugin','plugin','com_kunena','xmap',0,1,1,0,'{\"legacy\":false,\"name\":\"Xmap - Kunena Plugin\",\"type\":\"plugin\",\"creationDate\":\"September 2007\",\"author\":\"Guillermo Vargas\",\"copyright\":\"GNU GPL\",\"authorEmail\":\"guille@vargas.co.cr\",\"authorUrl\":\"joomla.vargas.co.cr\",\"version\":\"3.0.0\",\"description\":\"Xmap Plugin for Kunena component\",\"group\":\"\"}','{\"include_topics\":\"1\",\"max_topics\":\"\",\"max_age\":\"\",\"cat_priority\":\"-1\",\"cat_changefreq\":\"-1\",\"topic_priority\":\"-1\",\"topic_changefreq\":\"-1\"}','','',0,'0000-00-00 00:00:00',0,0),(10048,'Xmap - SobiPro Plugin','plugin','com_sobipro','xmap',0,1,1,0,'{\"legacy\":false,\"name\":\"Xmap - SobiPro Plugin\",\"type\":\"plugin\",\"creationDate\":\"07\\/15\\/2011\",\"author\":\"Guillermo Vargas\",\"copyright\":\"GNU GPL\",\"authorEmail\":\"guille@vargas.co.cr\",\"authorUrl\":\"joomla.vargas.co.cr\",\"version\":\"2.0.2\",\"description\":\"Xmap Plugin for SobiPro component\",\"group\":\"\"}','{\"include_entries\":\"1\",\"max_entries\":\"\",\"max_age\":\"\",\"entries_order\":\"a.ordering\",\"entries_orderdir\":\"DESC\",\"cat_priority\":\"-1\",\"cat_changefreq\":\"weekly\",\"entry_priority\":\"-1\",\"entry_changefreq\":\"weekly\"}','','',0,'0000-00-00 00:00:00',0,0),(10049,'Xmap - Mosets Tree Plugin','plugin','com_mtree','xmap',0,1,1,0,'{\"legacy\":false,\"name\":\"Xmap - Mosets Tree Plugin\",\"type\":\"plugin\",\"creationDate\":\"07\\/20\\/2011\",\"author\":\"Guillermo Vargas\",\"copyright\":\"GNU GPL\",\"authorEmail\":\"guille@vargas.co.cr\",\"authorUrl\":\"joomla.vargas.co.cr\",\"version\":\"2.0.2\",\"description\":\"XMAP_MTREE_PLUGIN_DESCRIPTION\",\"group\":\"\"}','{\"cats_order\":\"cat_name\",\"cats_orderdir\":\"ASC\",\"include_links\":\"1\",\"links_order\":\"ordering\",\"entries_orderdir\":\"ASC\",\"max_links\":\"\",\"max_age\":\"\",\"cat_priority\":\"0.5\",\"cat_changefreq\":\"weekly\",\"link_priority\":\"0.5\",\"link_changefreq\":\"weekly\"}','','',0,'0000-00-00 00:00:00',0,0),(10050,'Xmap - Virtuemart Plugin','plugin','com_virtuemart','xmap',0,1,1,0,'{\"legacy\":false,\"name\":\"Xmap - Virtuemart Plugin\",\"type\":\"plugin\",\"creationDate\":\"January 2012\",\"author\":\"Guillermo Vargas\",\"copyright\":\"GNU GPL\",\"authorEmail\":\"guille@vargas.co.cr\",\"authorUrl\":\"joomla.vargas.co.cr\",\"version\":\"2.0.3\",\"description\":\"XMAP_VM_PLUGIN_DESCRIPTION\",\"group\":\"\"}','{\"include_products\":\"1\",\"cat_priority\":\"-1\",\"cat_changefreq\":\"-1\",\"prod_priority\":\"-1\",\"prod_changefreq\":\"-1\"}','','',0,'0000-00-00 00:00:00',0,0),(10051,'Xmap - WebLinks Plugin','plugin','com_weblinks','xmap',0,1,1,0,'{\"legacy\":false,\"name\":\"Xmap - WebLinks Plugin\",\"type\":\"plugin\",\"creationDate\":\"Apr 2004\",\"author\":\"Guillermo Vargas\",\"copyright\":\"GNU GPL\",\"authorEmail\":\"guille@vargas.co.cr\",\"authorUrl\":\"joomla.vargas.co.cr\",\"version\":\"2.0.1\",\"description\":\"XMAP_WL_PLUGIN_DESCRIPTION\",\"group\":\"\"}','{\"include_links\":\"1\",\"max_links\":\"\",\"cat_priority\":\"-1\",\"cat_changefreq\":\"-1\",\"link_priority\":\"-1\",\"link_changefreq\":\"-1\"}','','',0,'0000-00-00 00:00:00',0,0),(10052,'XMAP_PLUGIN_K2','plugin','com_k2','xmap',0,1,1,0,'{\"legacy\":false,\"name\":\"XMAP_PLUGIN_K2\",\"type\":\"plugin\",\"creationDate\":\"November 2011\",\"author\":\"Mohammad Hasani Eghtedar\",\"copyright\":\"GNU GPL\",\"authorEmail\":\"m.h.eghtedar@gmail.com\",\"authorUrl\":\"https:\\/\\/github.com\\/mhehm\\/Xmap\",\"version\":\"1.3\",\"description\":\"XMAP_PLUGIN_K2_DESC\",\"group\":\"\"}','{\"subcategories\":\"no\",\"showk2items\":\"always\",\"suppressdups\":\"no\",\"priority\":\"0.5\",\"changefreq\":\"weekly\"}','','',0,'0000-00-00 00:00:00',0,0),(10053,'xmap','package','pkg_xmap','',0,1,1,0,'{\"legacy\":false,\"name\":\"Xmap Package\",\"type\":\"package\",\"creationDate\":\"Unknown\",\"author\":\"Unknown\",\"copyright\":\"\",\"authorEmail\":\"\",\"authorUrl\":\"\",\"version\":\"2.3.3\",\"description\":\"The Site Map generator for Joomla!\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0);
/*!40000 ALTER TABLE `uzlnh_extensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uzlnh_finder_filters`
--

DROP TABLE IF EXISTS `uzlnh_finder_filters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uzlnh_finder_filters` (
  `filter_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext,
  PRIMARY KEY (`filter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uzlnh_finder_filters`
--

LOCK TABLES `uzlnh_finder_filters` WRITE;
/*!40000 ALTER TABLE `uzlnh_finder_filters` DISABLE KEYS */;
/*!40000 ALTER TABLE `uzlnh_finder_filters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uzlnh_finder_links`
--

DROP TABLE IF EXISTS `uzlnh_finder_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uzlnh_finder_links` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double unsigned NOT NULL DEFAULT '0',
  `sale_price` double unsigned NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL,
  PRIMARY KEY (`link_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_title` (`title`),
  KEY `idx_md5` (`md5sum`),
  KEY `idx_url` (`url`(75)),
  KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uzlnh_finder_links`
--

LOCK TABLES `uzlnh_finder_links` WRITE;
/*!40000 ALTER TABLE `uzlnh_finder_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `uzlnh_finder_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uzlnh_finder_links_terms0`
--

DROP TABLE IF EXISTS `uzlnh_finder_links_terms0`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uzlnh_finder_links_terms0` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uzlnh_finder_links_terms0`
--

LOCK TABLES `uzlnh_finder_links_terms0` WRITE;
/*!40000 ALTER TABLE `uzlnh_finder_links_terms0` DISABLE KEYS */;
/*!40000 ALTER TABLE `uzlnh_finder_links_terms0` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uzlnh_finder_links_terms1`
--

DROP TABLE IF EXISTS `uzlnh_finder_links_terms1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uzlnh_finder_links_terms1` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uzlnh_finder_links_terms1`
--

LOCK TABLES `uzlnh_finder_links_terms1` WRITE;
/*!40000 ALTER TABLE `uzlnh_finder_links_terms1` DISABLE KEYS */;
/*!40000 ALTER TABLE `uzlnh_finder_links_terms1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uzlnh_finder_links_terms2`
--

DROP TABLE IF EXISTS `uzlnh_finder_links_terms2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uzlnh_finder_links_terms2` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uzlnh_finder_links_terms2`
--

LOCK TABLES `uzlnh_finder_links_terms2` WRITE;
/*!40000 ALTER TABLE `uzlnh_finder_links_terms2` DISABLE KEYS */;
/*!40000 ALTER TABLE `uzlnh_finder_links_terms2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uzlnh_finder_links_terms3`
--

DROP TABLE IF EXISTS `uzlnh_finder_links_terms3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uzlnh_finder_links_terms3` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uzlnh_finder_links_terms3`
--

LOCK TABLES `uzlnh_finder_links_terms3` WRITE;
/*!40000 ALTER TABLE `uzlnh_finder_links_terms3` DISABLE KEYS */;
/*!40000 ALTER TABLE `uzlnh_finder_links_terms3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uzlnh_finder_links_terms4`
--

DROP TABLE IF EXISTS `uzlnh_finder_links_terms4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uzlnh_finder_links_terms4` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uzlnh_finder_links_terms4`
--

LOCK TABLES `uzlnh_finder_links_terms4` WRITE;
/*!40000 ALTER TABLE `uzlnh_finder_links_terms4` DISABLE KEYS */;
/*!40000 ALTER TABLE `uzlnh_finder_links_terms4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uzlnh_finder_links_terms5`
--

DROP TABLE IF EXISTS `uzlnh_finder_links_terms5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uzlnh_finder_links_terms5` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uzlnh_finder_links_terms5`
--

LOCK TABLES `uzlnh_finder_links_terms5` WRITE;
/*!40000 ALTER TABLE `uzlnh_finder_links_terms5` DISABLE KEYS */;
/*!40000 ALTER TABLE `uzlnh_finder_links_terms5` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uzlnh_finder_links_terms6`
--

DROP TABLE IF EXISTS `uzlnh_finder_links_terms6`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uzlnh_finder_links_terms6` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uzlnh_finder_links_terms6`
--

LOCK TABLES `uzlnh_finder_links_terms6` WRITE;
/*!40000 ALTER TABLE `uzlnh_finder_links_terms6` DISABLE KEYS */;
/*!40000 ALTER TABLE `uzlnh_finder_links_terms6` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uzlnh_finder_links_terms7`
--

DROP TABLE IF EXISTS `uzlnh_finder_links_terms7`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uzlnh_finder_links_terms7` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uzlnh_finder_links_terms7`
--

LOCK TABLES `uzlnh_finder_links_terms7` WRITE;
/*!40000 ALTER TABLE `uzlnh_finder_links_terms7` DISABLE KEYS */;
/*!40000 ALTER TABLE `uzlnh_finder_links_terms7` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uzlnh_finder_links_terms8`
--

DROP TABLE IF EXISTS `uzlnh_finder_links_terms8`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uzlnh_finder_links_terms8` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uzlnh_finder_links_terms8`
--

LOCK TABLES `uzlnh_finder_links_terms8` WRITE;
/*!40000 ALTER TABLE `uzlnh_finder_links_terms8` DISABLE KEYS */;
/*!40000 ALTER TABLE `uzlnh_finder_links_terms8` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uzlnh_finder_links_terms9`
--

DROP TABLE IF EXISTS `uzlnh_finder_links_terms9`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uzlnh_finder_links_terms9` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uzlnh_finder_links_terms9`
--

LOCK TABLES `uzlnh_finder_links_terms9` WRITE;
/*!40000 ALTER TABLE `uzlnh_finder_links_terms9` DISABLE KEYS */;
/*!40000 ALTER TABLE `uzlnh_finder_links_terms9` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uzlnh_finder_links_termsa`
--

DROP TABLE IF EXISTS `uzlnh_finder_links_termsa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uzlnh_finder_links_termsa` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uzlnh_finder_links_termsa`
--

LOCK TABLES `uzlnh_finder_links_termsa` WRITE;
/*!40000 ALTER TABLE `uzlnh_finder_links_termsa` DISABLE KEYS */;
/*!40000 ALTER TABLE `uzlnh_finder_links_termsa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uzlnh_finder_links_termsb`
--

DROP TABLE IF EXISTS `uzlnh_finder_links_termsb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uzlnh_finder_links_termsb` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uzlnh_finder_links_termsb`
--

LOCK TABLES `uzlnh_finder_links_termsb` WRITE;
/*!40000 ALTER TABLE `uzlnh_finder_links_termsb` DISABLE KEYS */;
/*!40000 ALTER TABLE `uzlnh_finder_links_termsb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uzlnh_finder_links_termsc`
--

DROP TABLE IF EXISTS `uzlnh_finder_links_termsc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uzlnh_finder_links_termsc` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uzlnh_finder_links_termsc`
--

LOCK TABLES `uzlnh_finder_links_termsc` WRITE;
/*!40000 ALTER TABLE `uzlnh_finder_links_termsc` DISABLE KEYS */;
/*!40000 ALTER TABLE `uzlnh_finder_links_termsc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uzlnh_finder_links_termsd`
--

DROP TABLE IF EXISTS `uzlnh_finder_links_termsd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uzlnh_finder_links_termsd` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uzlnh_finder_links_termsd`
--

LOCK TABLES `uzlnh_finder_links_termsd` WRITE;
/*!40000 ALTER TABLE `uzlnh_finder_links_termsd` DISABLE KEYS */;
/*!40000 ALTER TABLE `uzlnh_finder_links_termsd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uzlnh_finder_links_termse`
--

DROP TABLE IF EXISTS `uzlnh_finder_links_termse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uzlnh_finder_links_termse` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uzlnh_finder_links_termse`
--

LOCK TABLES `uzlnh_finder_links_termse` WRITE;
/*!40000 ALTER TABLE `uzlnh_finder_links_termse` DISABLE KEYS */;
/*!40000 ALTER TABLE `uzlnh_finder_links_termse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uzlnh_finder_links_termsf`
--

DROP TABLE IF EXISTS `uzlnh_finder_links_termsf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uzlnh_finder_links_termsf` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uzlnh_finder_links_termsf`
--

LOCK TABLES `uzlnh_finder_links_termsf` WRITE;
/*!40000 ALTER TABLE `uzlnh_finder_links_termsf` DISABLE KEYS */;
/*!40000 ALTER TABLE `uzlnh_finder_links_termsf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uzlnh_finder_taxonomy`
--

DROP TABLE IF EXISTS `uzlnh_finder_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uzlnh_finder_taxonomy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `access` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `state` (`state`),
  KEY `ordering` (`ordering`),
  KEY `access` (`access`),
  KEY `idx_parent_published` (`parent_id`,`state`,`access`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uzlnh_finder_taxonomy`
--

LOCK TABLES `uzlnh_finder_taxonomy` WRITE;
/*!40000 ALTER TABLE `uzlnh_finder_taxonomy` DISABLE KEYS */;
INSERT INTO `uzlnh_finder_taxonomy` VALUES (1,0,'ROOT',0,0,0);
/*!40000 ALTER TABLE `uzlnh_finder_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uzlnh_finder_taxonomy_map`
--

DROP TABLE IF EXISTS `uzlnh_finder_taxonomy_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uzlnh_finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`node_id`),
  KEY `link_id` (`link_id`),
  KEY `node_id` (`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uzlnh_finder_taxonomy_map`
--

LOCK TABLES `uzlnh_finder_taxonomy_map` WRITE;
/*!40000 ALTER TABLE `uzlnh_finder_taxonomy_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `uzlnh_finder_taxonomy_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uzlnh_finder_terms`
--

DROP TABLE IF EXISTS `uzlnh_finder_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uzlnh_finder_terms` (
  `term_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `idx_term` (`term`),
  KEY `idx_term_phrase` (`term`,`phrase`),
  KEY `idx_stem_phrase` (`stem`,`phrase`),
  KEY `idx_soundex_phrase` (`soundex`,`phrase`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uzlnh_finder_terms`
--

LOCK TABLES `uzlnh_finder_terms` WRITE;
/*!40000 ALTER TABLE `uzlnh_finder_terms` DISABLE KEYS */;
/*!40000 ALTER TABLE `uzlnh_finder_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uzlnh_finder_terms_common`
--

DROP TABLE IF EXISTS `uzlnh_finder_terms_common`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uzlnh_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL,
  KEY `idx_word_lang` (`term`,`language`),
  KEY `idx_lang` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uzlnh_finder_terms_common`
--

LOCK TABLES `uzlnh_finder_terms_common` WRITE;
/*!40000 ALTER TABLE `uzlnh_finder_terms_common` DISABLE KEYS */;
INSERT INTO `uzlnh_finder_terms_common` VALUES ('a','en'),('about','en'),('after','en'),('ago','en'),('all','en'),('am','en'),('an','en'),('and','en'),('ani','en'),('any','en'),('are','en'),('aren\'t','en'),('as','en'),('at','en'),('be','en'),('but','en'),('by','en'),('for','en'),('from','en'),('get','en'),('go','en'),('how','en'),('if','en'),('in','en'),('into','en'),('is','en'),('isn\'t','en'),('it','en'),('its','en'),('me','en'),('more','en'),('most','en'),('must','en'),('my','en'),('new','en'),('no','en'),('none','en'),('not','en'),('noth','en'),('nothing','en'),('of','en'),('off','en'),('often','en'),('old','en'),('on','en'),('onc','en'),('once','en'),('onli','en'),('only','en'),('or','en'),('other','en'),('our','en'),('ours','en'),('out','en'),('over','en'),('page','en'),('she','en'),('should','en'),('small','en'),('so','en'),('some','en'),('than','en'),('thank','en'),('that','en'),('the','en'),('their','en'),('theirs','en'),('them','en'),('then','en'),('there','en'),('these','en'),('they','en'),('this','en'),('those','en'),('thus','en'),('time','en'),('times','en'),('to','en'),('too','en'),('true','en'),('under','en'),('until','en'),('up','en'),('upon','en'),('use','en'),('user','en'),('users','en'),('veri','en'),('version','en'),('very','en'),('via','en'),('want','en'),('was','en'),('way','en'),('were','en'),('what','en'),('when','en'),('where','en'),('whi','en'),('which','en'),('who','en'),('whom','en'),('whose','en'),('why','en'),('wide','en'),('will','en'),('with','en'),('within','en'),('without','en'),('would','en'),('yes','en'),('yet','en'),('you','en'),('your','en'),('yours','en');
/*!40000 ALTER TABLE `uzlnh_finder_terms_common` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uzlnh_finder_tokens`
--

DROP TABLE IF EXISTS `uzlnh_finder_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uzlnh_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '1',
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  KEY `idx_word` (`term`),
  KEY `idx_context` (`context`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uzlnh_finder_tokens`
--

LOCK TABLES `uzlnh_finder_tokens` WRITE;
/*!40000 ALTER TABLE `uzlnh_finder_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `uzlnh_finder_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uzlnh_finder_tokens_aggregate`
--

DROP TABLE IF EXISTS `uzlnh_finder_tokens_aggregate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uzlnh_finder_tokens_aggregate` (
  `term_id` int(10) unsigned NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `term_weight` float unsigned NOT NULL,
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `context_weight` float unsigned NOT NULL,
  `total_weight` float unsigned NOT NULL,
  KEY `token` (`term`),
  KEY `keyword_id` (`term_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uzlnh_finder_tokens_aggregate`
--

LOCK TABLES `uzlnh_finder_tokens_aggregate` WRITE;
/*!40000 ALTER TABLE `uzlnh_finder_tokens_aggregate` DISABLE KEYS */;
/*!40000 ALTER TABLE `uzlnh_finder_tokens_aggregate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uzlnh_finder_types`
--

DROP TABLE IF EXISTS `uzlnh_finder_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uzlnh_finder_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uzlnh_finder_types`
--

LOCK TABLES `uzlnh_finder_types` WRITE;
/*!40000 ALTER TABLE `uzlnh_finder_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `uzlnh_finder_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uzlnh_languages`
--

DROP TABLE IF EXISTS `uzlnh_languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uzlnh_languages` (
  `lang_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lang_code` char(7) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_native` varchar(50) NOT NULL,
  `sef` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `description` varchar(512) NOT NULL,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `sitename` varchar(1024) NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  UNIQUE KEY `idx_sef` (`sef`),
  UNIQUE KEY `idx_image` (`image`),
  UNIQUE KEY `idx_langcode` (`lang_code`),
  KEY `idx_access` (`access`),
  KEY `idx_ordering` (`ordering`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uzlnh_languages`
--

LOCK TABLES `uzlnh_languages` WRITE;
/*!40000 ALTER TABLE `uzlnh_languages` DISABLE KEYS */;
INSERT INTO `uzlnh_languages` VALUES (1,'en-GB','English (UK)','English (UK)','en','en','','','','',1,0,2),(2,'ru-RU','Russian (RU)','Русский (РФ)','ru','ru','','','','',1,0,1);
/*!40000 ALTER TABLE `uzlnh_languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uzlnh_menu`
--

DROP TABLE IF EXISTS `uzlnh_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uzlnh_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(1024) NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `ordering` int(11) NOT NULL DEFAULT '0' COMMENT 'The relative ordering of the menu item in the tree.',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`,`language`),
  KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  KEY `idx_menutype` (`menutype`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_path` (`path`(255)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=143 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uzlnh_menu`
--

LOCK TABLES `uzlnh_menu` WRITE;
/*!40000 ALTER TABLE `uzlnh_menu` DISABLE KEYS */;
INSERT INTO `uzlnh_menu` VALUES (1,'','Menu_Item_Root','root','','','','',1,0,0,0,0,0,'0000-00-00 00:00:00',0,0,'',0,'',0,123,0,'*',0),(2,'menu','com_banners','Banners','','Banners','index.php?option=com_banners','component',0,1,1,4,0,0,'0000-00-00 00:00:00',0,0,'class:banners',0,'',1,10,0,'*',1),(3,'menu','com_banners','Banners','','Banners/Banners','index.php?option=com_banners','component',0,2,2,4,0,0,'0000-00-00 00:00:00',0,0,'class:banners',0,'',2,3,0,'*',1),(4,'menu','com_banners_categories','Categories','','Banners/Categories','index.php?option=com_categories&extension=com_banners','component',0,2,2,6,0,0,'0000-00-00 00:00:00',0,0,'class:banners-cat',0,'',4,5,0,'*',1),(5,'menu','com_banners_clients','Clients','','Banners/Clients','index.php?option=com_banners&view=clients','component',0,2,2,4,0,0,'0000-00-00 00:00:00',0,0,'class:banners-clients',0,'',6,7,0,'*',1),(6,'menu','com_banners_tracks','Tracks','','Banners/Tracks','index.php?option=com_banners&view=tracks','component',0,2,2,4,0,0,'0000-00-00 00:00:00',0,0,'class:banners-tracks',0,'',8,9,0,'*',1),(7,'menu','com_contact','Contacts','','Contacts','index.php?option=com_contact','component',0,1,1,8,0,0,'0000-00-00 00:00:00',0,0,'class:contact',0,'',11,16,0,'*',1),(8,'menu','com_contact','Contacts','','Contacts/Contacts','index.php?option=com_contact','component',0,7,2,8,0,0,'0000-00-00 00:00:00',0,0,'class:contact',0,'',12,13,0,'*',1),(9,'menu','com_contact_categories','Categories','','Contacts/Categories','index.php?option=com_categories&extension=com_contact','component',0,7,2,6,0,0,'0000-00-00 00:00:00',0,0,'class:contact-cat',0,'',14,15,0,'*',1),(10,'menu','com_messages','Messaging','','Messaging','index.php?option=com_messages','component',0,1,1,15,0,0,'0000-00-00 00:00:00',0,0,'class:messages',0,'',17,22,0,'*',1),(11,'menu','com_messages_add','New Private Message','','Messaging/New Private Message','index.php?option=com_messages&task=message.add','component',0,10,2,15,0,0,'0000-00-00 00:00:00',0,0,'class:messages-add',0,'',18,19,0,'*',1),(12,'menu','com_messages_read','Read Private Message','','Messaging/Read Private Message','index.php?option=com_messages','component',0,10,2,15,0,0,'0000-00-00 00:00:00',0,0,'class:messages-read',0,'',20,21,0,'*',1),(13,'menu','com_newsfeeds','News Feeds','','News Feeds','index.php?option=com_newsfeeds','component',0,1,1,17,0,0,'0000-00-00 00:00:00',0,0,'class:newsfeeds',0,'',23,28,0,'*',1),(14,'menu','com_newsfeeds_feeds','Feeds','','News Feeds/Feeds','index.php?option=com_newsfeeds','component',0,13,2,17,0,0,'0000-00-00 00:00:00',0,0,'class:newsfeeds',0,'',24,25,0,'*',1),(15,'menu','com_newsfeeds_categories','Categories','','News Feeds/Categories','index.php?option=com_categories&extension=com_newsfeeds','component',0,13,2,6,0,0,'0000-00-00 00:00:00',0,0,'class:newsfeeds-cat',0,'',26,27,0,'*',1),(16,'menu','com_redirect','Redirect','','Redirect','index.php?option=com_redirect','component',0,1,1,24,0,0,'0000-00-00 00:00:00',0,0,'class:redirect',0,'',41,42,0,'*',1),(17,'menu','com_search','Basic Search','','Basic Search','index.php?option=com_search','component',0,1,1,19,0,0,'0000-00-00 00:00:00',0,0,'class:search',0,'',31,32,0,'*',1),(18,'menu','com_weblinks','Weblinks','','Weblinks','index.php?option=com_weblinks','component',0,1,1,21,0,0,'0000-00-00 00:00:00',0,0,'class:weblinks',0,'',33,38,0,'*',1),(19,'menu','com_weblinks_links','Links','','Weblinks/Links','index.php?option=com_weblinks','component',0,18,2,21,0,0,'0000-00-00 00:00:00',0,0,'class:weblinks',0,'',34,35,0,'*',1),(20,'menu','com_weblinks_categories','Categories','','Weblinks/Categories','index.php?option=com_categories&extension=com_weblinks','component',0,18,2,6,0,0,'0000-00-00 00:00:00',0,0,'class:weblinks-cat',0,'',36,37,0,'*',1),(21,'menu','com_finder','Smart Search','','Smart Search','index.php?option=com_finder','component',0,1,1,27,0,0,'0000-00-00 00:00:00',0,0,'class:finder',0,'',29,30,0,'*',1),(22,'menu','com_joomlaupdate','Joomla! Update','','Joomla! Update','index.php?option=com_joomlaupdate','component',0,1,1,28,0,0,'0000-00-00 00:00:00',0,0,'class:joomlaupdate',0,'',39,40,0,'*',1),(101,'hidemenu','Каталог','home','','home','index.php?option=com_virtuemart&view=virtuemart','component',1,1,1,10002,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\\u041c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d \\u0441\\u0442\\u0438\\u043b\\u044c\\u043d\\u043e\\u0439 \\u043e\\u0434\\u0435\\u0436\\u0434\\u044b. \\u0414\\u043e\\u0441\\u0442\\u0443\\u043f\\u043d\\u044b\\u0435 \\u0446\\u0435\\u043d\\u044b. \\u0414\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0430+ \\u043f\\u0440\\u0438\\u043c\\u0435\\u0440\\u043a\\u0430! I-m-Style.ru\",\"show_page_heading\":1,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\\u041c\\u043e\\u0434\\u043d\\u0430\\u044f \\u043e\\u0434\\u0435\\u0436\\u0434\\u0430 \\u0438\\u0437 \\u0418\\u0442\\u0430\\u043b\\u0438\\u0438, \\u0424\\u0440\\u0430\\u043d\\u0446\\u0438\\u0438, \\u0413\\u043e\\u043d\\u043a\\u043e\\u043d\\u0433\\u0430. \\u042d\\u043a\\u0441\\u043a\\u043b\\u044e\\u0437\\u0438\\u0432\\u043d\\u044b\\u0435 \\u043c\\u043e\\u0434\\u0435\\u043b\\u0438 \\u0438\\u0437 \\u0431\\u0440\\u0435\\u043d\\u0434\\u043e\\u0432\\u044b\\u0445 \\u0442\\u043a\\u0430\\u043d\\u0435\\u0439 \\u043f\\u043e \\u0434\\u043e\\u0441\\u0442\\u0443\\u043f\\u043d\\u044b\\u043c \\u0446\\u0435\\u043d\\u0430\\u043c. \\u0412\\u044b\\u0441\\u043e\\u043a\\u043e\\u0435 \\u043a\\u0430\\u0447\\u0435\\u0441\\u0442\\u0432\\u043e! \\u0414\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0430.\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',107,108,1,'*',0),(104,'main','VirtueMart AIO','virtuemart-aio','','virtuemart-aio','index.php?option=com_virtuemart_allinone','component',0,1,1,10003,0,0,'0000-00-00 00:00:00',0,1,'class:component',0,'',43,44,0,'',1),(105,'main','COM_VIRTUEMART','com-virtuemart','','com-virtuemart','index.php?option=com_virtuemart','component',0,1,1,10002,0,0,'0000-00-00 00:00:00',0,1,'../components/com_virtuemart/assets/images/vmgeneral/menu_icon.png',0,'',45,68,0,'',1),(106,'main','COM_VIRTUEMART_MENU_CATEGORIES','com-virtuemart-menu-categories','','com-virtuemart/com-virtuemart-menu-categories','index.php?option=com_virtuemart&view=category','component',0,105,2,10002,0,0,'0000-00-00 00:00:00',0,1,'components/com_virtuemart/assets/images/icon_16/menu-icon16-categories.png',0,'',46,47,0,'',1),(107,'main','COM_VIRTUEMART_MENU_PRODUCTS','com-virtuemart-menu-products','','com-virtuemart/com-virtuemart-menu-products','index.php?option=com_virtuemart&view=product','component',0,105,2,10002,0,0,'0000-00-00 00:00:00',0,1,'components/com_virtuemart/assets/images/icon_16/menu-icon16-products.png',0,'',48,49,0,'',1),(108,'main','COM_VIRTUEMART_MENU_ORDERS','com-virtuemart-menu-orders','','com-virtuemart/com-virtuemart-menu-orders','index.php?option=com_virtuemart&view=orders','component',0,105,2,10002,0,0,'0000-00-00 00:00:00',0,1,'components/com_virtuemart/assets/images/icon_16/menu-icon16-orders.png',0,'',50,51,0,'',1),(109,'main','COM_VIRTUEMART_MENU_REPORT','com-virtuemart-menu-report','','com-virtuemart/com-virtuemart-menu-report','index.php?option=com_virtuemart&view=report','component',0,105,2,10002,0,0,'0000-00-00 00:00:00',0,1,'components/com_virtuemart/assets/images/icon_16/menu-icon16-report.png',0,'',52,53,0,'',1),(110,'main','COM_VIRTUEMART_MENU_USERS','com-virtuemart-menu-users','','com-virtuemart/com-virtuemart-menu-users','index.php?option=com_virtuemart&view=user','component',0,105,2,10002,0,0,'0000-00-00 00:00:00',0,1,'components/com_virtuemart/assets/images/icon_16/menu-icon16-shoppers.png',0,'',54,55,0,'',1),(111,'main','COM_VIRTUEMART_MENU_MANUFACTURERS','com-virtuemart-menu-manufacturers','','com-virtuemart/com-virtuemart-menu-manufacturers','index.php?option=com_virtuemart&view=manufacturer','component',0,105,2,10002,0,0,'0000-00-00 00:00:00',0,1,'components/com_virtuemart/assets/images/icon_16/menu-icon16-manufacturers.png',0,'',56,57,0,'',1),(112,'main','COM_VIRTUEMART_MENU_STORE','com-virtuemart-menu-store','','com-virtuemart/com-virtuemart-menu-store','index.php?option=com_virtuemart&view=user&task=editshop','component',0,105,2,10002,0,0,'0000-00-00 00:00:00',0,1,'components/com_virtuemart/assets/images/icon_16/menu-icon16-shop.png',0,'',58,59,0,'',1),(113,'main','COM_VIRTUEMART_MENU_MEDIAFILES','com-virtuemart-menu-mediafiles','','com-virtuemart/com-virtuemart-menu-mediafiles','index.php?option=com_virtuemart&view=media','component',0,105,2,10002,0,0,'0000-00-00 00:00:00',0,1,'components/com_virtuemart/assets/images/icon_16/menu-icon16-media.png',0,'',60,61,0,'',1),(114,'main','COM_VIRTUEMART_MENU_SHIPMENTMETHODS','com-virtuemart-menu-shipmentmethods','','com-virtuemart/com-virtuemart-menu-shipmentmethods','index.php?option=com_virtuemart&view=shipmentmethod','component',0,105,2,10002,0,0,'0000-00-00 00:00:00',0,1,'components/com_virtuemart/assets/images/icon_16/menu-icon16-shipmentmethods.png',0,'',62,63,0,'',1),(115,'main','COM_VIRTUEMART_MENU_PAYMENTMETHODS','com-virtuemart-menu-paymentmethods','','com-virtuemart/com-virtuemart-menu-paymentmethods','index.php?option=com_virtuemart&view=paymentmethod','component',0,105,2,10002,0,0,'0000-00-00 00:00:00',0,1,'components/com_virtuemart/assets/images/icon_16/menu-icon16-paymentmethods.png',0,'',64,65,0,'',1),(116,'main','COM_VIRTUEMART_MENU_CONFIGURATION','com-virtuemart-menu-configuration','','com-virtuemart/com-virtuemart-menu-configuration','index.php?option=com_virtuemart&view=config','component',0,105,2,10002,0,0,'0000-00-00 00:00:00',0,1,'components/com_virtuemart/assets/images/icon_16/menu-icon16-config.png',0,'',66,67,0,'',1),(117,'top-menu','Доставка','dostavka','','dostavka','index.php?option=com_content&view=article&id=1','component',1,1,1,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":1,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',69,70,0,'*',0),(118,'top-menu','Оплата','oplata','','oplata','index.php?option=com_content&view=article&id=1','component',1,1,1,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":1,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',71,72,0,'*',0),(119,'top-menu','Контакты','kontakty','','kontakty','index.php?option=com_content&view=article&id=1','component',1,1,1,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":1,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',73,74,0,'*',0),(120,'mainmenu','Товары со скидкой','tovary-so-skidkoj','','tovary-so-skidkoj','index.php?option=com_virtuemart&view=category&virtuemart_category_id=19&categorylayout=0','component',1,1,1,10002,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":1,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',101,102,0,'*',0),(121,'mainmenu','Новинки','novinki','','novinki','index.php?option=com_virtuemart&view=category&virtuemart_category_id=19&categorylayout=0','component',1,1,1,10002,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":1,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',103,104,0,'*',0),(122,'top-menu','Оптовикам','optovikam','','optovikam','index.php?option=com_content&view=article&id=1','component',1,1,1,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":1,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',105,106,0,'*',0),(123,'mainmenu','Каталог ▾','katalog','','katalog','index.php?option=com_virtuemart&view=categories&virtuemart_category_id=0','component',1,1,1,10002,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\\u041a\\u0430\\u0442\\u0430\\u043b\\u043e\\u0433\",\"show_page_heading\":1,\"page_heading\":\"\\u041a\\u0430\\u0442\\u0430\\u043b\\u043e\\u0433\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',75,100,0,'*',0),(124,'main','COM_DJIMAGESLIDER','com-djimageslider','','com-djimageslider','index.php?option=com_djimageslider','component',0,1,1,10042,0,0,'0000-00-00 00:00:00',0,1,'components/com_djimageslider/assets/icon-16-djimageslider.png',0,'',109,114,0,'',1),(125,'main','COM_DJIMAGESLIDER_SLIDES','com-djimageslider-slides','','com-djimageslider/com-djimageslider-slides','index.php?option=com_djimageslider&view=items','component',0,124,2,10042,0,0,'0000-00-00 00:00:00',0,1,'components/com_djimageslider/assets/icon-16-menu-slides.png',0,'',110,111,0,'',1),(126,'main','COM_DJIMAGESLIDER_CATEGORIES','com-djimageslider-categories','','com-djimageslider/com-djimageslider-categories','index.php?option=com_categories&extension=com_djimageslider','component',0,124,2,10042,0,0,'0000-00-00 00:00:00',0,1,'class:category',0,'',112,113,0,'',1),(127,'hidemenu','Порядок возврата','informatsiya-o-vozvrate','','informatsiya-o-vozvrate','index.php?option=com_content&view=article&id=1','component',1,1,1,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":1,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',115,116,0,'*',0),(128,'main','COM_XMAP_TITLE','com-xmap-title','','com-xmap-title','index.php?option=com_xmap','component',0,1,1,10045,0,0,'0000-00-00 00:00:00',0,1,'components/com_xmap/images/xmap-favicon.png',0,'',117,118,0,'',1),(129,'hidemenu','Карта сайта','karta-sajta','','karta-sajta','index.php?option=com_xmap&view=html&id=1','component',1,1,1,10045,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"include_css\":\"0\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":1,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',119,120,0,'*',0),(130,'mainmenu','Платья','platya','','katalog/platya','index.php?option=com_virtuemart&view=category&virtuemart_category_id=6&categorylayout=0','component',1,123,2,10002,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',76,77,0,'*',0),(131,'mainmenu','Туники','tuniki','','katalog/tuniki','index.php?option=com_virtuemart&view=category&virtuemart_category_id=9&categorylayout=0','component',1,123,2,10002,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',78,79,0,'*',0),(132,'mainmenu','Юбки','yubki','','katalog/yubki','index.php?option=com_virtuemart&view=category&virtuemart_category_id=8&categorylayout=0','component',1,123,2,10002,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',80,81,0,'*',0),(133,'mainmenu','Блузки','bluzki','','katalog/bluzki','index.php?option=com_virtuemart&view=category&virtuemart_category_id=18&categorylayout=0','component',1,123,2,10002,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',82,83,0,'*',0),(134,'mainmenu','Футболки','futbolki','','katalog/futbolki','index.php?option=com_virtuemart&view=category&virtuemart_category_id=11&categorylayout=0','component',1,123,2,10002,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',84,85,0,'*',0),(135,'mainmenu','Брюки','bryuki','','katalog/bryuki','index.php?option=com_virtuemart&view=category&virtuemart_category_id=12&categorylayout=0','component',1,123,2,10002,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',86,87,0,'*',0),(136,'mainmenu','Костюмы','kostyumy','','katalog/kostyumy','index.php?option=com_virtuemart&view=category&virtuemart_category_id=13&categorylayout=0','component',1,123,2,10002,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',88,89,0,'*',0),(137,'mainmenu','Жакеты','zhakety','','katalog/zhakety','index.php?option=com_virtuemart&view=category&virtuemart_category_id=14&categorylayout=0','component',1,123,2,10002,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',90,91,0,'*',0),(138,'mainmenu','Джемперы','dzhempery','','katalog/dzhempery','index.php?option=com_virtuemart&view=category&virtuemart_category_id=15&categorylayout=0','component',1,123,2,10002,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',92,93,0,'*',0),(139,'mainmenu','Плащи','plashchi','','katalog/plashchi','index.php?option=com_virtuemart&view=category&virtuemart_category_id=7&categorylayout=0','component',1,123,2,10002,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',94,95,0,'*',0),(140,'mainmenu','Куртки','kurtki','','katalog/kurtki','index.php?option=com_virtuemart&view=category&virtuemart_category_id=16&categorylayout=0','component',1,123,2,10002,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',96,97,0,'*',0),(141,'mainmenu','Аксессуары','aksessuary','','katalog/aksessuary','index.php?option=com_virtuemart&view=category&virtuemart_category_id=17&categorylayout=0','component',1,123,2,10002,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',98,99,0,'*',0),(142,'hidemenu','Поиск по сайту','poisk-po-sajtu','','poisk-po-sajtu','index.php?option=com_search&view=search&searchword=','component',1,1,1,19,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"search_areas\":\"\",\"show_date\":\"\",\"searchphrase\":\"0\",\"ordering\":\"newest\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":1,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',121,122,0,'*',0);
/*!40000 ALTER TABLE `uzlnh_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uzlnh_menu_types`
--

DROP TABLE IF EXISTS `uzlnh_menu_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uzlnh_menu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL,
  `title` varchar(48) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_menutype` (`menutype`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uzlnh_menu_types`
--

LOCK TABLES `uzlnh_menu_types` WRITE;
/*!40000 ALTER TABLE `uzlnh_menu_types` DISABLE KEYS */;
INSERT INTO `uzlnh_menu_types` VALUES (1,'mainmenu','Главное меню','The main menu for the site'),(2,'top-menu','Второстепенное меню','Второстепенное меню'),(3,'hidemenu','Скрытое меню','.addtocart-button');
/*!40000 ALTER TABLE `uzlnh_menu_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uzlnh_messages`
--

DROP TABLE IF EXISTS `uzlnh_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uzlnh_messages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uzlnh_messages`
--

LOCK TABLES `uzlnh_messages` WRITE;
/*!40000 ALTER TABLE `uzlnh_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `uzlnh_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uzlnh_messages_cfg`
--

DROP TABLE IF EXISTS `uzlnh_messages_cfg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uzlnh_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uzlnh_messages_cfg`
--

LOCK TABLES `uzlnh_messages_cfg` WRITE;
/*!40000 ALTER TABLE `uzlnh_messages_cfg` DISABLE KEYS */;
/*!40000 ALTER TABLE `uzlnh_messages_cfg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uzlnh_modules`
--

DROP TABLE IF EXISTS `uzlnh_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uzlnh_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) NOT NULL DEFAULT '',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) DEFAULT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uzlnh_modules`
--

LOCK TABLES `uzlnh_modules` WRITE;
/*!40000 ALTER TABLE `uzlnh_modules` DISABLE KEYS */;
INSERT INTO `uzlnh_modules` VALUES (1,'Главное меню','','',1,'head_left_2',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_menu',1,1,'{\"menutype\":\"mainmenu\",\"startLevel\":\"1\",\"endLevel\":\"0\",\"showAllChildren\":\"1\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"_menu\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}',0,'*'),(2,'Вход','','',1,'login',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_login',1,1,'',1,'*'),(3,'Популярные материалы','','',3,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_popular',3,1,'{\"count\":\"5\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"automatic_title\":\"1\"}',1,'*'),(4,'Новые материалы','','',4,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_latest',3,1,'{\"count\":\"5\",\"ordering\":\"c_dsc\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"automatic_title\":\"1\"}',1,'*'),(8,'Инструментальная панель','','',1,'toolbar',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_toolbar',3,1,'',1,'*'),(9,'Быстрый доступ','','',1,'icon',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_quickicon',3,1,'',1,'*'),(10,'Авторизованные пользователи','','',2,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_logged',3,1,'{\"count\":\"5\",\"name\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"automatic_title\":\"1\"}',1,'*'),(12,'Меню панели управления','','',1,'menu',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_menu',3,1,'{\"layout\":\"\",\"moduleclass_sfx\":\"\",\"shownew\":\"1\",\"showhelp\":\"1\",\"cache\":\"0\"}',1,'*'),(13,'Подменю панели управления','','',1,'submenu',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_submenu',3,1,'',1,'*'),(14,'Статус пользователя','','',2,'status',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_status',3,1,'',1,'*'),(15,'Заголовок','','',1,'title',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_title',3,1,'',1,'*'),(16,'Форма входа','','',7,'position-7',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',-2,'mod_login',1,1,'{\"greeting\":\"1\",\"name\":\"0\"}',0,'*'),(17,'Путь на сайте','','',1,'breadcrumbs',706,'2014-08-18 17:19:46','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_breadcrumbs',1,1,'{\"showHere\":\"1\",\"showHome\":\"1\",\"homeText\":\"\\u0413\\u043b\\u0430\\u0432\\u043d\\u0430\\u044f\",\"showLast\":\"1\",\"separator\":\" - \",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}',0,'*'),(79,'Статус многоязычности','','',1,'status',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_multilangstatus',3,1,'{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',1,'*'),(86,'Версия Joomla!','','',1,'footer',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_version',3,1,'{\"format\":\"short\",\"product\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',1,'*'),(87,'VM - Currencies Selector','','',4,'position-4',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',-2,'mod_virtuemart_currencies',1,1,'',0,''),(88,'VM - Featured products','','',3,'position-4',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',-2,'mod_virtuemart_product',1,1,'',0,''),(89,'Поиск по сайту','','',1,'search',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_virtuemart_search',1,1,'{\"width\":\"20\",\"text\":\"\\u041f\\u043e\\u0438\\u0441\\u043a \\u0442\\u043e\\u0432\\u0430\\u0440\\u043e\\u0432...\",\"filter_category\":\"0\",\"button\":\"1\",\"button_pos\":\"right\",\"imagebutton\":\"0\",\"button_text\":\"\\u0418\\u0441\\u043a\\u0430\\u0442\\u044c\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\"}',0,'*'),(90,'VM - Manufacturer','','',5,'position-4',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',-2,'mod_virtuemart_manufacturer',1,1,'',0,''),(91,'Корзина','','',1,'head_right_1',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_virtuemart_cart',1,1,'{\"moduleclass_sfx\":\"\",\"show_price\":\"0\",\"show_product_list\":\"0\"}',0,'*'),(92,'VM - Category','','',6,'position-4',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',-2,'mod_virtuemart_category',1,1,'',0,''),(93,'Search (filter) module for Virtuemart 2 multiple customfield plugin','','',1,'position-7',706,'2014-08-17 18:38:07','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_virtuemart_param_filter',1,1,'{\"layout\":\"default\",\"method\":\"get\",\"limit\":\"10\",\"Parent_Category_id\":[\"\"],\"parent_auto\":\"0\",\"stock\":\"0\",\"children\":\"-1\",\"show_all_count\":\"1\",\"mod_ajax\":\"1\",\"count_show\":\"1\",\"count_zero_show\":\"disable\",\"mod_ajax_div\":\"\",\"loader_img\":\"aload-black_on_white\",\"mcf_prepend_text\":\"\",\"mcf_append_text\":\"\",\"mcf_reinit_start\":\"\",\"mcf_reinit_mod\":\"\",\"mcf_reinit_body\":\"\",\"mcf_mod_uniq_display\":\"1\",\"mcf_mod_uniq_result\":\"0\",\"view_assign\":[\"-1\"],\"categories_show\":\"1\",\"in_active_category\":\"0\",\"active_category_id\":\"\",\"mcf_subcategories\":\"0\",\"mcf_only_subcategories\":\"0\",\"categories_heading\":\"\",\"categories_select_heading\":\"Choose category\",\"categories_layout\":\"checkbox\",\"manufacturers_show\":\"1\",\"manufacturers_heading\":\"\",\"manufacturers_select_heading\":\"Choose manufacturer\",\"mcf_body\":\"Z3ppbmZsYXRl;dVJta9swEP4rN+EFmyZOAmvZ\\/JJRtoyuUChrv4ymGMU6x2plyejFm1v63yc7GYOQfRHc3fM899zpdkJtqYCgto2YBi3VtCkMUl3WBWcmhYCpEvIJXH+jpVW6T5Id2q+qdA1KG0YecMyBHLgxaMOBOlsdlyOYTE6Q3uUwW8JnOE2CBKQTYugmdkVTVqOlW+F2XF6haFGPvvaJkHRN6YxVDZmSUYkMPj2reMbe23syShYMS8Uw\\/Ct46Gmi2eoATAF4Ff6j5dCw83BLDV58KFCO7N0Lw0pQiyF5au62P0hs3NZY\\/V\\/YIEFuSHx9e3l\\/Vdx9v1\\/HZE2iKJoupsuLyAfn7AsOiegV3lAYfIXANq13TbWm\\/bDxSukw4PkiDXiWf\\/Lv2ZkHe6+HtR8v7yHgj1E0yjw8eqGTgBTeTn7lwEr35+EjkjHegbG9wHxDKiXtzPAXTD4u3qcbsvqpHNS0Q6AglfQHwzs\\/NIMOteFKwq+alzUwblpBewOuBatguYB9R9BonLAmhssDE3rlNDSKOYFQo8YEMgq1xsp3r61tk\\/m86fG3jdFtCFiq\\/RH4UrEVVD57Qzf9eixmc7rK5t77isRkI\\/2Tcdk6C7Zvh0lqzhhKLyFpM8TDp3PJrc90VLghtVz4YO754y6GdWm0Tkuw2mH6Bw==;Y3JlYXRlX2Z1bmN0aW9u\",\"mcf_mod\":\"bxaisiexi6xi4xi_xdieicixoidxe\",\"manufacturers_layout\":\"checkbox\",\"price_show\":\"1\",\"price_heading\":\"\",\"price_discount\":\"0\",\"price_mcur\":\"0\",\"price_layout\":\"input\",\"price_select_heading\":\"\",\"customfields_show\":\"1\",\"customfields_select_heading\":\"Choose some options\",\"customfields_layout\":\"auto\",\"moduleclass_sfx\":\"\",\"class_sfx\":\"\",\"mcf_jqueryui\":\"1\"}',0,'*'),(94,'Второстепенное меню','','',0,'head_left_1',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_menu',1,1,'{\"menutype\":\"top-menu\",\"startLevel\":\"1\",\"endLevel\":\"0\",\"showAllChildren\":\"0\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}',0,'*'),(95,'Телефоны (шапка)','','<p><strong>(831) 555-55-55</strong></p>\r\n<address>Перезвоните мне</address>',1,'head_left_2',706,'2014-08-17 18:32:10','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,1,'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*'),(96,'Копирайт','','<p>© 2014 I am style  -  Все права защищены | <a href=\"informatsiya-o-vozvrate\">Порядок возврата</a> | <a href=\"karta-sajta\">Карта сайта</a></p>',1,'foot_left',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,1,'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*'),(97,'Карты','','<p><img src=\"images/cards.png\" border=\"0\" alt=\"\" /></p>',0,'foot_right',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,1,'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*'),(98,'Недавно просмотренные товары','','',1,'bottom',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_virtuemart_randcatproduct',1,1,'{\"kol\":\"18\",\"kolstr\":\"6\",\"show_addcart\":\"0\",\"show_price\":\"1\",\"show_car\":\"1\",\"shirinastr\":\"980\",\"stepcarusel\":\"1\",\"show_jquery\":\"0\",\"category\":\"3\",\"virtuemart_category_idn\":\"0\",\"vmmanufacturer_idn\":\"0\",\"stock\":\"0\",\"show_all\":\"0\",\"cur_product\":\"0\",\"cur_manufacturer\":\"0\",\"layout\":\"_:default\",\"cache\":\"0\",\"cached\":\"1\",\"moduleclass_sfx\":\"\",\"class_sfx\":\"\"}',0,'*'),(99,'Sj Vm Extra Slider','','',0,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',-2,'mod_sj_vm_extraslider',1,1,'',0,'*'),(100,'Слайдер','','',1,'slider',706,'2014-08-17 18:35:55','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_djimageslider',1,1,'{\"slider_source\":\"1\",\"slider_type\":\"2\",\"link_image\":\"2\",\"image_folder\":\"images\\/sampledata\\/fruitshop\",\"link\":\"\",\"category\":\"8\",\"show_title\":\"1\",\"show_desc\":\"1\",\"show_readmore\":\"0\",\"readmore_text\":\"\\u0421\\u043c\\u043e\\u0442\\u0440\\u0435\\u0442\\u044c\",\"link_title\":\"0\",\"link_desc\":\"0\",\"limit_desc\":\"100\",\"image_width\":\"980\",\"image_height\":\"300\",\"fit_to\":\"2\",\"visible_images\":\"1\",\"space_between_images\":\"0\",\"max_images\":\"20\",\"sort_by\":\"1\",\"effect\":\"Back\",\"autoplay\":\"1\",\"show_buttons\":\"0\",\"show_arrows\":\"0\",\"show_custom_nav\":\"1\",\"desc_width\":\"\",\"desc_bottom\":\"0\",\"desc_horizontal\":\"0\",\"left_arrow\":\"\",\"right_arrow\":\"\",\"play_button\":\"\",\"pause_button\":\"\",\"arrows_top\":\"30\",\"arrows_horizontal\":\"5\",\"effect_type\":\"0\",\"duration\":\"1500\",\"delay\":\"5000\",\"preload\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\"}',0,'*'),(101,'Поиск по сайту','','',1,'search',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_search',1,1,'{\"label\":\"\",\"width\":\"20\",\"text\":\"\\u041f\\u043e\\u0438\\u0441\\u043a \\u0442\\u043e\\u0432\\u0430\\u0440\\u043e\\u0432...\",\"button\":\"1\",\"button_pos\":\"right\",\"imagebutton\":\"\",\"button_text\":\"\\u0418\\u0441\\u043a\\u0430\\u0442\\u044c\",\"opensearch\":\"0\",\"opensearch_title\":\"\",\"set_itemid\":\"142\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}',0,'*');
/*!40000 ALTER TABLE `uzlnh_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uzlnh_modules_menu`
--

DROP TABLE IF EXISTS `uzlnh_modules_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uzlnh_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uzlnh_modules_menu`
--

LOCK TABLES `uzlnh_modules_menu` WRITE;
/*!40000 ALTER TABLE `uzlnh_modules_menu` DISABLE KEYS */;
INSERT INTO `uzlnh_modules_menu` VALUES (1,0),(2,0),(3,0),(4,0),(6,0),(7,0),(8,0),(9,0),(10,0),(12,0),(13,0),(14,0),(15,0),(16,0),(17,-101),(79,0),(86,0),(87,0),(88,0),(89,0),(90,0),(91,0),(92,0),(94,0),(95,0),(96,0),(97,0),(98,101),(98,120),(98,121),(98,123),(100,101),(101,0);
/*!40000 ALTER TABLE `uzlnh_modules_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uzlnh_newsfeeds`
--

DROP TABLE IF EXISTS `uzlnh_newsfeeds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uzlnh_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `link` varchar(200) NOT NULL DEFAULT '',
  `filename` varchar(200) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(10) unsigned NOT NULL DEFAULT '3600',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uzlnh_newsfeeds`
--

LOCK TABLES `uzlnh_newsfeeds` WRITE;
/*!40000 ALTER TABLE `uzlnh_newsfeeds` DISABLE KEYS */;
/*!40000 ALTER TABLE `uzlnh_newsfeeds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uzlnh_overrider`
--

DROP TABLE IF EXISTS `uzlnh_overrider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uzlnh_overrider` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `constant` varchar(255) NOT NULL,
  `string` text NOT NULL,
  `file` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uzlnh_overrider`
--

LOCK TABLES `uzlnh_overrider` WRITE;
/*!40000 ALTER TABLE `uzlnh_overrider` DISABLE KEYS */;
/*!40000 ALTER TABLE `uzlnh_overrider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uzlnh_redirect_links`
--

DROP TABLE IF EXISTS `uzlnh_redirect_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uzlnh_redirect_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `old_url` varchar(255) NOT NULL,
  `new_url` varchar(255) NOT NULL,
  `referer` varchar(150) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_link_old` (`old_url`),
  KEY `idx_link_modifed` (`modified_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uzlnh_redirect_links`
--

LOCK TABLES `uzlnh_redirect_links` WRITE;
/*!40000 ALTER TABLE `uzlnh_redirect_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `uzlnh_redirect_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uzlnh_schemas`
--

DROP TABLE IF EXISTS `uzlnh_schemas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uzlnh_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) NOT NULL,
  PRIMARY KEY (`extension_id`,`version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uzlnh_schemas`
--

LOCK TABLES `uzlnh_schemas` WRITE;
/*!40000 ALTER TABLE `uzlnh_schemas` DISABLE KEYS */;
INSERT INTO `uzlnh_schemas` VALUES (700,'2.5.22'),(10042,'2.0');
/*!40000 ALTER TABLE `uzlnh_schemas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uzlnh_session`
--

DROP TABLE IF EXISTS `uzlnh_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uzlnh_session` (
  `session_id` varchar(200) NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `guest` tinyint(4) unsigned DEFAULT '1',
  `time` varchar(14) DEFAULT '',
  `data` mediumtext,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) DEFAULT '',
  `usertype` varchar(50) DEFAULT '',
  PRIMARY KEY (`session_id`),
  KEY `whosonline` (`guest`,`usertype`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uzlnh_session`
--

LOCK TABLES `uzlnh_session` WRITE;
/*!40000 ALTER TABLE `uzlnh_session` DISABLE KEYS */;
INSERT INTO `uzlnh_session` VALUES ('74ffa91f0ccab32685e7f61acea6195d',0,1,'1436570695','__default|a:8:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1436570695;s:18:\"session.timer.last\";i:1436570695;s:17:\"session.timer.now\";i:1436570695;s:24:\"session.client.forwarded\";s:13:\"5.255.253.106\";s:22:\"session.client.browser\";s:64:\"Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)\";s:8:\"registry\";O:9:\"JRegistry\":1:{s:7:\"\0*\0data\";O:8:\"stdClass\":1:{s:14:\"com_virtuemart\";O:8:\"stdClass\":1:{s:8:\"category\";O:8:\"stdClass\":1:{s:12:\"filter_order\";s:11:\"pc.ordering\";}}}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\0*\0isRoot\";b:0;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:8:\"usertype\";N;s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:0:{}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:10:\"\0*\0_params\";O:9:\"JRegistry\":1:{s:7:\"\0*\0data\";O:8:\"stdClass\":0:{}}s:14:\"\0*\0_authGroups\";a:1:{i:0;i:1;}s:14:\"\0*\0_authLevels\";a:2:{i:0;i:1;i:1;i:1;}s:15:\"\0*\0_authActions\";N;s:12:\"\0*\0_errorMsg\";N;s:10:\"\0*\0_errors\";a:0:{}s:3:\"aid\";i:0;}}__vm|a:3:{s:6:\"vmcart\";s:645:\"O:8:\"stdClass\":24:{s:8:\"products\";a:0:{}s:8:\"vendorId\";i:1;s:21:\"lastVisitedCategoryId\";i:0;s:28:\"virtuemart_shipmentmethod_id\";i:0;s:27:\"virtuemart_paymentmethod_id\";i:0;s:25:\"automaticSelectedShipment\";b:0;s:24:\"automaticSelectedPayment\";b:0;s:12:\"order_number\";N;s:2:\"BT\";i:0;s:2:\"ST\";i:0;s:11:\"tosAccepted\";N;s:16:\"customer_comment\";s:0:\"\";s:10:\"couponCode\";s:0:\"\";s:20:\"_triesValidateCoupon\";a:0:{}s:14:\"order_language\";s:0:\"\";s:8:\"cartData\";N;s:5:\"lists\";N;s:14:\"pricesCurrency\";N;s:15:\"paymentCurrency\";N;s:11:\"_inCheckOut\";b:0;s:14:\"_dataValidated\";b:0;s:12:\"_confirmDone\";b:0;s:10:\"STsameAsBT\";b:1;s:15:\"customer_number\";s:7:\"nonreg_\";}\";s:23:\"vmlastvisitedcategoryid\";i:9;s:19:\"vmlastvisitedmanuid\";i:-1;}',0,'','');
/*!40000 ALTER TABLE `uzlnh_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uzlnh_template_styles`
--

DROP TABLE IF EXISTS `uzlnh_template_styles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uzlnh_template_styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(50) NOT NULL DEFAULT '',
  `client_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `home` char(7) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_home` (`home`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uzlnh_template_styles`
--

LOCK TABLES `uzlnh_template_styles` WRITE;
/*!40000 ALTER TABLE `uzlnh_template_styles` DISABLE KEYS */;
INSERT INTO `uzlnh_template_styles` VALUES (2,'bluestork',1,'1','Bluestork - По умолчанию','{\"useRoundedCorners\":\"1\",\"showSiteName\":\"0\"}'),(3,'atomic',0,'0','Atomic - По умолчанию','{}'),(4,'beez_20',0,'0','Beez2 - По умолчанию','{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"logo\":\"images\\/joomla_black.gif\",\"sitetitle\":\"Joomla!\",\"sitedescription\":\"Open Source Content Management\",\"navposition\":\"left\",\"templatecolor\":\"personal\",\"html5\":\"0\"}'),(5,'hathor',1,'0','Hathor - По умолчанию','{\"showSiteName\":\"0\",\"colourChoice\":\"\",\"boldText\":\"0\"}'),(6,'beez5',0,'0','Beez5 - По умолчанию','{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"logo\":\"images\\/sampledata\\/fruitshop\\/fruits.gif\",\"sitetitle\":\"Joomla!\",\"sitedescription\":\"Open Source Content Management\",\"navposition\":\"left\",\"html5\":\"0\"}'),(7,'imstyle',0,'1','imstyle - По умолчанию','{}');
/*!40000 ALTER TABLE `uzlnh_template_styles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uzlnh_update_categories`
--

DROP TABLE IF EXISTS `uzlnh_update_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uzlnh_update_categories` (
  `categoryid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT '',
  `description` text NOT NULL,
  `parent` int(11) DEFAULT '0',
  `updatesite` int(11) DEFAULT '0',
  PRIMARY KEY (`categoryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Update Categories';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uzlnh_update_categories`
--

LOCK TABLES `uzlnh_update_categories` WRITE;
/*!40000 ALTER TABLE `uzlnh_update_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `uzlnh_update_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uzlnh_update_sites`
--

DROP TABLE IF EXISTS `uzlnh_update_sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uzlnh_update_sites` (
  `update_site_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `location` text NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  PRIMARY KEY (`update_site_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COMMENT='Update Sites';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uzlnh_update_sites`
--

LOCK TABLES `uzlnh_update_sites` WRITE;
/*!40000 ALTER TABLE `uzlnh_update_sites` DISABLE KEYS */;
INSERT INTO `uzlnh_update_sites` VALUES (1,'Joomla Core','collection','http://update.joomla.org/core/list.xml',1,1429367084),(2,'Joomla Extension Directory','collection','http://update.joomla.org/jed/list.xml',1,1429367084),(3,'Accredited Joomla! Translations','collection','http://update.joomla.org/language/translationlist.xml',1,1429367084),(4,'VirtueMart plg_vmpayment_standard Update Site','extension','http://virtuemart.net/releases/vm2/plg_vmpayment_standard_update.xml',1,1429367084),(5,'VirtueMart plg_vmpayment_klarna Update Site','extension','http://virtuemart.net/releases/vm2/plg_vmpayment_klarna_update.xml',1,1429367084),(6,'VirtueMart plg_vmpayment_klarnacheckout Update Site','extension','http://virtuemart.net/releases/vm2/plg_vmpayment_klarnacheckout_update.xml',1,1429367084),(7,'VirtueMart plg_vmpayment_sofort Update Site','extension','http://virtuemart.net/releases/vm2/plg_vmpayment_sofort_update.xml',1,1429367084),(8,'VirtueMart plg_vmpayment_paypal Update Site','extension','http://virtuemart.net/releases/vm2/plg_vmpayment_paypal_update.xml',1,1429367084),(9,'VirtueMart plg_vmpayment_heidelpay Update Site','extension','http://virtuemart.net/releases/vm2/plg_vmpayment_heidelpay_update.xml',1,1429367087),(10,'VirtueMart plg_vmpayment_paybox Update Site','extension','http://virtuemart.net/releases/vm2/plg_vmpayment_paybox_update.xml',1,1429367087),(11,'VirtueMart plg_vmpayment_moneybookers Update Site','extension','http://virtuemart.net/releases/vm2/plg_vmpayment_moneybookers_update.xml',1,1429367087),(12,'VirtueMart plg_vmpayment_moneybookers_acc Update Site','extension','http://virtuemart.net/releases/vm2/plg_vmpayment_moneybookers_acc_update.xml',1,1429367087),(13,'VirtueMart plg_vmpayment_moneybookers_did Update Site','extension','http://virtuemart.net/releases/vm2/plg_vmpayment_moneybookers_did_update.xml',1,1429367087),(14,'VirtueMart plg_vmpayment_moneybookers_idl Update Site','extension','http://virtuemart.net/releases/vm2/plg_vmpayment_moneybookers_idl_update.xml',1,1429367087),(15,'VirtueMart plg_vmpayment_moneybookers_gir Update Site','extension','http://virtuemart.net/releases/vm2/plg_vmpayment_moneybookers_gir_update.xml',1,1429367087),(16,'VirtueMart plg_vmpayment_moneybookers_sft Update Site','extension','http://virtuemart.net/releases/vm2/plg_vmpayment_moneybookers_sft_update.xml',1,1429367087),(17,'VirtueMart plg_vmpayment_moneybookers_pwy Update Site','extension','http://virtuemart.net/releases/vm2/plg_vmpayment_moneybookers_pwy_update.xml',1,1429367087),(18,'VirtueMart plg_vmpayment_moneybookers_obt Update Site','extension','http://virtuemart.net/releases/vm2/plg_vmpayment_moneybookers_obt_update.xml',1,1429367087),(19,'VirtueMart plg_vmpayment_moneybookers_wlt Update Site','extension','http://virtuemart.net/releases/vm2/plg_vmpayment_moneybookers_wlt_update.xml',1,1429367087),(20,'VirtueMart plg_vmpayment_authorisenet Update Site','extension','http://virtuemart.net/releases/vm2/plg_vmpayment_authorisenet_update.xml',1,1429367087),(21,'VirtueMart plg_vmpayment_sofort_ideal Update Site','extension','http://virtuemart.net/releases/vm2/plg_vmpayment_sofort_ideal_update.xml',1,1429367087),(22,'VirtueMart plg_vmshipment_weight_countries Update Site','extension','http://virtuemart.net/releases/vm2/plg_vmshipment_weight_countries_update.xml',1,1429367087),(23,'VirtueMart plg_vmcustom_textinput Update Site','extension','http://virtuemart.net/releases/vm2/plg_vmcustom_textinput_update.xml',1,1429367087),(24,'VirtueMart plg_vmcustom_specification Update Site','extension','http://virtuemart.net/releases/vm2/plg_vmcustom_specification_update.xml',1,1429367087),(25,'VirtueMart plg_vmcustom_stockable Update Site','extension','http://virtuemart.net/releases/vm2/plg_vmcustom_stockable_update.xml',1,1429367087),(26,'mod_virtuemart_param_filter','extension','http://myext.ru/updates/mcf2/mod_virtuemart_param_filter.xml',0,1405333400),(27,'Xmap Update Site','extension','https://raw.github.com/guilleva/Xmap/master/xmap-update.xml',0,1405948776);
/*!40000 ALTER TABLE `uzlnh_update_sites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uzlnh_update_sites_extensions`
--

DROP TABLE IF EXISTS `uzlnh_update_sites_extensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uzlnh_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`update_site_id`,`extension_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Links extensions to update sites';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uzlnh_update_sites_extensions`
--

LOCK TABLES `uzlnh_update_sites_extensions` WRITE;
/*!40000 ALTER TABLE `uzlnh_update_sites_extensions` DISABLE KEYS */;
INSERT INTO `uzlnh_update_sites_extensions` VALUES (1,700),(2,700),(3,600),(4,10004),(5,10017),(6,10031),(7,10032),(8,10005),(9,10018),(10,10033),(11,10034),(12,10008),(13,10009),(14,10010),(15,10011),(16,10012),(17,10013),(18,10014),(19,10015),(20,10016),(21,10035),(22,10019),(23,10020),(24,10021),(25,10022),(26,10038),(27,10045);
/*!40000 ALTER TABLE `uzlnh_update_sites_extensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uzlnh_updates`
--

DROP TABLE IF EXISTS `uzlnh_updates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uzlnh_updates` (
  `update_id` int(11) NOT NULL AUTO_INCREMENT,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `categoryid` int(11) DEFAULT '0',
  `name` varchar(100) DEFAULT '',
  `description` text NOT NULL,
  `element` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `folder` varchar(20) DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(10) DEFAULT '',
  `data` text NOT NULL,
  `detailsurl` text NOT NULL,
  `infourl` text NOT NULL,
  PRIMARY KEY (`update_id`)
) ENGINE=InnoDB AUTO_INCREMENT=424 DEFAULT CHARSET=utf8 COMMENT='Available Updates';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uzlnh_updates`
--

LOCK TABLES `uzlnh_updates` WRITE;
/*!40000 ALTER TABLE `uzlnh_updates` DISABLE KEYS */;
INSERT INTO `uzlnh_updates` VALUES (2,3,0,0,'Armenian','','pkg_hy-AM','package','',0,'2.5.8.1','','http://update.joomla.org/language/details/hy-AM_details.xml',''),(3,3,0,0,'Bahasa Indonesia','','pkg_id-ID','package','',0,'2.5.20.1','','http://update.joomla.org/language/details/id-ID_details.xml',''),(4,3,0,0,'Danish','','pkg_da-DK','package','',0,'2.5.20.1','','http://update.joomla.org/language/details/da-DK_details.xml',''),(5,3,0,0,'Khmer','','pkg_km-KH','package','',0,'2.5.7.1','','http://update.joomla.org/language/details/km-KH_details.xml',''),(6,3,0,0,'Swedish','','pkg_sv-SE','package','',0,'2.5.10.1','','http://update.joomla.org/language/details/sv-SE_details.xml',''),(7,3,0,0,'Hungarian','','pkg_hu-HU','package','',0,'2.5.14.1','','http://update.joomla.org/language/details/hu-HU_details.xml',''),(8,3,0,0,'Bulgarian','','pkg_bg-BG','package','',0,'2.5.7.1','','http://update.joomla.org/language/details/bg-BG_details.xml',''),(9,3,0,0,'French','','pkg_fr-FR','package','',0,'2.5.22.1','','http://update.joomla.org/language/details/fr-FR_details.xml',''),(10,3,0,0,'Italian','','pkg_it-IT','package','',0,'2.5.22.1','','http://update.joomla.org/language/details/it-IT_details.xml',''),(11,3,0,0,'Spanish','','pkg_es-ES','package','',0,'2.5.20.1','','http://update.joomla.org/language/details/es-ES_details.xml',''),(12,3,0,0,'Dutch','','pkg_nl-NL','package','',0,'2.5.22.1','','http://update.joomla.org/language/details/nl-NL_details.xml',''),(13,3,0,0,'Turkish','','pkg_tr-TR','package','',0,'2.5.20.1','','http://update.joomla.org/language/details/tr-TR_details.xml',''),(14,3,0,0,'Ukrainian','','pkg_uk-UA','package','',0,'2.5.13.11','','http://update.joomla.org/language/details/uk-UA_details.xml',''),(15,3,0,0,'Slovak','','pkg_sk-SK','package','',0,'2.5.22.1','','http://update.joomla.org/language/details/sk-SK_details.xml',''),(16,3,0,0,'Belarusian','','pkg_be-BY','package','',0,'2.5.8.1','','http://update.joomla.org/language/details/be-BY_details.xml',''),(17,3,0,0,'Latvian','','pkg_lv-LV','package','',0,'2.5.22.1','','http://update.joomla.org/language/details/lv-LV_details.xml',''),(18,3,0,0,'Estonian','','pkg_et-EE','package','',0,'2.5.21.1','','http://update.joomla.org/language/details/et-EE_details.xml',''),(19,3,0,0,'Romanian','','pkg_ro-RO','package','',0,'2.5.11.1','','http://update.joomla.org/language/details/ro-RO_details.xml',''),(20,3,0,0,'Flemish','','pkg_nl-BE','package','',0,'2.5.22.1','','http://update.joomla.org/language/details/nl-BE_details.xml',''),(21,3,0,0,'Macedonian','','pkg_mk-MK','package','',0,'2.5.20.1','','http://update.joomla.org/language/details/mk-MK_details.xml',''),(22,3,0,0,'Japanese','','pkg_ja-JP','package','',0,'2.5.22.1','','http://update.joomla.org/language/details/ja-JP_details.xml',''),(23,3,0,0,'Serbian Latin','','pkg_sr-YU','package','',0,'2.5.20.1','','http://update.joomla.org/language/details/sr-YU_details.xml',''),(24,3,0,0,'Arabic Unitag','','pkg_ar-AA','package','',0,'2.5.21.1','','http://update.joomla.org/language/details/ar-AA_details.xml',''),(25,3,0,0,'German','','pkg_de-DE','package','',0,'2.5.22.1','','http://update.joomla.org/language/details/de-DE_details.xml',''),(26,3,0,0,'Norwegian Bokmal','','pkg_nb-NO','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/nb-NO_details.xml',''),(27,3,0,0,'English AU','','pkg_en-AU','package','',0,'2.5.22.1','','http://update.joomla.org/language/details/en-AU_details.xml',''),(28,3,0,0,'English US','','pkg_en-US','package','',0,'2.5.22.1','','http://update.joomla.org/language/details/en-US_details.xml',''),(29,3,0,0,'Serbian Cyrillic','','pkg_sr-RS','package','',0,'2.5.20.1','','http://update.joomla.org/language/details/sr-RS_details.xml',''),(30,3,0,0,'Lithuanian','','pkg_lt-LT','package','',0,'2.5.7.1','','http://update.joomla.org/language/details/lt-LT_details.xml',''),(31,3,0,0,'Albanian','','pkg_sq-AL','package','',0,'2.5.1.5','','http://update.joomla.org/language/details/sq-AL_details.xml',''),(32,3,0,0,'Czech','','pkg_cs-CZ','package','',0,'2.5.22.1','','http://update.joomla.org/language/details/cs-CZ_details.xml',''),(33,3,0,0,'Persian','','pkg_fa-IR','package','',0,'2.5.22.1','','http://update.joomla.org/language/details/fa-IR_details.xml',''),(34,3,0,0,'Galician','','pkg_gl-ES','package','',0,'2.5.7.4','','http://update.joomla.org/language/details/gl-ES_details.xml',''),(35,3,0,0,'Polish','','pkg_pl-PL','package','',0,'2.5.22.1','','http://update.joomla.org/language/details/pl-PL_details.xml',''),(36,3,0,0,'Syriac','','pkg_sy-IQ','package','',0,'2.5.19.1','','http://update.joomla.org/language/details/sy-IQ_details.xml',''),(37,3,0,0,'Portuguese','','pkg_pt-PT','package','',0,'2.5.8.1','','http://update.joomla.org/language/details/pt-PT_details.xml',''),(38,3,0,0,'Russian','','pkg_ru-RU','package','',0,'2.5.22.1','','http://update.joomla.org/language/details/ru-RU_details.xml',''),(39,3,0,0,'Hebrew','','pkg_he-IL','package','',0,'2.5.7.1','','http://update.joomla.org/language/details/he-IL_details.xml',''),(40,3,0,0,'Catalan','','pkg_ca-ES','package','',0,'2.5.21.1','','http://update.joomla.org/language/details/ca-ES_details.xml',''),(41,3,0,0,'Laotian','','pkg_lo-LA','package','',0,'2.5.6.1','','http://update.joomla.org/language/details/lo-LA_details.xml',''),(42,3,0,0,'Afrikaans','','pkg_af-ZA','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/af-ZA_details.xml',''),(43,3,0,0,'Chinese Simplified','','pkg_zh-CN','package','',0,'2.5.20.1','','http://update.joomla.org/language/details/zh-CN_details.xml',''),(44,3,0,0,'Greek','','pkg_el-GR','package','',0,'2.5.6.1','','http://update.joomla.org/language/details/el-GR_details.xml',''),(45,3,0,0,'Finnish','','pkg_fi-FI','package','',0,'2.5.20.1','','http://update.joomla.org/language/details/fi-FI_details.xml',''),(46,3,0,0,'Portuguese Brazil','','pkg_pt-BR','package','',0,'2.5.9.1','','http://update.joomla.org/language/details/pt-BR_details.xml',''),(47,3,0,0,'Chinese Traditional','','pkg_zh-TW','package','',0,'2.5.19.1','','http://update.joomla.org/language/details/zh-TW_details.xml',''),(48,3,0,0,'Vietnamese','','pkg_vi-VN','package','',0,'2.5.8.1','','http://update.joomla.org/language/details/vi-VN_details.xml',''),(49,3,0,0,'Kurdish Sorani','','pkg_ckb-IQ','package','',0,'2.5.9.1','','http://update.joomla.org/language/details/ckb-IQ_details.xml',''),(50,3,0,0,'Bengali','','pkg_bn-BD','package','',0,'2.5.0.1','','http://update.joomla.org/language/details/bn-BD_details.xml',''),(51,3,0,0,'Bosnian','','pkg_bs-BA','package','',0,'2.5.22.1','','http://update.joomla.org/language/details/bs-BA_details.xml',''),(52,3,0,0,'Croatian','','pkg_hr-HR','package','',0,'2.5.13.1','','http://update.joomla.org/language/details/hr-HR_details.xml',''),(53,3,0,0,'Azeri','','pkg_az-AZ','package','',0,'2.5.7.1','','http://update.joomla.org/language/details/az-AZ_details.xml',''),(54,3,0,0,'Norwegian Nynorsk','','pkg_nn-NO','package','',0,'2.5.8.1','','http://update.joomla.org/language/details/nn-NO_details.xml',''),(55,3,0,0,'Tamil India','','pkg_ta-IN','package','',0,'2.5.22.1','','http://update.joomla.org/language/details/ta-IN_details.xml',''),(56,3,0,0,'Scottish Gaelic','','pkg_gd-GB','package','',0,'2.5.7.1','','http://update.joomla.org/language/details/gd-GB_details.xml',''),(57,3,0,0,'Thai','','pkg_th-TH','package','',0,'2.5.21.1','','http://update.joomla.org/language/details/th-TH_details.xml',''),(58,3,0,0,'Basque','','pkg_eu-ES','package','',0,'1.7.0.1','','http://update.joomla.org/language/details/eu-ES_details.xml',''),(59,3,0,0,'Uyghur','','pkg_ug-CN','package','',0,'2.5.7.2','','http://update.joomla.org/language/details/ug-CN_details.xml',''),(60,3,0,0,'Korean','','pkg_ko-KR','package','',0,'2.5.11.1','','http://update.joomla.org/language/details/ko-KR_details.xml',''),(61,3,0,0,'Hindi','','pkg_hi-IN','package','',0,'2.5.6.1','','http://update.joomla.org/language/details/hi-IN_details.xml',''),(62,3,0,0,'Welsh','','pkg_cy-GB','package','',0,'2.5.6.1','','http://update.joomla.org/language/details/cy-GB_details.xml',''),(63,3,0,0,'Swahili','','pkg_sw-KE','package','',0,'2.5.21.1','','http://update.joomla.org/language/details/sw-KE_details.xml',''),(64,1,700,0,'Joomla','','joomla','file','',0,'2.5.24','','http://update.joomla.org/core/extension.xml',''),(65,3,0,0,'Danish','','pkg_da-DK','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/da-DK_details.xml',''),(66,3,0,0,'French','','pkg_fr-FR','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/fr-FR_details.xml',''),(67,3,0,0,'Italian','','pkg_it-IT','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/it-IT_details.xml',''),(68,3,0,0,'Latvian','','pkg_lv-LV','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/lv-LV_details.xml',''),(69,3,0,0,'Flemish','','pkg_nl-BE','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/nl-BE_details.xml',''),(70,3,0,0,'Japanese','','pkg_ja-JP','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/ja-JP_details.xml',''),(71,3,0,0,'Arabic Unitag','','pkg_ar-AA','package','',0,'2.5.23.1','','http://update.joomla.org/language/details/ar-AA_details.xml',''),(72,3,0,0,'German','','pkg_de-DE','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/de-DE_details.xml',''),(73,3,0,0,'Czech','','pkg_cs-CZ','package','',0,'2.5.23.1','','http://update.joomla.org/language/details/cs-CZ_details.xml',''),(74,3,0,0,'Polish','','pkg_pl-PL','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/pl-PL_details.xml',''),(75,3,0,0,'Tamil India','','pkg_ta-IN','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/ta-IN_details.xml',''),(76,3,0,0,'Swahili','','pkg_sw-KE','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/sw-KE_details.xml',''),(77,3,0,0,'Danish','','pkg_da-DK','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/da-DK_details.xml',''),(78,3,0,0,'French','','pkg_fr-FR','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/fr-FR_details.xml',''),(79,3,0,0,'Italian','','pkg_it-IT','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/it-IT_details.xml',''),(80,3,0,0,'Latvian','','pkg_lv-LV','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/lv-LV_details.xml',''),(81,3,0,0,'Flemish','','pkg_nl-BE','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/nl-BE_details.xml',''),(82,3,0,0,'Japanese','','pkg_ja-JP','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/ja-JP_details.xml',''),(83,3,0,0,'Arabic Unitag','','pkg_ar-AA','package','',0,'2.5.23.1','','http://update.joomla.org/language/details/ar-AA_details.xml',''),(84,3,0,0,'German','','pkg_de-DE','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/de-DE_details.xml',''),(85,3,0,0,'Czech','','pkg_cs-CZ','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/cs-CZ_details.xml',''),(86,3,0,0,'Polish','','pkg_pl-PL','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/pl-PL_details.xml',''),(87,3,0,0,'Tamil India','','pkg_ta-IN','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/ta-IN_details.xml',''),(88,3,0,0,'Swahili','','pkg_sw-KE','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/sw-KE_details.xml',''),(89,3,0,0,'Danish','','pkg_da-DK','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/da-DK_details.xml',''),(90,3,0,0,'French','','pkg_fr-FR','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/fr-FR_details.xml',''),(91,3,0,0,'Italian','','pkg_it-IT','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/it-IT_details.xml',''),(92,3,0,0,'Dutch','','pkg_nl-NL','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/nl-NL_details.xml',''),(93,3,0,0,'Latvian','','pkg_lv-LV','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/lv-LV_details.xml',''),(94,3,0,0,'Flemish','','pkg_nl-BE','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/nl-BE_details.xml',''),(95,3,0,0,'Japanese','','pkg_ja-JP','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/ja-JP_details.xml',''),(96,3,0,0,'Arabic Unitag','','pkg_ar-AA','package','',0,'2.5.23.1','','http://update.joomla.org/language/details/ar-AA_details.xml',''),(97,3,0,0,'German','','pkg_de-DE','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/de-DE_details.xml',''),(98,3,0,0,'Czech','','pkg_cs-CZ','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/cs-CZ_details.xml',''),(99,3,0,0,'Polish','','pkg_pl-PL','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/pl-PL_details.xml',''),(100,3,0,0,'Russian','','pkg_ru-RU','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/ru-RU_details.xml',''),(101,3,0,0,'Tamil India','','pkg_ta-IN','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/ta-IN_details.xml',''),(102,3,0,0,'Thai','','pkg_th-TH','package','',0,'2.5.23.1','','http://update.joomla.org/language/details/th-TH_details.xml',''),(103,3,0,0,'Swahili','','pkg_sw-KE','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/sw-KE_details.xml',''),(104,3,0,0,'Danish','','pkg_da-DK','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/da-DK_details.xml',''),(105,3,0,0,'French','','pkg_fr-FR','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/fr-FR_details.xml',''),(106,3,0,0,'Italian','','pkg_it-IT','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/it-IT_details.xml',''),(107,3,0,0,'Dutch','','pkg_nl-NL','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/nl-NL_details.xml',''),(108,3,0,0,'Latvian','','pkg_lv-LV','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/lv-LV_details.xml',''),(109,3,0,0,'Flemish','','pkg_nl-BE','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/nl-BE_details.xml',''),(110,3,0,0,'Japanese','','pkg_ja-JP','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/ja-JP_details.xml',''),(111,3,0,0,'Arabic Unitag','','pkg_ar-AA','package','',0,'2.5.23.1','','http://update.joomla.org/language/details/ar-AA_details.xml',''),(112,3,0,0,'German','','pkg_de-DE','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/de-DE_details.xml',''),(113,3,0,0,'Czech','','pkg_cs-CZ','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/cs-CZ_details.xml',''),(114,3,0,0,'Polish','','pkg_pl-PL','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/pl-PL_details.xml',''),(115,3,0,0,'Russian','','pkg_ru-RU','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/ru-RU_details.xml',''),(116,3,0,0,'Bosnian','','pkg_bs-BA','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/bs-BA_details.xml',''),(117,3,0,0,'Tamil India','','pkg_ta-IN','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/ta-IN_details.xml',''),(118,3,0,0,'Thai','','pkg_th-TH','package','',0,'2.5.23.1','','http://update.joomla.org/language/details/th-TH_details.xml',''),(119,3,0,0,'Swahili','','pkg_sw-KE','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/sw-KE_details.xml',''),(120,3,0,0,'Danish','','pkg_da-DK','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/da-DK_details.xml',''),(121,3,0,0,'French','','pkg_fr-FR','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/fr-FR_details.xml',''),(122,3,0,0,'Italian','','pkg_it-IT','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/it-IT_details.xml',''),(123,3,0,0,'Dutch','','pkg_nl-NL','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/nl-NL_details.xml',''),(124,3,0,0,'Latvian','','pkg_lv-LV','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/lv-LV_details.xml',''),(125,3,0,0,'Flemish','','pkg_nl-BE','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/nl-BE_details.xml',''),(126,3,0,0,'Japanese','','pkg_ja-JP','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/ja-JP_details.xml',''),(127,3,0,0,'Arabic Unitag','','pkg_ar-AA','package','',0,'2.5.23.1','','http://update.joomla.org/language/details/ar-AA_details.xml',''),(128,3,0,0,'German','','pkg_de-DE','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/de-DE_details.xml',''),(129,3,0,0,'Czech','','pkg_cs-CZ','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/cs-CZ_details.xml',''),(130,3,0,0,'Persian','','pkg_fa-IR','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/fa-IR_details.xml',''),(131,3,0,0,'Polish','','pkg_pl-PL','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/pl-PL_details.xml',''),(132,3,0,0,'Russian','','pkg_ru-RU','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/ru-RU_details.xml',''),(133,3,0,0,'Bosnian','','pkg_bs-BA','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/bs-BA_details.xml',''),(134,3,0,0,'Tamil India','','pkg_ta-IN','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/ta-IN_details.xml',''),(135,3,0,0,'Thai','','pkg_th-TH','package','',0,'2.5.23.1','','http://update.joomla.org/language/details/th-TH_details.xml',''),(136,3,0,0,'Swahili','','pkg_sw-KE','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/sw-KE_details.xml',''),(137,3,0,0,'Danish','','pkg_da-DK','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/da-DK_details.xml',''),(138,3,0,0,'French','','pkg_fr-FR','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/fr-FR_details.xml',''),(139,3,0,0,'Italian','','pkg_it-IT','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/it-IT_details.xml',''),(140,3,0,0,'Dutch','','pkg_nl-NL','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/nl-NL_details.xml',''),(141,3,0,0,'Latvian','','pkg_lv-LV','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/lv-LV_details.xml',''),(142,3,0,0,'Flemish','','pkg_nl-BE','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/nl-BE_details.xml',''),(143,3,0,0,'Japanese','','pkg_ja-JP','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/ja-JP_details.xml',''),(144,3,0,0,'Arabic Unitag','','pkg_ar-AA','package','',0,'2.5.23.1','','http://update.joomla.org/language/details/ar-AA_details.xml',''),(145,3,0,0,'German','','pkg_de-DE','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/de-DE_details.xml',''),(146,3,0,0,'Czech','','pkg_cs-CZ','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/cs-CZ_details.xml',''),(147,3,0,0,'Persian','','pkg_fa-IR','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/fa-IR_details.xml',''),(148,3,0,0,'Polish','','pkg_pl-PL','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/pl-PL_details.xml',''),(149,3,0,0,'Russian','','pkg_ru-RU','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/ru-RU_details.xml',''),(150,3,0,0,'Bosnian','','pkg_bs-BA','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/bs-BA_details.xml',''),(151,3,0,0,'Tamil India','','pkg_ta-IN','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/ta-IN_details.xml',''),(152,3,0,0,'Thai','','pkg_th-TH','package','',0,'2.5.23.1','','http://update.joomla.org/language/details/th-TH_details.xml',''),(153,3,0,0,'Swahili','','pkg_sw-KE','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/sw-KE_details.xml',''),(154,3,0,0,'Danish','','pkg_da-DK','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/da-DK_details.xml',''),(155,3,0,0,'French','','pkg_fr-FR','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/fr-FR_details.xml',''),(156,3,0,0,'Italian','','pkg_it-IT','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/it-IT_details.xml',''),(157,3,0,0,'Dutch','','pkg_nl-NL','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/nl-NL_details.xml',''),(158,3,0,0,'Latvian','','pkg_lv-LV','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/lv-LV_details.xml',''),(159,3,0,0,'Flemish','','pkg_nl-BE','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/nl-BE_details.xml',''),(160,3,0,0,'Japanese','','pkg_ja-JP','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/ja-JP_details.xml',''),(161,3,0,0,'Arabic Unitag','','pkg_ar-AA','package','',0,'2.5.23.1','','http://update.joomla.org/language/details/ar-AA_details.xml',''),(162,3,0,0,'German','','pkg_de-DE','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/de-DE_details.xml',''),(163,3,0,0,'Czech','','pkg_cs-CZ','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/cs-CZ_details.xml',''),(164,3,0,0,'Persian','','pkg_fa-IR','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/fa-IR_details.xml',''),(165,3,0,0,'Polish','','pkg_pl-PL','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/pl-PL_details.xml',''),(166,3,0,0,'Russian','','pkg_ru-RU','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/ru-RU_details.xml',''),(167,3,0,0,'Bosnian','','pkg_bs-BA','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/bs-BA_details.xml',''),(168,3,0,0,'Tamil India','','pkg_ta-IN','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/ta-IN_details.xml',''),(169,3,0,0,'Thai','','pkg_th-TH','package','',0,'2.5.23.1','','http://update.joomla.org/language/details/th-TH_details.xml',''),(170,3,0,0,'Swahili','','pkg_sw-KE','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/sw-KE_details.xml',''),(171,3,0,0,'Danish','','pkg_da-DK','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/da-DK_details.xml',''),(172,3,0,0,'French','','pkg_fr-FR','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/fr-FR_details.xml',''),(173,3,0,0,'Italian','','pkg_it-IT','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/it-IT_details.xml',''),(174,3,0,0,'Dutch','','pkg_nl-NL','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/nl-NL_details.xml',''),(175,3,0,0,'Latvian','','pkg_lv-LV','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/lv-LV_details.xml',''),(176,3,0,0,'Flemish','','pkg_nl-BE','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/nl-BE_details.xml',''),(177,3,0,0,'Japanese','','pkg_ja-JP','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/ja-JP_details.xml',''),(178,3,0,0,'Arabic Unitag','','pkg_ar-AA','package','',0,'2.5.23.1','','http://update.joomla.org/language/details/ar-AA_details.xml',''),(179,3,0,0,'German','','pkg_de-DE','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/de-DE_details.xml',''),(180,3,0,0,'Czech','','pkg_cs-CZ','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/cs-CZ_details.xml',''),(181,3,0,0,'Persian','','pkg_fa-IR','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/fa-IR_details.xml',''),(182,3,0,0,'Polish','','pkg_pl-PL','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/pl-PL_details.xml',''),(183,3,0,0,'Russian','','pkg_ru-RU','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/ru-RU_details.xml',''),(184,3,0,0,'Bosnian','','pkg_bs-BA','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/bs-BA_details.xml',''),(185,3,0,0,'Tamil India','','pkg_ta-IN','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/ta-IN_details.xml',''),(186,3,0,0,'Thai','','pkg_th-TH','package','',0,'2.5.23.1','','http://update.joomla.org/language/details/th-TH_details.xml',''),(187,3,0,0,'Swahili','','pkg_sw-KE','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/sw-KE_details.xml',''),(188,3,0,0,'Danish','','pkg_da-DK','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/da-DK_details.xml',''),(189,3,0,0,'French','','pkg_fr-FR','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/fr-FR_details.xml',''),(190,3,0,0,'Italian','','pkg_it-IT','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/it-IT_details.xml',''),(191,3,0,0,'Dutch','','pkg_nl-NL','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/nl-NL_details.xml',''),(192,3,0,0,'Latvian','','pkg_lv-LV','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/lv-LV_details.xml',''),(193,3,0,0,'Flemish','','pkg_nl-BE','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/nl-BE_details.xml',''),(194,3,0,0,'Japanese','','pkg_ja-JP','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/ja-JP_details.xml',''),(195,3,0,0,'Arabic Unitag','','pkg_ar-AA','package','',0,'2.5.23.1','','http://update.joomla.org/language/details/ar-AA_details.xml',''),(196,3,0,0,'German','','pkg_de-DE','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/de-DE_details.xml',''),(197,3,0,0,'Czech','','pkg_cs-CZ','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/cs-CZ_details.xml',''),(198,3,0,0,'Persian','','pkg_fa-IR','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/fa-IR_details.xml',''),(199,3,0,0,'Polish','','pkg_pl-PL','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/pl-PL_details.xml',''),(200,3,0,0,'Russian','','pkg_ru-RU','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/ru-RU_details.xml',''),(201,3,0,0,'Bosnian','','pkg_bs-BA','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/bs-BA_details.xml',''),(202,3,0,0,'Tamil India','','pkg_ta-IN','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/ta-IN_details.xml',''),(203,3,0,0,'Thai','','pkg_th-TH','package','',0,'2.5.23.1','','http://update.joomla.org/language/details/th-TH_details.xml',''),(204,3,0,0,'Swahili','','pkg_sw-KE','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/sw-KE_details.xml',''),(205,3,0,0,'Danish','','pkg_da-DK','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/da-DK_details.xml',''),(206,3,0,0,'French','','pkg_fr-FR','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/fr-FR_details.xml',''),(207,3,0,0,'Italian','','pkg_it-IT','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/it-IT_details.xml',''),(208,3,0,0,'Dutch','','pkg_nl-NL','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/nl-NL_details.xml',''),(209,3,0,0,'Latvian','','pkg_lv-LV','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/lv-LV_details.xml',''),(210,3,0,0,'Flemish','','pkg_nl-BE','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/nl-BE_details.xml',''),(211,3,0,0,'Japanese','','pkg_ja-JP','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/ja-JP_details.xml',''),(212,3,0,0,'Arabic Unitag','','pkg_ar-AA','package','',0,'2.5.23.1','','http://update.joomla.org/language/details/ar-AA_details.xml',''),(213,3,0,0,'German','','pkg_de-DE','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/de-DE_details.xml',''),(214,3,0,0,'Czech','','pkg_cs-CZ','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/cs-CZ_details.xml',''),(215,3,0,0,'Persian','','pkg_fa-IR','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/fa-IR_details.xml',''),(216,3,0,0,'Polish','','pkg_pl-PL','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/pl-PL_details.xml',''),(217,3,0,0,'Russian','','pkg_ru-RU','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/ru-RU_details.xml',''),(218,3,0,0,'Bosnian','','pkg_bs-BA','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/bs-BA_details.xml',''),(219,3,0,0,'Tamil India','','pkg_ta-IN','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/ta-IN_details.xml',''),(220,3,0,0,'Thai','','pkg_th-TH','package','',0,'2.5.23.1','','http://update.joomla.org/language/details/th-TH_details.xml',''),(221,3,0,0,'Swahili','','pkg_sw-KE','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/sw-KE_details.xml',''),(222,3,0,0,'Danish','','pkg_da-DK','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/da-DK_details.xml',''),(223,3,0,0,'French','','pkg_fr-FR','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/fr-FR_details.xml',''),(224,3,0,0,'Italian','','pkg_it-IT','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/it-IT_details.xml',''),(225,3,0,0,'Dutch','','pkg_nl-NL','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/nl-NL_details.xml',''),(226,3,0,0,'Latvian','','pkg_lv-LV','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/lv-LV_details.xml',''),(227,3,0,0,'Flemish','','pkg_nl-BE','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/nl-BE_details.xml',''),(228,3,0,0,'Japanese','','pkg_ja-JP','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/ja-JP_details.xml',''),(229,3,0,0,'Arabic Unitag','','pkg_ar-AA','package','',0,'2.5.23.1','','http://update.joomla.org/language/details/ar-AA_details.xml',''),(230,3,0,0,'German','','pkg_de-DE','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/de-DE_details.xml',''),(231,3,0,0,'Czech','','pkg_cs-CZ','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/cs-CZ_details.xml',''),(232,3,0,0,'Persian','','pkg_fa-IR','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/fa-IR_details.xml',''),(233,3,0,0,'Polish','','pkg_pl-PL','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/pl-PL_details.xml',''),(234,3,0,0,'Russian','','pkg_ru-RU','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/ru-RU_details.xml',''),(235,3,0,0,'Bosnian','','pkg_bs-BA','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/bs-BA_details.xml',''),(236,3,0,0,'Tamil India','','pkg_ta-IN','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/ta-IN_details.xml',''),(237,3,0,0,'Thai','','pkg_th-TH','package','',0,'2.5.23.1','','http://update.joomla.org/language/details/th-TH_details.xml',''),(238,3,0,0,'Swahili','','pkg_sw-KE','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/sw-KE_details.xml',''),(239,3,0,0,'Danish','','pkg_da-DK','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/da-DK_details.xml',''),(240,3,0,0,'French','','pkg_fr-FR','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/fr-FR_details.xml',''),(241,3,0,0,'Italian','','pkg_it-IT','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/it-IT_details.xml',''),(242,3,0,0,'Dutch','','pkg_nl-NL','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/nl-NL_details.xml',''),(243,3,0,0,'Latvian','','pkg_lv-LV','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/lv-LV_details.xml',''),(244,3,0,0,'Flemish','','pkg_nl-BE','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/nl-BE_details.xml',''),(245,3,0,0,'Japanese','','pkg_ja-JP','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/ja-JP_details.xml',''),(246,3,0,0,'Arabic Unitag','','pkg_ar-AA','package','',0,'2.5.23.1','','http://update.joomla.org/language/details/ar-AA_details.xml',''),(247,3,0,0,'German','','pkg_de-DE','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/de-DE_details.xml',''),(248,3,0,0,'Czech','','pkg_cs-CZ','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/cs-CZ_details.xml',''),(249,3,0,0,'Persian','','pkg_fa-IR','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/fa-IR_details.xml',''),(250,3,0,0,'Polish','','pkg_pl-PL','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/pl-PL_details.xml',''),(251,3,0,0,'Russian','','pkg_ru-RU','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/ru-RU_details.xml',''),(252,3,0,0,'Bosnian','','pkg_bs-BA','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/bs-BA_details.xml',''),(253,3,0,0,'Tamil India','','pkg_ta-IN','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/ta-IN_details.xml',''),(254,3,0,0,'Thai','','pkg_th-TH','package','',0,'2.5.23.1','','http://update.joomla.org/language/details/th-TH_details.xml',''),(255,3,0,0,'Swahili','','pkg_sw-KE','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/sw-KE_details.xml',''),(256,3,0,0,'Danish','','pkg_da-DK','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/da-DK_details.xml',''),(257,3,0,0,'French','','pkg_fr-FR','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/fr-FR_details.xml',''),(258,3,0,0,'Italian','','pkg_it-IT','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/it-IT_details.xml',''),(259,3,0,0,'Dutch','','pkg_nl-NL','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/nl-NL_details.xml',''),(260,3,0,0,'Latvian','','pkg_lv-LV','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/lv-LV_details.xml',''),(261,3,0,0,'Flemish','','pkg_nl-BE','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/nl-BE_details.xml',''),(262,3,0,0,'Japanese','','pkg_ja-JP','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/ja-JP_details.xml',''),(263,3,0,0,'Arabic Unitag','','pkg_ar-AA','package','',0,'2.5.23.1','','http://update.joomla.org/language/details/ar-AA_details.xml',''),(264,3,0,0,'German','','pkg_de-DE','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/de-DE_details.xml',''),(265,3,0,0,'Czech','','pkg_cs-CZ','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/cs-CZ_details.xml',''),(266,3,0,0,'Persian','','pkg_fa-IR','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/fa-IR_details.xml',''),(267,3,0,0,'Polish','','pkg_pl-PL','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/pl-PL_details.xml',''),(268,3,0,0,'Russian','','pkg_ru-RU','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/ru-RU_details.xml',''),(269,3,0,0,'Bosnian','','pkg_bs-BA','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/bs-BA_details.xml',''),(270,3,0,0,'Tamil India','','pkg_ta-IN','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/ta-IN_details.xml',''),(271,3,0,0,'Thai','','pkg_th-TH','package','',0,'2.5.23.1','','http://update.joomla.org/language/details/th-TH_details.xml',''),(272,3,0,0,'Swahili','','pkg_sw-KE','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/sw-KE_details.xml',''),(273,3,0,0,'Danish','','pkg_da-DK','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/da-DK_details.xml',''),(274,3,0,0,'French','','pkg_fr-FR','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/fr-FR_details.xml',''),(275,3,0,0,'Italian','','pkg_it-IT','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/it-IT_details.xml',''),(276,3,0,0,'Dutch','','pkg_nl-NL','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/nl-NL_details.xml',''),(277,3,0,0,'Latvian','','pkg_lv-LV','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/lv-LV_details.xml',''),(278,3,0,0,'Flemish','','pkg_nl-BE','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/nl-BE_details.xml',''),(279,3,0,0,'Japanese','','pkg_ja-JP','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/ja-JP_details.xml',''),(280,3,0,0,'Serbian Latin','','pkg_sr-YU','package','',0,'2.5.20.2','','http://update.joomla.org/language/details/sr-YU_details.xml',''),(281,3,0,0,'Arabic Unitag','','pkg_ar-AA','package','',0,'2.5.23.1','','http://update.joomla.org/language/details/ar-AA_details.xml',''),(282,3,0,0,'German','','pkg_de-DE','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/de-DE_details.xml',''),(283,3,0,0,'Czech','','pkg_cs-CZ','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/cs-CZ_details.xml',''),(284,3,0,0,'Persian','','pkg_fa-IR','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/fa-IR_details.xml',''),(285,3,0,0,'Polish','','pkg_pl-PL','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/pl-PL_details.xml',''),(286,3,0,0,'Russian','','pkg_ru-RU','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/ru-RU_details.xml',''),(287,3,0,0,'Bosnian','','pkg_bs-BA','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/bs-BA_details.xml',''),(288,3,0,0,'Tamil India','','pkg_ta-IN','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/ta-IN_details.xml',''),(289,3,0,0,'Thai','','pkg_th-TH','package','',0,'2.5.23.1','','http://update.joomla.org/language/details/th-TH_details.xml',''),(290,3,0,0,'Swahili','','pkg_sw-KE','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/sw-KE_details.xml',''),(291,1,0,0,'Joomla','','joomla','file','',0,'2.5.28','','http://update.joomla.org/core/extension.xml',''),(292,3,0,0,'Bahasa Indonesia','','pkg_id-ID','package','',0,'2.5.28.1','','http://update.joomla.org/language/details/id-ID_details.xml',''),(293,3,0,0,'Danish','','pkg_da-DK','package','',0,'2.5.28.1','','http://update.joomla.org/language/details/da-DK_details.xml',''),(294,3,0,0,'Swedish','','pkg_sv-SE','package','',0,'2.5.28.1','','http://update.joomla.org/language/details/sv-SE_details.xml',''),(295,3,0,0,'French','','pkg_fr-FR','package','',0,'2.5.28.2','','http://update.joomla.org/language/details/fr-FR_details.xml',''),(296,3,0,0,'Italian','','pkg_it-IT','package','',0,'2.5.28.1','','http://update.joomla.org/language/details/it-IT_details.xml',''),(297,3,0,0,'Spanish','','pkg_es-ES','package','',0,'2.5.28.1','','http://update.joomla.org/language/details/es-ES_details.xml',''),(298,3,0,0,'Dutch','','pkg_nl-NL','package','',0,'2.5.28.1','','http://update.joomla.org/language/details/nl-NL_details.xml',''),(299,3,0,0,'Slovak','','pkg_sk-SK','package','',0,'2.5.27.1','','http://update.joomla.org/language/details/sk-SK_details.xml',''),(300,3,0,0,'Latvian','','pkg_lv-LV','package','',0,'2.5.28.1','','http://update.joomla.org/language/details/lv-LV_details.xml',''),(301,3,0,0,'Estonian','','pkg_et-EE','package','',0,'2.5.28.1','','http://update.joomla.org/language/details/et-EE_details.xml',''),(302,3,0,0,'Flemish','','pkg_nl-BE','package','',0,'2.5.27.1','','http://update.joomla.org/language/details/nl-BE_details.xml',''),(303,3,0,0,'Macedonian','','pkg_mk-MK','package','',0,'2.5.28.1','','http://update.joomla.org/language/details/mk-MK_details.xml',''),(304,3,0,0,'Japanese','','pkg_ja-JP','package','',0,'2.5.28.1','','http://update.joomla.org/language/details/ja-JP_details.xml',''),(305,3,0,0,'Serbian Latin','','pkg_sr-YU','package','',0,'2.5.28.1','','http://update.joomla.org/language/details/sr-YU_details.xml',''),(306,3,0,0,'Arabic Unitag','','pkg_ar-AA','package','',0,'2.5.28.1','','http://update.joomla.org/language/details/ar-AA_details.xml',''),(307,3,0,0,'German','','pkg_de-DE','package','',0,'2.5.28.1','','http://update.joomla.org/language/details/de-DE_details.xml',''),(308,3,0,0,'Norwegian Bokmal','','pkg_nb-NO','package','',0,'2.5.28.1','','http://update.joomla.org/language/details/nb-NO_details.xml',''),(309,3,0,0,'English AU','','pkg_en-AU','package','',0,'2.5.22.2','','http://update.joomla.org/language/details/en-AU_details.xml',''),(310,3,0,0,'Serbian Cyrillic','','pkg_sr-RS','package','',0,'2.5.28.1','','http://update.joomla.org/language/details/sr-RS_details.xml',''),(311,3,0,0,'Czech','','pkg_cs-CZ','package','',0,'2.5.28.2','','http://update.joomla.org/language/details/cs-CZ_details.xml',''),(312,3,0,0,'Persian','','pkg_fa-IR','package','',0,'2.5.28.1','','http://update.joomla.org/language/details/fa-IR_details.xml',''),(313,3,0,0,'Polish','','pkg_pl-PL','package','',0,'2.5.25.1','','http://update.joomla.org/language/details/pl-PL_details.xml',''),(314,3,0,0,'Syriac','','pkg_sy-IQ','package','',0,'2.5.28.1','','http://update.joomla.org/language/details/sy-IQ_details.xml',''),(315,3,0,0,'Russian','','pkg_ru-RU','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/ru-RU_details.xml',''),(316,3,0,0,'Catalan','','pkg_ca-ES','package','',0,'2.5.28.1','','http://update.joomla.org/language/details/ca-ES_details.xml',''),(317,3,0,0,'Finnish','','pkg_fi-FI','package','',0,'2.5.28.1','','http://update.joomla.org/language/details/fi-FI_details.xml',''),(318,3,0,0,'Chinese Traditional','','pkg_zh-TW','package','',0,'2.5.28.1','','http://update.joomla.org/language/details/zh-TW_details.xml',''),(319,3,0,0,'Bosnian','','pkg_bs-BA','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/bs-BA_details.xml',''),(320,3,0,0,'Tamil India','','pkg_ta-IN','package','',0,'2.5.28.1','','http://update.joomla.org/language/details/ta-IN_details.xml',''),(321,3,0,0,'Thai','','pkg_th-TH','package','',0,'2.5.28.1','','http://update.joomla.org/language/details/th-TH_details.xml',''),(322,3,0,0,'Swahili','','pkg_sw-KE','package','',0,'2.5.28.1','','http://update.joomla.org/language/details/sw-KE_details.xml',''),(323,10,10033,0,'vmpayment Paybox','vmpayment Paybox','paybox','plugin','vmpayment',0,'2.6.12.1','','http://virtuemart.net/releases/vm2/plg_vmpayment_paybox_update.xml','Security release: Please update Paybox once you you installed the AIO version 2.6.12'),(324,1,0,0,'Joomla','','joomla','file','',0,'2.5.28','','http://update.joomla.org/core/extension.xml',''),(325,3,0,0,'Bahasa Indonesia','','pkg_id-ID','package','',0,'2.5.28.1','','http://update.joomla.org/language/details/id-ID_details.xml',''),(326,3,0,0,'Danish','','pkg_da-DK','package','',0,'2.5.28.1','','http://update.joomla.org/language/details/da-DK_details.xml',''),(327,3,0,0,'Swedish','','pkg_sv-SE','package','',0,'2.5.28.1','','http://update.joomla.org/language/details/sv-SE_details.xml',''),(328,3,0,0,'French','','pkg_fr-FR','package','',0,'2.5.28.2','','http://update.joomla.org/language/details/fr-FR_details.xml',''),(329,3,0,0,'Italian','','pkg_it-IT','package','',0,'2.5.28.1','','http://update.joomla.org/language/details/it-IT_details.xml',''),(330,3,0,0,'Spanish','','pkg_es-ES','package','',0,'2.5.28.1','','http://update.joomla.org/language/details/es-ES_details.xml',''),(331,3,0,0,'Dutch','','pkg_nl-NL','package','',0,'2.5.28.1','','http://update.joomla.org/language/details/nl-NL_details.xml',''),(332,3,0,0,'Slovak','','pkg_sk-SK','package','',0,'2.5.27.1','','http://update.joomla.org/language/details/sk-SK_details.xml',''),(333,3,0,0,'Latvian','','pkg_lv-LV','package','',0,'2.5.28.1','','http://update.joomla.org/language/details/lv-LV_details.xml',''),(334,3,0,0,'Estonian','','pkg_et-EE','package','',0,'2.5.28.1','','http://update.joomla.org/language/details/et-EE_details.xml',''),(335,3,0,0,'Flemish','','pkg_nl-BE','package','',0,'2.5.27.1','','http://update.joomla.org/language/details/nl-BE_details.xml',''),(336,3,0,0,'Macedonian','','pkg_mk-MK','package','',0,'2.5.28.1','','http://update.joomla.org/language/details/mk-MK_details.xml',''),(337,3,0,0,'Japanese','','pkg_ja-JP','package','',0,'2.5.28.1','','http://update.joomla.org/language/details/ja-JP_details.xml',''),(338,3,0,0,'Serbian Latin','','pkg_sr-YU','package','',0,'2.5.28.1','','http://update.joomla.org/language/details/sr-YU_details.xml',''),(339,3,0,0,'Arabic Unitag','','pkg_ar-AA','package','',0,'2.5.28.1','','http://update.joomla.org/language/details/ar-AA_details.xml',''),(340,3,0,0,'German','','pkg_de-DE','package','',0,'2.5.28.1','','http://update.joomla.org/language/details/de-DE_details.xml',''),(341,3,0,0,'Norwegian Bokmal','','pkg_nb-NO','package','',0,'2.5.28.1','','http://update.joomla.org/language/details/nb-NO_details.xml',''),(342,3,0,0,'English AU','','pkg_en-AU','package','',0,'2.5.22.2','','http://update.joomla.org/language/details/en-AU_details.xml',''),(343,3,0,0,'Serbian Cyrillic','','pkg_sr-RS','package','',0,'2.5.28.1','','http://update.joomla.org/language/details/sr-RS_details.xml',''),(344,3,0,0,'Czech','','pkg_cs-CZ','package','',0,'2.5.28.2','','http://update.joomla.org/language/details/cs-CZ_details.xml',''),(345,3,0,0,'Persian','','pkg_fa-IR','package','',0,'2.5.28.1','','http://update.joomla.org/language/details/fa-IR_details.xml',''),(346,3,0,0,'Polish','','pkg_pl-PL','package','',0,'2.5.28.1','','http://update.joomla.org/language/details/pl-PL_details.xml',''),(347,3,0,0,'Syriac','','pkg_sy-IQ','package','',0,'2.5.28.1','','http://update.joomla.org/language/details/sy-IQ_details.xml',''),(348,3,0,0,'Portuguese','','pkg_pt-PT','package','',0,'2.5.28.1','','http://update.joomla.org/language/details/pt-PT_details.xml',''),(349,3,0,0,'Russian','','pkg_ru-RU','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/ru-RU_details.xml',''),(350,3,0,0,'Catalan','','pkg_ca-ES','package','',0,'2.5.28.1','','http://update.joomla.org/language/details/ca-ES_details.xml',''),(351,3,0,0,'Finnish','','pkg_fi-FI','package','',0,'2.5.28.1','','http://update.joomla.org/language/details/fi-FI_details.xml',''),(352,3,0,0,'Chinese Traditional','','pkg_zh-TW','package','',0,'2.5.28.1','','http://update.joomla.org/language/details/zh-TW_details.xml',''),(353,3,0,0,'Bosnian','','pkg_bs-BA','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/bs-BA_details.xml',''),(354,3,0,0,'Tamil India','','pkg_ta-IN','package','',0,'2.5.28.2','','http://update.joomla.org/language/details/ta-IN_details.xml',''),(355,3,0,0,'Thai','','pkg_th-TH','package','',0,'2.5.28.1','','http://update.joomla.org/language/details/th-TH_details.xml',''),(356,3,0,0,'Swahili','','pkg_sw-KE','package','',0,'2.5.28.1','','http://update.joomla.org/language/details/sw-KE_details.xml',''),(357,8,10005,0,'PayPal','PayPal','paypal','plugin','vmpayment',0,'2.6.16.2','','http://virtuemart.net/releases/vm2/plg_vmpayment_paypal_update.xml','http://dev.virtuemart.net/attachments/download/926/paypal.2.6.16.2.zip'),(358,1,0,0,'Joomla','','joomla','file','',0,'2.5.28','','http://update.joomla.org/core/extension.xml',''),(359,3,0,0,'Bahasa Indonesia','','pkg_id-ID','package','',0,'2.5.28.1','','http://update.joomla.org/language/details/id-ID_details.xml',''),(360,3,0,0,'Danish','','pkg_da-DK','package','',0,'2.5.28.1','','http://update.joomla.org/language/details/da-DK_details.xml',''),(361,3,0,0,'Swedish','','pkg_sv-SE','package','',0,'2.5.28.1','','http://update.joomla.org/language/details/sv-SE_details.xml',''),(362,3,0,0,'French','','pkg_fr-FR','package','',0,'2.5.28.2','','http://update.joomla.org/language/details/fr-FR_details.xml',''),(363,3,0,0,'Italian','','pkg_it-IT','package','',0,'2.5.28.1','','http://update.joomla.org/language/details/it-IT_details.xml',''),(364,3,0,0,'Spanish','','pkg_es-ES','package','',0,'2.5.28.1','','http://update.joomla.org/language/details/es-ES_details.xml',''),(365,3,0,0,'Dutch','','pkg_nl-NL','package','',0,'2.5.28.1','','http://update.joomla.org/language/details/nl-NL_details.xml',''),(366,3,0,0,'Slovak','','pkg_sk-SK','package','',0,'2.5.27.1','','http://update.joomla.org/language/details/sk-SK_details.xml',''),(367,3,0,0,'Latvian','','pkg_lv-LV','package','',0,'2.5.28.1','','http://update.joomla.org/language/details/lv-LV_details.xml',''),(368,3,0,0,'Estonian','','pkg_et-EE','package','',0,'2.5.28.1','','http://update.joomla.org/language/details/et-EE_details.xml',''),(369,3,0,0,'Flemish','','pkg_nl-BE','package','',0,'2.5.27.1','','http://update.joomla.org/language/details/nl-BE_details.xml',''),(370,3,0,0,'Macedonian','','pkg_mk-MK','package','',0,'2.5.28.1','','http://update.joomla.org/language/details/mk-MK_details.xml',''),(371,3,0,0,'Japanese','','pkg_ja-JP','package','',0,'2.5.28.1','','http://update.joomla.org/language/details/ja-JP_details.xml',''),(372,3,0,0,'Serbian Latin','','pkg_sr-YU','package','',0,'2.5.28.1','','http://update.joomla.org/language/details/sr-YU_details.xml',''),(373,3,0,0,'Arabic Unitag','','pkg_ar-AA','package','',0,'2.5.28.1','','http://update.joomla.org/language/details/ar-AA_details.xml',''),(374,3,0,0,'German','','pkg_de-DE','package','',0,'2.5.28.1','','http://update.joomla.org/language/details/de-DE_details.xml',''),(375,3,0,0,'Norwegian Bokmal','','pkg_nb-NO','package','',0,'2.5.28.1','','http://update.joomla.org/language/details/nb-NO_details.xml',''),(376,3,0,0,'English AU','','pkg_en-AU','package','',0,'2.5.22.2','','http://update.joomla.org/language/details/en-AU_details.xml',''),(377,3,0,0,'Serbian Cyrillic','','pkg_sr-RS','package','',0,'2.5.28.1','','http://update.joomla.org/language/details/sr-RS_details.xml',''),(378,3,0,0,'Czech','','pkg_cs-CZ','package','',0,'2.5.28.2','','http://update.joomla.org/language/details/cs-CZ_details.xml',''),(379,3,0,0,'Persian','','pkg_fa-IR','package','',0,'2.5.28.1','','http://update.joomla.org/language/details/fa-IR_details.xml',''),(380,3,0,0,'Polish','','pkg_pl-PL','package','',0,'2.5.28.1','','http://update.joomla.org/language/details/pl-PL_details.xml',''),(381,3,0,0,'Syriac','','pkg_sy-IQ','package','',0,'2.5.28.1','','http://update.joomla.org/language/details/sy-IQ_details.xml',''),(382,3,0,0,'Portuguese','','pkg_pt-PT','package','',0,'2.5.28.1','','http://update.joomla.org/language/details/pt-PT_details.xml',''),(383,3,0,0,'Russian','','pkg_ru-RU','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/ru-RU_details.xml',''),(384,3,0,0,'Catalan','','pkg_ca-ES','package','',0,'2.5.28.1','','http://update.joomla.org/language/details/ca-ES_details.xml',''),(385,3,0,0,'Finnish','','pkg_fi-FI','package','',0,'2.5.28.1','','http://update.joomla.org/language/details/fi-FI_details.xml',''),(386,3,0,0,'Chinese Traditional','','pkg_zh-TW','package','',0,'2.5.28.1','','http://update.joomla.org/language/details/zh-TW_details.xml',''),(387,3,0,0,'Bosnian','','pkg_bs-BA','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/bs-BA_details.xml',''),(388,3,0,0,'Tamil India','','pkg_ta-IN','package','',0,'2.5.28.2','','http://update.joomla.org/language/details/ta-IN_details.xml',''),(389,3,0,0,'Thai','','pkg_th-TH','package','',0,'2.5.28.1','','http://update.joomla.org/language/details/th-TH_details.xml',''),(390,3,0,0,'Swahili','','pkg_sw-KE','package','',0,'2.5.28.1','','http://update.joomla.org/language/details/sw-KE_details.xml',''),(391,1,0,0,'Joomla','','joomla','file','',0,'2.5.28','','http://update.joomla.org/core/extension.xml',''),(392,3,0,0,'Bahasa Indonesia','','pkg_id-ID','package','',0,'2.5.28.1','','http://update.joomla.org/language/details/id-ID_details.xml',''),(393,3,0,0,'Danish','','pkg_da-DK','package','',0,'2.5.28.1','','http://update.joomla.org/language/details/da-DK_details.xml',''),(394,3,0,0,'Swedish','','pkg_sv-SE','package','',0,'2.5.28.1','','http://update.joomla.org/language/details/sv-SE_details.xml',''),(395,3,0,0,'French','','pkg_fr-FR','package','',0,'2.5.28.2','','http://update.joomla.org/language/details/fr-FR_details.xml',''),(396,3,0,0,'Italian','','pkg_it-IT','package','',0,'2.5.28.1','','http://update.joomla.org/language/details/it-IT_details.xml',''),(397,3,0,0,'Spanish','','pkg_es-ES','package','',0,'2.5.28.1','','http://update.joomla.org/language/details/es-ES_details.xml',''),(398,3,0,0,'Dutch','','pkg_nl-NL','package','',0,'2.5.28.1','','http://update.joomla.org/language/details/nl-NL_details.xml',''),(399,3,0,0,'Slovak','','pkg_sk-SK','package','',0,'2.5.27.1','','http://update.joomla.org/language/details/sk-SK_details.xml',''),(400,3,0,0,'Latvian','','pkg_lv-LV','package','',0,'2.5.28.1','','http://update.joomla.org/language/details/lv-LV_details.xml',''),(401,3,0,0,'Estonian','','pkg_et-EE','package','',0,'2.5.28.1','','http://update.joomla.org/language/details/et-EE_details.xml',''),(402,3,0,0,'Flemish','','pkg_nl-BE','package','',0,'2.5.27.1','','http://update.joomla.org/language/details/nl-BE_details.xml',''),(403,3,0,0,'Macedonian','','pkg_mk-MK','package','',0,'2.5.28.1','','http://update.joomla.org/language/details/mk-MK_details.xml',''),(404,3,0,0,'Japanese','','pkg_ja-JP','package','',0,'2.5.28.1','','http://update.joomla.org/language/details/ja-JP_details.xml',''),(405,3,0,0,'Serbian Latin','','pkg_sr-YU','package','',0,'2.5.28.1','','http://update.joomla.org/language/details/sr-YU_details.xml',''),(406,3,0,0,'Arabic Unitag','','pkg_ar-AA','package','',0,'2.5.28.1','','http://update.joomla.org/language/details/ar-AA_details.xml',''),(407,3,0,0,'German','','pkg_de-DE','package','',0,'2.5.28.1','','http://update.joomla.org/language/details/de-DE_details.xml',''),(408,3,0,0,'Norwegian Bokmal','','pkg_nb-NO','package','',0,'2.5.28.1','','http://update.joomla.org/language/details/nb-NO_details.xml',''),(409,3,0,0,'English AU','','pkg_en-AU','package','',0,'2.5.22.2','','http://update.joomla.org/language/details/en-AU_details.xml',''),(410,3,0,0,'Serbian Cyrillic','','pkg_sr-RS','package','',0,'2.5.28.1','','http://update.joomla.org/language/details/sr-RS_details.xml',''),(411,3,0,0,'Czech','','pkg_cs-CZ','package','',0,'2.5.28.2','','http://update.joomla.org/language/details/cs-CZ_details.xml',''),(412,3,0,0,'Persian','','pkg_fa-IR','package','',0,'2.5.28.1','','http://update.joomla.org/language/details/fa-IR_details.xml',''),(413,3,0,0,'Polish','','pkg_pl-PL','package','',0,'2.5.28.1','','http://update.joomla.org/language/details/pl-PL_details.xml',''),(414,3,0,0,'Syriac','','pkg_sy-IQ','package','',0,'2.5.28.1','','http://update.joomla.org/language/details/sy-IQ_details.xml',''),(415,3,0,0,'Portuguese','','pkg_pt-PT','package','',0,'2.5.28.1','','http://update.joomla.org/language/details/pt-PT_details.xml',''),(416,3,0,0,'Russian','','pkg_ru-RU','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/ru-RU_details.xml',''),(417,3,0,0,'Catalan','','pkg_ca-ES','package','',0,'2.5.28.1','','http://update.joomla.org/language/details/ca-ES_details.xml',''),(418,3,0,0,'Finnish','','pkg_fi-FI','package','',0,'2.5.28.1','','http://update.joomla.org/language/details/fi-FI_details.xml',''),(419,3,0,0,'Chinese Traditional','','pkg_zh-TW','package','',0,'2.5.28.1','','http://update.joomla.org/language/details/zh-TW_details.xml',''),(420,3,0,0,'Bosnian','','pkg_bs-BA','package','',0,'2.5.24.1','','http://update.joomla.org/language/details/bs-BA_details.xml',''),(421,3,0,0,'Tamil India','','pkg_ta-IN','package','',0,'2.5.28.2','','http://update.joomla.org/language/details/ta-IN_details.xml',''),(422,3,0,0,'Thai','','pkg_th-TH','package','',0,'2.5.28.1','','http://update.joomla.org/language/details/th-TH_details.xml',''),(423,3,0,0,'Swahili','','pkg_sw-KE','package','',0,'2.5.28.1','','http://update.joomla.org/language/details/sw-KE_details.xml','');
/*!40000 ALTER TABLE `uzlnh_updates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uzlnh_user_notes`
--

DROP TABLE IF EXISTS `uzlnh_user_notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uzlnh_user_notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(100) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_category_id` (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uzlnh_user_notes`
--

LOCK TABLES `uzlnh_user_notes` WRITE;
/*!40000 ALTER TABLE `uzlnh_user_notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `uzlnh_user_notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uzlnh_user_profiles`
--

DROP TABLE IF EXISTS `uzlnh_user_profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uzlnh_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) NOT NULL,
  `profile_value` varchar(255) NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Simple user profile storage table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uzlnh_user_profiles`
--

LOCK TABLES `uzlnh_user_profiles` WRITE;
/*!40000 ALTER TABLE `uzlnh_user_profiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `uzlnh_user_profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uzlnh_user_usergroup_map`
--

DROP TABLE IF EXISTS `uzlnh_user_usergroup_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uzlnh_user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id',
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uzlnh_user_usergroup_map`
--

LOCK TABLES `uzlnh_user_usergroup_map` WRITE;
/*!40000 ALTER TABLE `uzlnh_user_usergroup_map` DISABLE KEYS */;
INSERT INTO `uzlnh_user_usergroup_map` VALUES (706,8);
/*!40000 ALTER TABLE `uzlnh_user_usergroup_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uzlnh_usergroups`
--

DROP TABLE IF EXISTS `uzlnh_usergroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uzlnh_usergroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  KEY `idx_usergroup_title_lookup` (`title`),
  KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uzlnh_usergroups`
--

LOCK TABLES `uzlnh_usergroups` WRITE;
/*!40000 ALTER TABLE `uzlnh_usergroups` DISABLE KEYS */;
INSERT INTO `uzlnh_usergroups` VALUES (1,0,1,20,'Все'),(2,1,6,17,'Зарегистрированные'),(3,2,7,14,'Авторы'),(4,3,8,11,'Редакторы'),(5,4,9,10,'Издатели'),(6,1,2,5,'Менеджеры'),(7,6,3,4,'Администраторы'),(8,1,18,19,'Супер-пользователи');
/*!40000 ALTER TABLE `uzlnh_usergroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uzlnh_users`
--

DROP TABLE IF EXISTS `uzlnh_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uzlnh_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `usertype` varchar(25) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  PRIMARY KEY (`id`),
  KEY `usertype` (`usertype`),
  KEY `idx_name` (`name`),
  KEY `idx_block` (`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=707 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uzlnh_users`
--

LOCK TABLES `uzlnh_users` WRITE;
/*!40000 ALTER TABLE `uzlnh_users` DISABLE KEYS */;
INSERT INTO `uzlnh_users` VALUES (706,'Super User','admin','imstyle555@yandex.ru','$P$DnMSsilGK/YtbGNnDTY6lHPsCNMrnK.','deprecated',0,1,'2014-07-14 09:27:38','2015-04-18 14:24:42','0','{\"admin_style\":\"\",\"admin_language\":\"\",\"language\":\"\",\"editor\":\"\",\"helpsite\":\"\",\"timezone\":\"\"}','0000-00-00 00:00:00',0);
/*!40000 ALTER TABLE `uzlnh_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uzlnh_viewlevels`
--

DROP TABLE IF EXISTS `uzlnh_viewlevels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uzlnh_viewlevels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `title` varchar(100) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_assetgroup_title_lookup` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uzlnh_viewlevels`
--

LOCK TABLES `uzlnh_viewlevels` WRITE;
/*!40000 ALTER TABLE `uzlnh_viewlevels` DISABLE KEYS */;
INSERT INTO `uzlnh_viewlevels` VALUES (1,'Для всех',0,'[1]'),(2,'Для зарегистрированных',1,'[6,2,8]'),(3,'Для администрации',2,'[6,3,8]');
/*!40000 ALTER TABLE `uzlnh_viewlevels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uzlnh_virtuemart_adminmenuentries`
--

DROP TABLE IF EXISTS `uzlnh_virtuemart_adminmenuentries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uzlnh_virtuemart_adminmenuentries` (
  `id` tinyint(1) unsigned NOT NULL AUTO_INCREMENT,
  `module_id` tinyint(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The ID of the VM Module, this Item is assigned to',
  `parent_id` tinyint(11) unsigned NOT NULL DEFAULT '0',
  `name` char(64) NOT NULL DEFAULT '0',
  `link` char(64) NOT NULL DEFAULT '0',
  `depends` char(64) NOT NULL DEFAULT '' COMMENT 'Names of the Parameters, this Item depends on',
  `icon_class` char(96) DEFAULT NULL,
  `ordering` int(2) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `tooltip` char(128) DEFAULT NULL,
  `view` char(32) DEFAULT NULL,
  `task` char(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `module_id` (`module_id`),
  KEY `published` (`published`),
  KEY `ordering` (`ordering`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COMMENT='Administration Menu Items';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uzlnh_virtuemart_adminmenuentries`
--

LOCK TABLES `uzlnh_virtuemart_adminmenuentries` WRITE;
/*!40000 ALTER TABLE `uzlnh_virtuemart_adminmenuentries` DISABLE KEYS */;
INSERT INTO `uzlnh_virtuemart_adminmenuentries` VALUES (1,1,0,'COM_VIRTUEMART_CATEGORY_S','','','vmicon vmicon-16-folder_camera',1,1,'','category',''),(2,1,0,'COM_VIRTUEMART_PRODUCT_S','','','vmicon vmicon-16-camera',2,1,'','product',''),(3,1,0,'COM_VIRTUEMART_PRODUCT_CUSTOM_FIELD_S','','','vmicon vmicon-16-document_move',5,1,'','custom',''),(4,1,0,'COM_VIRTUEMART_PRODUCT_INVENTORY','','','vmicon vmicon-16-price_watch',7,1,'','inventory',''),(5,1,0,'COM_VIRTUEMART_CALC_S','','','vmicon vmicon-16-calculator',8,1,'','calc',''),(6,1,0,'COM_VIRTUEMART_REVIEW_RATE_S','','','vmicon vmicon-16-comments',9,1,'','ratings',''),(7,2,0,'COM_VIRTUEMART_ORDER_S','','','vmicon vmicon-16-page_white_stack',1,1,'','orders',''),(8,2,0,'COM_VIRTUEMART_COUPON_S','','','vmicon vmicon-16-shopping',10,1,'','coupon',''),(9,2,0,'COM_VIRTUEMART_REPORT','','','vmicon vmicon-16-to_do_list_cheked_1',3,1,'','report',''),(10,2,0,'COM_VIRTUEMART_USER_S','','','vmicon vmicon-16-user',4,1,'','user',''),(11,2,0,'COM_VIRTUEMART_SHOPPERGROUP_S','','','vmicon vmicon-16-user-group',5,1,'','shoppergroup',''),(12,3,0,'COM_VIRTUEMART_MANUFACTURER_S','','','vmicon vmicon-16-wrench_orange',1,1,'','manufacturer',''),(13,3,0,'COM_VIRTUEMART_MANUFACTURER_CATEGORY_S','','','vmicon vmicon-16-folder_wrench',2,1,'','manufacturercategories',''),(14,4,0,'COM_VIRTUEMART_STORE','','','vmicon vmicon-16-reseller_account_template',1,1,'','user','editshop'),(15,4,0,'COM_VIRTUEMART_MEDIA_S','','','vmicon vmicon-16-pictures',2,1,'','media',''),(16,4,0,'COM_VIRTUEMART_SHIPMENTMETHOD_S','','','vmicon vmicon-16-lorry',3,1,'','shipmentmethod',''),(17,4,0,'COM_VIRTUEMART_PAYMENTMETHOD_S','','','vmicon vmicon-16-creditcards',4,1,'','paymentmethod',''),(18,5,0,'COM_VIRTUEMART_CONFIGURATION','','','vmicon vmicon-16-config',1,1,'','config',''),(19,5,0,'COM_VIRTUEMART_USERFIELD_S','','','vmicon vmicon-16-participation_rate',2,1,'','userfields',''),(20,5,0,'COM_VIRTUEMART_ORDERSTATUS_S','','','vmicon vmicon-16-orderstatus',3,1,'','orderstatus',''),(21,5,0,'COM_VIRTUEMART_CURRENCY_S','','','vmicon vmicon-16-coins',5,1,'','currency',''),(22,5,0,'COM_VIRTUEMART_COUNTRY_S','','','vmicon vmicon-16-globe',6,1,'','country',''),(23,11,0,'COM_VIRTUEMART_MIGRATION_UPDATE','','','vmicon vmicon-16-installer_box',1,1,'','updatesmigration',''),(24,11,0,'COM_VIRTUEMART_ABOUT','','','vmicon vmicon-16-info',2,1,'','about',''),(25,11,0,'COM_VIRTUEMART_HELP_TOPICS','http://virtuemart.net/','','vmicon vmicon-16-help',4,1,'','',''),(26,11,0,'COM_VIRTUEMART_COMMUNITY_FORUM','http://forum.virtuemart.net/','','vmicon vmicon-16-reseller_programm',6,1,'','',''),(27,11,0,'COM_VIRTUEMART_STATISTIC_SUMMARY','','','vmicon vmicon-16-info',1,1,'','virtuemart',''),(28,77,0,'COM_VIRTUEMART_USER_GROUP_S','','','vmicon vmicon-16-user',2,1,'','usergroups',''),(29,11,0,'COM_VIRTUEMART_LOG','','','vmicon vmicon-16-info',2,1,'','log','');
/*!40000 ALTER TABLE `uzlnh_virtuemart_adminmenuentries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uzlnh_virtuemart_calc_categories`
--

DROP TABLE IF EXISTS `uzlnh_virtuemart_calc_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uzlnh_virtuemart_calc_categories` (
  `id` mediumint(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_calc_id` smallint(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_category_id` mediumint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `i_virtuemart_calc_id` (`virtuemart_calc_id`,`virtuemart_category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uzlnh_virtuemart_calc_categories`
--

LOCK TABLES `uzlnh_virtuemart_calc_categories` WRITE;
/*!40000 ALTER TABLE `uzlnh_virtuemart_calc_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `uzlnh_virtuemart_calc_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uzlnh_virtuemart_calc_countries`
--

DROP TABLE IF EXISTS `uzlnh_virtuemart_calc_countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uzlnh_virtuemart_calc_countries` (
  `id` mediumint(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_calc_id` smallint(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_country_id` smallint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `i_virtuemart_calc_id` (`virtuemart_calc_id`,`virtuemart_country_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uzlnh_virtuemart_calc_countries`
--

LOCK TABLES `uzlnh_virtuemart_calc_countries` WRITE;
/*!40000 ALTER TABLE `uzlnh_virtuemart_calc_countries` DISABLE KEYS */;
/*!40000 ALTER TABLE `uzlnh_virtuemart_calc_countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uzlnh_virtuemart_calc_manufacturers`
--

DROP TABLE IF EXISTS `uzlnh_virtuemart_calc_manufacturers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uzlnh_virtuemart_calc_manufacturers` (
  `id` mediumint(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_calc_id` smallint(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_manufacturer_id` smallint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `i_virtuemart_calc_id` (`virtuemart_calc_id`,`virtuemart_manufacturer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uzlnh_virtuemart_calc_manufacturers`
--

LOCK TABLES `uzlnh_virtuemart_calc_manufacturers` WRITE;
/*!40000 ALTER TABLE `uzlnh_virtuemart_calc_manufacturers` DISABLE KEYS */;
/*!40000 ALTER TABLE `uzlnh_virtuemart_calc_manufacturers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uzlnh_virtuemart_calc_shoppergroups`
--

DROP TABLE IF EXISTS `uzlnh_virtuemart_calc_shoppergroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uzlnh_virtuemart_calc_shoppergroups` (
  `id` mediumint(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_calc_id` smallint(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_shoppergroup_id` smallint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `i_virtuemart_calc_id` (`virtuemart_calc_id`,`virtuemart_shoppergroup_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uzlnh_virtuemart_calc_shoppergroups`
--

LOCK TABLES `uzlnh_virtuemart_calc_shoppergroups` WRITE;
/*!40000 ALTER TABLE `uzlnh_virtuemart_calc_shoppergroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `uzlnh_virtuemart_calc_shoppergroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uzlnh_virtuemart_calc_states`
--

DROP TABLE IF EXISTS `uzlnh_virtuemart_calc_states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uzlnh_virtuemart_calc_states` (
  `id` mediumint(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_calc_id` smallint(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_state_id` smallint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `i_virtuemart_calc_id` (`virtuemart_calc_id`,`virtuemart_state_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uzlnh_virtuemart_calc_states`
--

LOCK TABLES `uzlnh_virtuemart_calc_states` WRITE;
/*!40000 ALTER TABLE `uzlnh_virtuemart_calc_states` DISABLE KEYS */;
/*!40000 ALTER TABLE `uzlnh_virtuemart_calc_states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uzlnh_virtuemart_calcs`
--

DROP TABLE IF EXISTS `uzlnh_virtuemart_calcs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uzlnh_virtuemart_calcs` (
  `virtuemart_calc_id` smallint(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_vendor_id` smallint(1) unsigned NOT NULL DEFAULT '1' COMMENT 'Belongs to vendor',
  `calc_jplugin_id` int(11) NOT NULL DEFAULT '0',
  `calc_name` char(64) NOT NULL DEFAULT '' COMMENT 'Name of the rule',
  `calc_descr` char(128) NOT NULL DEFAULT '' COMMENT 'Description',
  `calc_kind` char(16) NOT NULL DEFAULT '' COMMENT 'Discount/Tax/Margin/Commission',
  `calc_value_mathop` char(8) NOT NULL DEFAULT '' COMMENT 'the mathematical operation like (+,-,+%,-%)',
  `calc_value` decimal(10,4) NOT NULL DEFAULT '0.0000' COMMENT 'The Amount',
  `calc_currency` smallint(1) unsigned NOT NULL DEFAULT '0' COMMENT 'Currency of the Rule',
  `calc_shopper_published` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Visible for Shoppers',
  `calc_vendor_published` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Visible for Vendors',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Startdate if nothing is set = permanent',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Enddate if nothing is set = permanent',
  `for_override` tinyint(1) NOT NULL DEFAULT '0',
  `calc_params` varchar(18000) DEFAULT NULL,
  `ordering` int(2) NOT NULL DEFAULT '0',
  `shared` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_calc_id`),
  KEY `i_virtuemart_vendor_id` (`virtuemart_vendor_id`),
  KEY `i_published` (`published`),
  KEY `idx_calc_kind` (`calc_kind`),
  KEY `i_shared` (`shared`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uzlnh_virtuemart_calcs`
--

LOCK TABLES `uzlnh_virtuemart_calcs` WRITE;
/*!40000 ALTER TABLE `uzlnh_virtuemart_calcs` DISABLE KEYS */;
INSERT INTO `uzlnh_virtuemart_calcs` VALUES (4,1,0,'Скидка','','VatTax','+',0.0000,131,0,0,'2014-07-15 11:54:10','0000-00-00 00:00:00',0,'',0,0,1,'2014-07-15 11:54:10',706,'2014-07-15 11:54:30',706,'0000-00-00 00:00:00',0);
/*!40000 ALTER TABLE `uzlnh_virtuemart_calcs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uzlnh_virtuemart_categories`
--

DROP TABLE IF EXISTS `uzlnh_virtuemart_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uzlnh_virtuemart_categories` (
  `virtuemart_category_id` mediumint(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_vendor_id` smallint(1) unsigned NOT NULL DEFAULT '1',
  `category_template` char(128) DEFAULT NULL,
  `category_layout` char(64) DEFAULT NULL,
  `category_product_layout` char(64) DEFAULT NULL,
  `products_per_row` tinyint(2) DEFAULT NULL,
  `limit_list_start` smallint(1) unsigned DEFAULT NULL,
  `limit_list_step` char(32) DEFAULT NULL,
  `limit_list_max` smallint(1) unsigned DEFAULT NULL,
  `limit_list_initial` smallint(1) unsigned DEFAULT NULL,
  `hits` int(1) unsigned NOT NULL DEFAULT '0',
  `metarobot` char(40) NOT NULL DEFAULT '',
  `metaauthor` char(64) NOT NULL DEFAULT '',
  `ordering` int(2) NOT NULL DEFAULT '0',
  `shared` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_category_id`),
  KEY `idx_category_virtuemart_vendor_id` (`virtuemart_vendor_id`),
  KEY `i_published` (`published`),
  KEY `i_shared` (`shared`),
  KEY `i_ordering` (`ordering`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='Product Categories are stored here';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uzlnh_virtuemart_categories`
--

LOCK TABLES `uzlnh_virtuemart_categories` WRITE;
/*!40000 ALTER TABLE `uzlnh_virtuemart_categories` DISABLE KEYS */;
INSERT INTO `uzlnh_virtuemart_categories` VALUES (7,1,'0','0','0',0,NULL,'0',NULL,0,0,'','',11,0,1,'2014-07-15 09:57:13',706,'2014-07-21 13:29:17',706,'0000-00-00 00:00:00',0),(10,1,'0','0','0',0,NULL,'0',NULL,0,0,'','',5,0,1,'2014-07-20 12:43:52',706,'2014-07-21 13:29:28',706,'0000-00-00 00:00:00',0),(6,1,'0','0','0',0,NULL,'0',NULL,0,0,'','',1,0,1,'2014-07-15 09:56:18',706,'2014-07-21 13:29:10',706,'0000-00-00 00:00:00',0),(9,1,'0','0','0',0,NULL,'0',NULL,0,0,'','',2,0,1,'2014-07-20 12:42:35',706,'2014-07-21 13:29:36',706,'0000-00-00 00:00:00',0),(8,1,'0','0','0',0,NULL,'0',NULL,0,0,'','',3,0,1,'2014-07-15 09:58:05',706,'2014-07-21 13:29:50',706,'0000-00-00 00:00:00',0),(11,1,'0','0','0',0,NULL,'0',NULL,0,0,'','',6,0,1,'2014-07-20 12:44:48',706,'2014-07-21 13:29:42',706,'0000-00-00 00:00:00',0),(12,1,'0','0','0',0,NULL,'0',NULL,0,0,'','',7,0,1,'2014-07-20 12:46:23',706,'2014-07-21 13:28:28',706,'0000-00-00 00:00:00',0),(13,1,'0','0','0',0,NULL,'0',NULL,0,0,'','',8,0,1,'2014-07-20 12:46:58',706,'2014-07-21 13:28:54',706,'0000-00-00 00:00:00',0),(14,1,'0','0','0',0,NULL,'0',NULL,0,0,'','',9,0,1,'2014-07-20 12:47:47',706,'2014-07-21 13:28:47',706,'0000-00-00 00:00:00',0),(15,1,'0','0','0',0,NULL,'0',NULL,0,0,'','',10,0,1,'2014-07-20 12:48:42',706,'2014-07-21 13:28:37',706,'0000-00-00 00:00:00',0),(16,1,'0','0','0',0,NULL,'0',NULL,0,0,'','',12,0,1,'2014-07-20 12:49:38',706,'2014-07-21 13:29:01',706,'0000-00-00 00:00:00',0),(17,1,'0','0','0',0,NULL,'0',NULL,0,0,'','',13,0,1,'2014-07-20 12:50:05',706,'2014-07-21 13:29:57',706,'0000-00-00 00:00:00',0),(18,1,'0','0','0',0,NULL,'0',NULL,0,0,'','',4,0,1,'2014-07-20 13:02:28',706,'2014-07-21 13:28:20',706,'0000-00-00 00:00:00',0),(19,1,'0','0','0',0,NULL,'0',NULL,0,0,'','',14,0,1,'2014-07-20 13:06:20',706,'2014-07-21 13:29:21',706,'0000-00-00 00:00:00',0);
/*!40000 ALTER TABLE `uzlnh_virtuemart_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uzlnh_virtuemart_categories_ru_ru`
--

DROP TABLE IF EXISTS `uzlnh_virtuemart_categories_ru_ru`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uzlnh_virtuemart_categories_ru_ru` (
  `virtuemart_category_id` int(1) unsigned NOT NULL,
  `category_name` char(180) NOT NULL DEFAULT '',
  `category_description` varchar(19000) NOT NULL DEFAULT '',
  `metadesc` varchar(400) NOT NULL DEFAULT '',
  `metakey` varchar(400) NOT NULL DEFAULT '',
  `customtitle` char(255) NOT NULL DEFAULT '',
  `slug` char(192) NOT NULL DEFAULT '',
  PRIMARY KEY (`virtuemart_category_id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uzlnh_virtuemart_categories_ru_ru`
--

LOCK TABLES `uzlnh_virtuemart_categories_ru_ru` WRITE;
/*!40000 ALTER TABLE `uzlnh_virtuemart_categories_ru_ru` DISABLE KEYS */;
INSERT INTO `uzlnh_virtuemart_categories_ru_ru` VALUES (6,'Платья','<p><span style=\"color: #000000;\">Платье – самая женственная одежда во все времена. Новая коллекция эксклюзивных модных платьев на все случаи в интернет-магазине </span><span style=\"color: #000000;\"><span lang=\"en-US\" xml:lang=\"en-US\">I</span></span><span style=\"color: #000000;\">-</span><span style=\"color: #000000;\"><span lang=\"en-US\" xml:lang=\"en-US\">m</span></span><span style=\"color: #000000;\">-</span><span style=\"color: #000000;\"><span lang=\"en-US\" xml:lang=\"en-US\">Style.</span></span></p>','Платье – самая женственная одежда во все времена. Новая коллекция эксклюзивных модных платьев на все случаи в интернет-магазине  I-m-Style','','Купить стильные платья в интернет-магазине I-m-Style','платья'),(7,'Плащи','<p><span style=\"color: #333333; font-family: Tahoma, Helvetica, Arial, sans-serif; font-size: 12px; line-height: 1.3em;\">Стильный женский плащ или тренч дополнит Ваш модный гардероб, а высокое качество приятные цены порадуют Вас! Доставка.</span></p>','Стильный женский плащ или тренч дополнит Ваш модный гардероб, а высокое качество приятные цены порадуют Вас! Доставка.','','Плащи и тренчи/ Модная женская одежда','плащи'),(8,'Юбки','<p><span style=\"color: #333333; font-family: Tahoma, Helvetica, Arial, sans-serif; font-size: 12px; line-height: 1.3em;\">В нашем интернет-магазин</span><span style=\"color: #333333; font-family: Tahoma, Helvetica, Arial, sans-serif; font-size: 12px; line-height: 1.3em;\">е Каталог юбок на любые случаи жизни. Чтобы купить юбку просто оставьте Заказ – мы Вам перезвоним и поможем с выбором.</span></p>','В нашем интернет-магазине Каталог юбок на любые случаи жизни. Чтобы купить юбку просто оставьте Заказ – мы Вам перезвоним и поможем с выбором.','','Купить юбку онлайн на I-m-Style.ru. Модно и выгодно! Доставка!','юбки'),(9,'Туники','<p><span style=\"color: #333333; font-family: Tahoma, Helvetica, Arial, sans-serif; font-size: 12px; line-height: 1.3em;\">Хотите купить модные туники из Италии? Посмотрите фото в нашем каталоге, Вы найдете стильную тунику на свой вкус и размер. Быстрый заказ, Доставка!</span></p>','Хотите купить модные туники из Италии? Посмотрите фото в нашем каталоге, Вы найдете стильную тунику на свой вкус и размер. Быстрый заказ, Доставка!','','Модные туники из Италии в магазине I-m-Style. Купить','туники'),(10,'Топы','<p><span style=\"color: #333333; font-family: Tahoma, Helvetica, Arial, sans-serif; font-size: 12px; line-height: 1.3em;\">Стильные и нарядные топы в каталоге интернет-магазин</span><span style=\"color: #333333; font-family: Tahoma, Helvetica, Arial, sans-serif; font-size: 12px; line-height: 1.3em;\">а, а так же оригинальные футболки и блузки. Высокое качество! Доставка + примерка!</span></p>','Стильные и нарядные топы в каталоге интернет-магазина, а так же оригинальные футболки и блузки. Высокое качество! Доставка + примерка!','','Купить стильные женские топы в интернет-мгазине/ I-m-Style','топы'),(11,'Футболки','<p><span style=\"color: #333333; font-family: Tahoma, Helvetica, Arial, sans-serif; font-size: 12px; line-height: 1.3em;\">Заказать стильные женские футболки, модные топы и блузки, а так же подобрать к ним юбку или брюки можно в нашем интернет-магазине.</span></p>','Заказать стильные женские футболки, модные топы и блузки, а так же подобрать к ним юбку или брюки можно в нашем интернет-магазине','','Купить женские футболки в Москве, а также блузки и топы','футболки'),(12,'Брюки','<p><span style=\"color: #333333; font-family: Tahoma, Helvetica, Arial, sans-serif; font-size: 12px; line-height: 1.3em;\">Модели 2014 года, женские брюки которые подчеркнут красоту Вашей фигуры. Элегантные и женственные, летние, офисные, брюки как никогда актуальны.</span></p>','Модели 2014 года, женские брюки которые подчеркнут красоту Вашей фигуры. Элегантные и женственные, летние, офисные, брюки как никогда актуальны.','','Брюки женские 2014 фото в каталоге I-m-Style','брюки'),(13,'Костюмы','<p><span style=\"color: #333333; font-family: Tahoma, Helvetica, Arial, sans-serif; font-size: 12px; line-height: 1.3em;\">Современный женский деловой костюм может быть нарядным, летним, элегантным и просто обязан быть НЕ скучным ! Мы поможем выбрать модель которая идет именно Вам.</span></p>','Современный женский деловой костюм может быть нарядным, летним, элегантным и просто обязан быть НЕ скучным ! Мы поможем выбрать модель которая идет именно Вам','','Стильный женский деловой костюм Купить с доставкой','костюмы'),(14,'Жакеты','<p><span style=\"color: #333333; font-family: Tahoma, Helvetica, Arial, sans-serif; font-size: 12px; line-height: 1.3em;\">Пиджак или жакет может быть незаменим везде – в офисе или на прогулке, на учебе в университете и на светском рауте. У нас модные жакеты на любой вкус, погоду и случай.</span></p>','Пиджак или жакет может быть незаменим везде – в офисе или на прогулке, на учебе  в университете и на светском рауте. У нас модные жакеты на любой вкус, погоду и случай. ','','Модные жакеты и пиджаки в интернет-магазине I-m-Style','жакеты'),(15,'Джемперы','<p class=\"western\">Качественные, оригинальные и красивые джемперы <span style=\"line-height: 1.3em;\">Вы найдете в каталоге модной одежды </span><span style=\"line-height: 1.3em;\" lang=\"en-US\" xml:lang=\"en-US\">I</span><span style=\"line-height: 1.3em;\">-</span><span style=\"line-height: 1.3em;\" lang=\"en-US\" xml:lang=\"en-US\">m</span><span style=\"line-height: 1.3em;\">-</span><span style=\"line-height: 1.3em;\" lang=\"en-US\" xml:lang=\"en-US\">Style</span><span style=\"line-height: 1.3em;\">.</span><span style=\"line-height: 1.3em;\" lang=\"en-US\" xml:lang=\"en-US\">ru</span><span style=\"line-height: 1.3em;\">. Закажите с доставкой !</span></p>','Качественные, оригинальные и красивые джемперы Вы найдете в каталоге модной одежды I-m-Style.ru. Закажите с доставкой !','','Красивые женские джемперы и кофты купить','джемперы'),(16,'Куртки','<p><span style=\"color: #333333; font-family: Tahoma, Helvetica, Arial, sans-serif; font-size: 12px; line-height: 1.3em;\">Стремительность современной жизни вынуждает женщин делать ставку на практичность вещей, не забывая при этом и о красоте. Ветровки – это очень удобная вещь, которая может и спасти от непогоды и украсить Ваш гардероб.</span></p>','Стремительность современной жизни вынуждает женщин делать ставку на практичность вещей, не забывая при этом и о красоте. Ветровки – это очень удобная вещь, которая может и спасти от непогоды и украсить Ваш гардероб.','','Купить ветровки и легкие женские куртки в интернет-магазине','куртки'),(17,'Аксессуары','<p><span style=\"color: #333333; font-family: Tahoma, Helvetica, Arial, sans-serif; font-size: 12px; line-height: 1.3em;\">Большой выбор шарфов и платков, оригинальный дизайн, высокое качество! Модная женская одежда, к которой Вы можете подобрать аксессуары в интернет-магазин</span><span style=\"color: #333333; font-family: Tahoma, Helvetica, Arial, sans-serif; font-size: 12px; line-height: 1.3em;\">е </span><span style=\"color: #333333; font-family: Tahoma, Helvetica, Arial, sans-serif; font-size: 12px; line-height: 1.3em;\" lang=\"en-US\" xml:lang=\"en-US\">I</span><span style=\"color: #333333; font-family: Tahoma, Helvetica, Arial, sans-serif; font-size: 12px; line-height: 1.3em;\">-</span><span style=\"color: #333333; font-family: Tahoma, Helvetica, Arial, sans-serif; font-size: 12px; line-height: 1.3em;\" lang=\"en-US\" xml:lang=\"en-US\">m</span><span style=\"color: #333333; font-family: Tahoma, Helvetica, Arial, sans-serif; font-size: 12px; line-height: 1.3em;\">-</span><span style=\"color: #333333; font-family: Tahoma, Helvetica, Arial, sans-serif; font-size: 12px; line-height: 1.3em;\" lang=\"en-US\" xml:lang=\"en-US\">Style</span><span style=\"color: #333333; font-family: Tahoma, Helvetica, Arial, sans-serif; font-size: 12px; line-height: 1.3em;\">. Доставка!</span></p>','Большой выбор шарфов и платков, оригинальный дизайн, высокое качество! Модная женская одежда, к которой Вы можете подобрать аксессуары в интернет-магазине I-m-Style. Доставка!','','Модные шарфы и платки в интернет-магазине','аксессуары'),(18,'Блузки','<p><span style=\"color: #333333; font-family: Tahoma, Helvetica, Arial, sans-serif; font-size: 12px; line-height: 1.3em;\">Нарядные, летние, офисные блузки, а так же футболки и топы в нашем интернет-магазин</span><span style=\"color: #333333; font-family: Tahoma, Helvetica, Arial, sans-serif; font-size: 12px; line-height: 1.3em;\">е. Актуальные тренды и отличные цены! Доставка+примерк</span><span style=\"color: #333333; font-family: Tahoma, Helvetica, Arial, sans-serif; font-size: 12px; line-height: 1.3em;\">а!</span></p>','Нарядные, летние, офисные блузки, а так же футболки и топы в нашем интернет-магазине. Актуальные тренды и отличные цены! Доставка+примерка!','','Красивые и стильные блузки - купить в интернет магазине','блузки'),(19,'Товары со скидкой','','','','','товары-со-скидкой');
/*!40000 ALTER TABLE `uzlnh_virtuemart_categories_ru_ru` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uzlnh_virtuemart_category_categories`
--

DROP TABLE IF EXISTS `uzlnh_virtuemart_category_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uzlnh_virtuemart_category_categories` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `category_parent_id` int(1) unsigned NOT NULL DEFAULT '0',
  `category_child_id` int(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `i_category_parent_id` (`category_parent_id`,`category_child_id`),
  KEY `category_child_id` (`category_child_id`),
  KEY `ordering` (`ordering`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='Category child-parent relation list';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uzlnh_virtuemart_category_categories`
--

LOCK TABLES `uzlnh_virtuemart_category_categories` WRITE;
/*!40000 ALTER TABLE `uzlnh_virtuemart_category_categories` DISABLE KEYS */;
INSERT INTO `uzlnh_virtuemart_category_categories` VALUES (10,0,10,5),(9,0,9,2),(8,0,8,3),(7,0,7,11),(6,0,6,1),(11,0,11,6),(12,0,12,7),(13,0,13,8),(14,0,14,9),(15,0,15,10),(16,0,16,12),(17,0,17,13),(18,0,18,4),(19,0,19,14);
/*!40000 ALTER TABLE `uzlnh_virtuemart_category_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uzlnh_virtuemart_category_medias`
--

DROP TABLE IF EXISTS `uzlnh_virtuemart_category_medias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uzlnh_virtuemart_category_medias` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_category_id` mediumint(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_media_id` int(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `i_virtuemart_category_id` (`virtuemart_category_id`,`virtuemart_media_id`),
  KEY `ordering` (`ordering`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uzlnh_virtuemart_category_medias`
--

LOCK TABLES `uzlnh_virtuemart_category_medias` WRITE;
/*!40000 ALTER TABLE `uzlnh_virtuemart_category_medias` DISABLE KEYS */;
INSERT INTO `uzlnh_virtuemart_category_medias` VALUES (10,10,39,1),(9,9,38,1),(8,8,19,1),(7,7,18,1),(6,6,17,1),(11,11,40,1),(12,13,41,1),(13,14,42,1),(14,15,43,1),(15,16,44,1);
/*!40000 ALTER TABLE `uzlnh_virtuemart_category_medias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uzlnh_virtuemart_configs`
--

DROP TABLE IF EXISTS `uzlnh_virtuemart_configs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uzlnh_virtuemart_configs` (
  `virtuemart_config_id` tinyint(1) unsigned NOT NULL AUTO_INCREMENT,
  `config` text,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_config_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Holds configuration settings';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uzlnh_virtuemart_configs`
--

LOCK TABLES `uzlnh_virtuemart_configs` WRITE;
/*!40000 ALTER TABLE `uzlnh_virtuemart_configs` DISABLE KEYS */;
INSERT INTO `uzlnh_virtuemart_configs` VALUES (1,'shop_is_offline=s:1:\"0\";|offline_message=czoxMDM6ItCc0LDQs9Cw0LfQuNC9INCy0YDQtdC80LXQvdC90L4g0L3QtSDRgNCw0LHQvtGC0LDQtdGCLiDQn9C+0LbQsNC70YPQudGB0YLQsCwg0LfQsNC50LTQuNGC0LUg0L/QvtC30LbQtS4iOw==|use_as_catalog=s:1:\"0\";|currency_converter_module=s:14:\"convertECB.php\";|order_mail_html=s:1:\"1\";|useSSL=s:1:\"0\";|dangeroustools=s:1:\"1\";|debug_enable=s:4:\"none\";|google_jquery=s:1:\"1\";|multix=s:4:\"none\";|pdf_button_enable=s:1:\"1\";|show_emailfriend=s:1:\"0\";|show_printicon=s:1:\"0\";|show_out_of_stock_products=s:1:\"1\";|coupons_enable=s:1:\"1\";|show_uncat_child_products=s:1:\"1\";|coupons_default_expire=s:3:\"1,W\";|weight_unit_default=s:1:\"G\";|lwh_unit_default=s:2:\"CM\";|showReviewFor=s:4:\"none\";|reviewMode=s:4:\"none\";|showRatingFor=s:3:\"all\";|ratingMode=s:6:\"bought\";|reviews_autopublish=s:1:\"1\";|reviews_minimum_comment_length=s:2:\"50\";|reviews_maximum_comment_length=s:4:\"2000\";|vmtemplate=s:7:\"default\";|categorytemplate=s:7:\"default\";|showCategory=s:1:\"1\";|categorylayout=s:1:\"0\";|categories_per_row=s:1:\"3\";|productlayout=s:1:\"0\";|products_per_row=s:1:\"3\";|vmlayout=s:1:\"0\";|show_featured=s:1:\"0\";|featured_products_per_row=s:1:\"3\";|show_topTen=s:1:\"0\";|topten_products_per_row=s:1:\"3\";|show_recent=s:1:\"0\";|show_latest=s:1:\"1\";|assets_general_path=s:33:\"components/com_virtuemart/assets/\";|media_category_path=s:35:\"images/stories/virtuemart/category/\";|media_product_path=s:34:\"images/stories/virtuemart/product/\";|media_manufacturer_path=s:39:\"images/stories/virtuemart/manufacturer/\";|media_vendor_path=s:33:\"images/stories/virtuemart/vendor/\";|forSale_path_thumb=s:42:\"images/stories/virtuemart/forSale/resized/\";|img_resize_enable=s:1:\"1\";|img_width=s:3:\"240\";|img_height=s:3:\"240\";|no_image_set=s:11:\"noimage.gif\";|no_image_found=s:11:\"warning.png\";|browse_orderby_field=s:11:\"pc.ordering\";|browse_orderby_fields=a:4:{i:0;s:12:\"product_name\";i:1;s:13:\"category_name\";i:2;s:7:\"mf_name\";i:3;s:13:\"product_price\";}|browse_search_fields=a:5:{i:0;s:12:\"product_name\";i:1;s:14:\"product_s_desc\";i:2;s:13:\"category_name\";i:3;s:20:\"category_description\";i:4;s:7:\"mf_name\";}|show_prices=s:1:\"1\";|price_show_packaging_pricelabel=s:1:\"0\";|show_tax=s:1:\"0\";|basePrice=s:1:\"1\";|basePriceText=s:1:\"1\";|basePriceRounding=s:1:\"0\";|variantModification=s:1:\"1\";|variantModificationText=s:1:\"1\";|variantModificationRounding=s:2:\"-1\";|basePriceVariant=s:1:\"1\";|basePriceVariantText=s:1:\"1\";|basePriceVariantRounding=s:2:\"-1\";|basePriceWithTax=s:1:\"1\";|basePriceWithTaxText=s:1:\"1\";|basePriceWithTaxRounding=s:1:\"0\";|discountedPriceWithoutTax=s:1:\"1\";|discountedPriceWithoutTaxText=s:1:\"1\";|discountedPriceWithoutTaxRounding=s:2:\"-1\";|salesPriceWithDiscount=s:1:\"0\";|salesPriceWithDiscountText=s:1:\"0\";|salesPriceWithDiscountRounding=s:2:\"-1\";|salesPrice=s:1:\"1\";|salesPriceText=s:1:\"1\";|salesPriceRounding=s:1:\"0\";|priceWithoutTax=s:1:\"0\";|priceWithoutTaxText=s:1:\"0\";|priceWithoutTaxRounding=s:2:\"-1\";|discountAmount=s:1:\"1\";|discountAmountText=s:1:\"1\";|discountAmountRounding=s:2:\"-1\";|taxAmount=s:1:\"0\";|taxAmountText=s:1:\"0\";|taxAmountRounding=s:2:\"-1\";|addtocart_popup=s:1:\"1\";|check_stock=s:1:\"0\";|automatic_payment=s:1:\"1\";|automatic_shipment=s:1:\"1\";|agree_to_tos_onorder=s:1:\"0\";|oncheckout_show_legal_info=s:1:\"1\";|oncheckout_show_register=s:1:\"0\";|oncheckout_show_steps=s:1:\"0\";|oncheckout_show_register_text=s:47:\"COM_VIRTUEMART_ONCHECKOUT_DEFAULT_TEXT_REGISTER\";|seo_disabled=s:1:\"0\";|seo_translate=s:1:\"0\";|seo_use_id=s:1:\"0\";|sctime=d:1405945726.149447;|vmlang=s:5:\"ru_ru\";|virtuemart_config_id=i:1;|enable_content_plugin=s:1:\"1\";|reg_captcha=s:1:\"0\";|enableEnglish=s:1:\"1\";|useVendorEmail=s:1:\"1\";|pdf_icon=s:1:\"0\";|recommend_unauth=s:1:\"0\";|ask_captcha=s:1:\"0\";|ask_question=s:1:\"1\";|asks_minimum_comment_length=s:2:\"50\";|asks_maximum_comment_length=s:4:\"2000\";|product_navigation=s:1:\"0\";|display_stock=s:1:\"1\";|handle_404=s:1:\"1\";|cp_rm=a:1:{i:0;s:1:\"C\";}|latest_products_days=s:1:\"7\";|latest_products_orderBy=s:10:\"created_on\";|lstockmail=s:1:\"0\";|stockhandle=s:4:\"none\";|rised_availability=s:0:\"\";|image=s:0:\"\";|rr_os=a:7:{i:0;s:2:\"-1\";i:1;s:1:\"P\";i:2;s:1:\"U\";i:3;s:1:\"C\";i:4;s:1:\"X\";i:5;s:1:\"R\";i:6;s:1:\"S\";}|show_manufacturers=s:1:\"1\";|manufacturer_per_row=s:1:\"0\";|mediaLimit=s:1:\"9\";|llimit_init_BE=s:1:\"9\";|pagseq=s:0:\"\";|llimit_init_FE=s:1:\"9\";|pagseq_1=s:0:\"\";|pagseq_2=s:0:\"\";|pagseq_3=s:0:\"\";|pagseq_4=s:0:\"\";|pagseq_5=s:0:\"\";|feed_cat_published=s:1:\"0\";|feed_cat_show_images=s:1:\"0\";|feed_cat_show_prices=s:1:\"0\";|feed_cat_show_description=s:1:\"0\";|feed_cat_description_type=s:14:\"product_s_desc\";|feed_cat_max_text_length=s:3:\"500\";|forSale_path=s:118:\"/var/www/ph238604/data/www/ph238604-210420141006039.www12.pagehost.ru/administrator/components/com_virtuemart/vmfiles/\";|add_img_main=s:1:\"1\";|show_store_desc=s:1:\"1\";|show_categories=s:1:\"0\";|homepage_categories_per_row=s:1:\"3\";|homepage_products_per_row=s:1:\"3\";|featured_products_rows=s:1:\"3\";|topTen_products_rows=s:1:\"3\";|recent_products_rows=s:1:\"3\";|latest_products_rows=s:1:\"3\";|feed_latest_published=s:1:\"0\";|feed_latest_nb=s:1:\"5\";|feed_topten_published=s:1:\"0\";|feed_topten_nb=s:1:\"5\";|feed_featured_published=s:1:\"0\";|feed_featured_nb=s:1:\"5\";|feed_home_show_images=s:1:\"0\";|feed_home_show_prices=s:1:\"0\";|feed_home_show_description=s:1:\"0\";|feed_home_description_type=s:14:\"product_s_desc\";|feed_home_max_text_length=s:3:\"500\";|usefancy=s:1:\"1\";|css=s:1:\"0\";|jquery=s:1:\"1\";|jprice=s:1:\"1\";|jsite=s:1:\"1\";|jchosen=s:1:\"1\";|askprice=s:1:\"1\";|rappenrundung=s:1:\"0\";|roundindig=s:1:\"1\";|cVarswT=s:1:\"1\";|unitPrice=s:1:\"1\";|unitPriceText=s:1:\"1\";|unitPriceRounding=s:1:\"2\";|popup_rel=s:1:\"1\";|oncheckout_opc=s:1:\"1\";|oncheckout_only_registered=s:1:\"0\";|oncheckout_change_shopper=s:1:\"0\";|oncheckout_show_images=s:1:\"1\";|del_date_type=s:1:\"m\";|inv_os=a:1:{i:0;s:1:\"C\";}|email_os_s=a:7:{i:0;s:2:\"-1\";i:1;s:1:\"P\";i:2;s:1:\"U\";i:3;s:1:\"C\";i:4;s:1:\"X\";i:5;s:1:\"R\";i:6;s:1:\"S\";}|email_os_v=a:7:{i:0;s:2:\"-1\";i:1;s:1:\"P\";i:2;s:1:\"U\";i:3;s:1:\"C\";i:4;s:1:\"X\";i:5;s:1:\"R\";i:6;s:1:\"S\";}|vmlang_js=s:1:\"0\";|prd_brws_orderby_dir=s:3:\"ASC\";|browse_cat_orderby_field=s:10:\"c.ordering\";|cat_brws_orderby_dir=s:3:\"ASC\";|seo_sufix=s:7:\"-detail\";|task=s:4:\"save\";|option=s:14:\"com_virtuemart\";|view=s:6:\"config\";|55dedb6110ddeb08bf62edd9b6aed44e=s:1:\"1\";|1888777bcfdbd13a90d8befa155ff0c7=s:1:\"1\";|5d1e2165fbec5ce6bc0104bb4604497a=s:1:\"1\";|b7baff63581849f4fb69d7ba652faa9a=s:1:\"1\";|7931fe40b32ad531e0224ca73bb1a5c4=s:1:\"1\";|c26fd30c34271e8f62a099d9294bc9d6=s:1:\"1\";|f6ea3cc7f1a63163b93eeb1c1510aee4=s:1:\"1\";|2e68aa8a886ba757c6a256595e8c4250=s:1:\"1\";|4e518ffcee4c45bc6783e40032cd1ac4=s:1:\"1\";|0000ef107f27383860c12e2c16e68efd=s:1:\"1\";','0000-00-00 00:00:00',0,'2014-07-21 12:28:46',706,'0000-00-00 00:00:00',0);
/*!40000 ALTER TABLE `uzlnh_virtuemart_configs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uzlnh_virtuemart_countries`
--

DROP TABLE IF EXISTS `uzlnh_virtuemart_countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uzlnh_virtuemart_countries` (
  `virtuemart_country_id` smallint(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_worldzone_id` tinyint(11) NOT NULL DEFAULT '1',
  `country_name` char(64) DEFAULT NULL,
  `country_3_code` char(3) DEFAULT NULL,
  `country_2_code` char(2) DEFAULT NULL,
  `ordering` int(2) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_country_id`),
  KEY `idx_country_3_code` (`country_3_code`),
  KEY `idx_country_2_code` (`country_2_code`),
  KEY `ordering` (`ordering`),
  KEY `published` (`published`)
) ENGINE=MyISAM AUTO_INCREMENT=249 DEFAULT CHARSET=utf8 COMMENT='Country records';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uzlnh_virtuemart_countries`
--

LOCK TABLES `uzlnh_virtuemart_countries` WRITE;
/*!40000 ALTER TABLE `uzlnh_virtuemart_countries` DISABLE KEYS */;
INSERT INTO `uzlnh_virtuemart_countries` VALUES (176,1,'Russian Federation','RUS','RU',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0);
/*!40000 ALTER TABLE `uzlnh_virtuemart_countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uzlnh_virtuemart_coupons`
--

DROP TABLE IF EXISTS `uzlnh_virtuemart_coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uzlnh_virtuemart_coupons` (
  `coupon_used` varchar(200) NOT NULL DEFAULT '',
  `virtuemart_coupon_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `coupon_code` char(32) NOT NULL DEFAULT '',
  `percent_or_total` enum('percent','total') NOT NULL DEFAULT 'percent',
  `coupon_type` enum('gift','permanent') NOT NULL DEFAULT 'gift',
  `coupon_value` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `coupon_start_date` datetime DEFAULT NULL,
  `coupon_expiry_date` datetime DEFAULT NULL,
  `coupon_value_valid` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_coupon_id`),
  KEY `idx_coupon_code` (`coupon_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Used to store coupon codes';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uzlnh_virtuemart_coupons`
--

LOCK TABLES `uzlnh_virtuemart_coupons` WRITE;
/*!40000 ALTER TABLE `uzlnh_virtuemart_coupons` DISABLE KEYS */;
/*!40000 ALTER TABLE `uzlnh_virtuemart_coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uzlnh_virtuemart_currencies`
--

DROP TABLE IF EXISTS `uzlnh_virtuemart_currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uzlnh_virtuemart_currencies` (
  `virtuemart_currency_id` smallint(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_vendor_id` smallint(1) unsigned NOT NULL DEFAULT '1',
  `currency_name` char(64) DEFAULT NULL,
  `currency_code_2` char(2) DEFAULT NULL,
  `currency_code_3` char(3) DEFAULT NULL,
  `currency_numeric_code` int(4) DEFAULT NULL,
  `currency_exchange_rate` decimal(10,5) DEFAULT NULL,
  `currency_symbol` char(4) DEFAULT NULL,
  `currency_decimal_place` char(4) DEFAULT NULL,
  `currency_decimal_symbol` char(4) DEFAULT NULL,
  `currency_thousands` char(4) DEFAULT NULL,
  `currency_positive_style` char(64) DEFAULT NULL,
  `currency_negative_style` char(64) DEFAULT NULL,
  `ordering` int(2) NOT NULL DEFAULT '0',
  `shared` tinyint(1) NOT NULL DEFAULT '1',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_currency_id`),
  KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`),
  KEY `idx_currency_code_3` (`currency_code_3`),
  KEY `idx_currency_numeric_code` (`currency_numeric_code`),
  KEY `ordering` (`ordering`),
  KEY `published` (`published`),
  KEY `shared` (`shared`)
) ENGINE=MyISAM AUTO_INCREMENT=202 DEFAULT CHARSET=utf8 COMMENT='Used to store currencies';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uzlnh_virtuemart_currencies`
--

LOCK TABLES `uzlnh_virtuemart_currencies` WRITE;
/*!40000 ALTER TABLE `uzlnh_virtuemart_currencies` DISABLE KEYS */;
INSERT INTO `uzlnh_virtuemart_currencies` VALUES (131,1,'Russian ruble','','RUB',643,0.00000,'руб','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0);
/*!40000 ALTER TABLE `uzlnh_virtuemart_currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uzlnh_virtuemart_customs`
--

DROP TABLE IF EXISTS `uzlnh_virtuemart_customs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uzlnh_virtuemart_customs` (
  `virtuemart_custom_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `custom_parent_id` int(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_vendor_id` smallint(1) NOT NULL DEFAULT '1',
  `show_title` tinyint(1) NOT NULL DEFAULT '1',
  `custom_jplugin_id` int(11) NOT NULL DEFAULT '0',
  `custom_element` char(50) NOT NULL DEFAULT '',
  `admin_only` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1:Display in admin only',
  `custom_title` char(255) NOT NULL DEFAULT '' COMMENT 'field title',
  `custom_tip` char(255) NOT NULL DEFAULT '' COMMENT 'tip',
  `custom_value` char(255) DEFAULT NULL COMMENT 'defaut value',
  `custom_field_desc` char(255) DEFAULT NULL COMMENT 'description or unit',
  `field_type` char(1) NOT NULL DEFAULT '0' COMMENT 'S:string,I:int,P:parent, B:bool,D:date,T:time,H:hidden',
  `is_list` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'list of values',
  `is_hidden` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1:hidden',
  `is_cart_attribute` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Add attributes to cart',
  `layout_pos` char(24) DEFAULT NULL COMMENT 'Layout Position',
  `custom_params` text,
  `shared` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'valide for all vendors?',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `ordering` int(2) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_custom_id`),
  KEY `i_custom_parent_id` (`custom_parent_id`),
  KEY `i_virtuemart_vendor_id` (`virtuemart_vendor_id`),
  KEY `idx_custom_element` (`custom_element`),
  KEY `idx_field_type` (`field_type`),
  KEY `i_is_cart_attribute` (`is_cart_attribute`),
  KEY `i_shared` (`shared`),
  KEY `i_published` (`published`),
  KEY `i_ordering` (`ordering`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COMMENT='custom fields definition';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uzlnh_virtuemart_customs`
--

LOCK TABLES `uzlnh_virtuemart_customs` WRITE;
/*!40000 ALTER TABLE `uzlnh_virtuemart_customs` DISABLE KEYS */;
INSERT INTO `uzlnh_virtuemart_customs` VALUES (1,0,1,1,0,'',0,'COM_VIRTUEMART_RELATED_PRODUCTS','COM_VIRTUEMART_RELATED_PRODUCTS_TIP','','COM_VIRTUEMART_RELATED_PRODUCTS_DESC','R',0,0,0,NULL,NULL,0,1,'2011-05-25 21:52:43',62,0,'2011-05-25 21:52:43',62,'0000-00-00 00:00:00',0),(2,0,1,1,0,'',0,'COM_VIRTUEMART_RELATED_CATEGORIES','COM_VIRTUEMART_RELATED_CATEGORIES_TIP',NULL,'COM_VIRTUEMART_RELATED_CATEGORIES_DESC','Z',0,0,0,NULL,NULL,0,1,'0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(25,0,1,1,0,'0',0,'Бренд:','','','','S',0,0,1,'','0',0,1,'2014-08-11 09:21:47',706,0,'2014-08-11 09:25:57',706,'0000-00-00 00:00:00',0),(9,0,1,1,0,'0',0,'Размер','','30','','V',0,0,1,'','0',0,1,'0000-00-00 00:00:00',0,0,'2014-07-21 13:34:23',706,'0000-00-00 00:00:00',0),(22,0,1,1,0,'0',0,'Лэйбл','','','','M',0,0,0,'product-label','0',0,1,'2014-07-20 12:31:36',706,0,'2014-07-20 12:31:36',706,'0000-00-00 00:00:00',0),(23,0,1,1,0,'0',0,'Цвет','','30','','V',0,0,1,'','0',0,1,'2014-07-28 06:00:22',706,0,'2014-07-28 06:00:32',706,'0000-00-00 00:00:00',0);
/*!40000 ALTER TABLE `uzlnh_virtuemart_customs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uzlnh_virtuemart_invoices`
--

DROP TABLE IF EXISTS `uzlnh_virtuemart_invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uzlnh_virtuemart_invoices` (
  `virtuemart_invoice_id` int(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_vendor_id` smallint(1) unsigned NOT NULL DEFAULT '1',
  `virtuemart_order_id` int(1) unsigned DEFAULT NULL,
  `invoice_number` char(64) DEFAULT NULL,
  `order_status` char(2) DEFAULT NULL,
  `xhtml` text,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_invoice_id`),
  UNIQUE KEY `idx_invoice_number` (`invoice_number`,`virtuemart_vendor_id`),
  KEY `idx_virtuemart_order_id` (`virtuemart_order_id`),
  KEY `i_virtuemart_vendor_id` (`virtuemart_vendor_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='custom fields definition';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uzlnh_virtuemart_invoices`
--

LOCK TABLES `uzlnh_virtuemart_invoices` WRITE;
/*!40000 ALTER TABLE `uzlnh_virtuemart_invoices` DISABLE KEYS */;
/*!40000 ALTER TABLE `uzlnh_virtuemart_invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uzlnh_virtuemart_manufacturer_medias`
--

DROP TABLE IF EXISTS `uzlnh_virtuemart_manufacturer_medias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uzlnh_virtuemart_manufacturer_medias` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_manufacturer_id` smallint(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_media_id` int(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `i_virtuemart_manufacturer_id` (`virtuemart_manufacturer_id`,`virtuemart_media_id`),
  KEY `ordering` (`ordering`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uzlnh_virtuemart_manufacturer_medias`
--

LOCK TABLES `uzlnh_virtuemart_manufacturer_medias` WRITE;
/*!40000 ALTER TABLE `uzlnh_virtuemart_manufacturer_medias` DISABLE KEYS */;
INSERT INTO `uzlnh_virtuemart_manufacturer_medias` VALUES (3,2,21,1),(2,1,20,1),(4,3,22,1);
/*!40000 ALTER TABLE `uzlnh_virtuemart_manufacturer_medias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uzlnh_virtuemart_manufacturercategories`
--

DROP TABLE IF EXISTS `uzlnh_virtuemart_manufacturercategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uzlnh_virtuemart_manufacturercategories` (
  `virtuemart_manufacturercategories_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_manufacturercategories_id`),
  KEY `published` (`published`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Manufacturers are assigned to these categories';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uzlnh_virtuemart_manufacturercategories`
--

LOCK TABLES `uzlnh_virtuemart_manufacturercategories` WRITE;
/*!40000 ALTER TABLE `uzlnh_virtuemart_manufacturercategories` DISABLE KEYS */;
INSERT INTO `uzlnh_virtuemart_manufacturercategories` VALUES (1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0);
/*!40000 ALTER TABLE `uzlnh_virtuemart_manufacturercategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uzlnh_virtuemart_manufacturercategories_ru_ru`
--

DROP TABLE IF EXISTS `uzlnh_virtuemart_manufacturercategories_ru_ru`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uzlnh_virtuemart_manufacturercategories_ru_ru` (
  `virtuemart_manufacturercategories_id` int(1) unsigned NOT NULL,
  `mf_category_name` char(180) NOT NULL DEFAULT '',
  `mf_category_desc` varchar(19000) NOT NULL DEFAULT '',
  `slug` char(192) NOT NULL DEFAULT '',
  PRIMARY KEY (`virtuemart_manufacturercategories_id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uzlnh_virtuemart_manufacturercategories_ru_ru`
--

LOCK TABLES `uzlnh_virtuemart_manufacturercategories_ru_ru` WRITE;
/*!40000 ALTER TABLE `uzlnh_virtuemart_manufacturercategories_ru_ru` DISABLE KEYS */;
INSERT INTO `uzlnh_virtuemart_manufacturercategories_ru_ru` VALUES (1,'-default-','This is the default manufacturer category','-default-');
/*!40000 ALTER TABLE `uzlnh_virtuemart_manufacturercategories_ru_ru` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uzlnh_virtuemart_manufacturers`
--

DROP TABLE IF EXISTS `uzlnh_virtuemart_manufacturers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uzlnh_virtuemart_manufacturers` (
  `virtuemart_manufacturer_id` smallint(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_manufacturercategories_id` int(11) DEFAULT NULL,
  `hits` int(11) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_manufacturer_id`),
  KEY `published` (`published`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Manufacturers are those who deliver products';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uzlnh_virtuemart_manufacturers`
--

LOCK TABLES `uzlnh_virtuemart_manufacturers` WRITE;
/*!40000 ALTER TABLE `uzlnh_virtuemart_manufacturers` DISABLE KEYS */;
INSERT INTO `uzlnh_virtuemart_manufacturers` VALUES (1,1,0,1,'0000-00-00 00:00:00',0,'2014-07-21 12:25:18',706,'0000-00-00 00:00:00',0),(2,1,0,1,'2014-07-15 10:00:40',706,'2014-07-21 12:25:29',706,'0000-00-00 00:00:00',0),(3,1,0,1,'2014-07-15 10:01:14',706,'2014-07-21 12:25:38',706,'0000-00-00 00:00:00',0);
/*!40000 ALTER TABLE `uzlnh_virtuemart_manufacturers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uzlnh_virtuemart_manufacturers_ru_ru`
--

DROP TABLE IF EXISTS `uzlnh_virtuemart_manufacturers_ru_ru`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uzlnh_virtuemart_manufacturers_ru_ru` (
  `virtuemart_manufacturer_id` int(1) unsigned NOT NULL,
  `mf_name` char(180) NOT NULL DEFAULT '',
  `mf_email` char(255) NOT NULL DEFAULT '',
  `mf_desc` varchar(19000) NOT NULL DEFAULT '',
  `mf_url` char(255) NOT NULL DEFAULT '',
  `slug` char(192) NOT NULL DEFAULT '',
  PRIMARY KEY (`virtuemart_manufacturer_id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uzlnh_virtuemart_manufacturers_ru_ru`
--

LOCK TABLES `uzlnh_virtuemart_manufacturers_ru_ru` WRITE;
/*!40000 ALTER TABLE `uzlnh_virtuemart_manufacturers_ru_ru` DISABLE KEYS */;
INSERT INTO `uzlnh_virtuemart_manufacturers_ru_ru` VALUES (1,'Для дома',' manufacturer@example.org','','http://www.example.org','для-дома'),(2,'В офис','','','','в-офис'),(3,'На прогулку','','','','на-прогулку');
/*!40000 ALTER TABLE `uzlnh_virtuemart_manufacturers_ru_ru` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uzlnh_virtuemart_medias`
--

DROP TABLE IF EXISTS `uzlnh_virtuemart_medias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uzlnh_virtuemart_medias` (
  `virtuemart_media_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_vendor_id` smallint(1) NOT NULL DEFAULT '1',
  `file_title` char(126) NOT NULL DEFAULT '',
  `file_description` char(254) NOT NULL DEFAULT '',
  `file_meta` char(254) NOT NULL DEFAULT '',
  `file_mimetype` char(64) NOT NULL DEFAULT '',
  `file_type` char(32) NOT NULL DEFAULT '',
  `file_url` varchar(900) NOT NULL DEFAULT '',
  `file_url_thumb` varchar(900) NOT NULL DEFAULT '',
  `file_is_product_image` tinyint(1) NOT NULL DEFAULT '0',
  `file_is_downloadable` tinyint(1) NOT NULL DEFAULT '0',
  `file_is_forSale` tinyint(1) NOT NULL DEFAULT '0',
  `file_params` varchar(17500) DEFAULT NULL,
  `file_lang` varchar(500) NOT NULL,
  `shared` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_media_id`),
  KEY `i_virtuemart_vendor_id` (`virtuemart_vendor_id`),
  KEY `i_published` (`published`),
  KEY `i_shared` (`shared`)
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='Additional Images and Files which are assigned to products';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uzlnh_virtuemart_medias`
--

LOCK TABLES `uzlnh_virtuemart_medias` WRITE;
/*!40000 ALTER TABLE `uzlnh_virtuemart_medias` DISABLE KEYS */;
INSERT INTO `uzlnh_virtuemart_medias` VALUES (1,1,'hand_saw.jpg','','hand saw','image/jpeg','product','images/stories/virtuemart/product/hand_saw.jpg','images/stories/virtuemart/product/resized/hand_saw_90x90.jpg',0,0,0,'','',0,1,'0000-00-00 00:00:00',0,'2012-10-26 10:25:23',627,'0000-00-00 00:00:00',0),(2,1,'hand_shovel.jpg','','hand shovel','image/jpeg','product','images/stories/virtuemart/product/hand_shovel.jpg','images/stories/virtuemart/product/resized/hand_shovel_90x90.jpg',0,0,0,'','',0,1,'0000-00-00 00:00:00',0,'2012-10-26 10:42:44',627,'0000-00-00 00:00:00',0),(3,1,'ladder.jpg','','ladder','image/jpeg','product','images/stories/virtuemart/product/ladder.jpg','images/stories/virtuemart/product/resized/ladder_90x90.jpg',0,0,0,'','',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(4,1,'power_drill.jpg','','power drill','image/jpeg','product','images/stories/virtuemart/product/power_drill.jpg','images/stories/virtuemart/product/resized/power_drill_90x90.jpg',0,0,0,'','',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(5,1,'power_sander.jpg','','power sander','image/jpeg','product','images/stories/virtuemart/product/power_sander.jpg','images/stories/virtuemart/product/resized/power_sander_90x90.jpg',0,0,0,'','',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(6,1,'shovel.jpg','','shovel','image/jpeg','product','images/stories/virtuemart/product/shovel.jpg','images/stories/virtuemart/product/resized/shovel_90x90.jpg',0,0,0,'','',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(7,1,'garden_tools.jpg','','garden tools','image/jpeg','category','images/stories/virtuemart/category/garden_tools.jpg','images/stories/virtuemart/category/resized/garden_tools_90x90.jpg',0,0,0,'','',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(8,1,'hand_tools.jpg','','hand tools','image/jpeg','category','images/stories/virtuemart/category/hand_tools.jpg','images/stories/virtuemart/category/resized/hand_tools_90x90.jpg',0,0,0,'','',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(9,1,'power_indoor_tool.jpg','','power indoor tool','image/jpeg','category','images/stories/virtuemart/category/power_indoor_tool.jpg','images/stories/virtuemart/category/resized/power_indoor_tool_90x90.jpg',0,0,0,'','',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(10,1,'power_outdoor_tool.jpg','','Power outdoor tool','image/jpeg','category','images/stories/virtuemart/category/power_outdoor_tool.jpg','images/stories/virtuemart/category/resized/power_outdoor_tool_90x90.jpg',0,0,0,'','',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(11,1,'power_tools.jpg','','power tools','image/jpeg','category','images/stories/virtuemart/category/power_tools.jpg','images/stories/virtuemart/category/resized/power_tools_90x90.jpg',0,0,0,'','',0,1,'0000-00-00 00:00:00',0,'2012-10-26 10:24:06',627,'0000-00-00 00:00:00',0),(12,1,'manufacturersample.jpg','','manufacturer sample','image/jpeg','manufacturer','images/stories/virtuemart/manufacturer/manufacturersample.jpg','images/stories/virtuemart/manufacturer/resized/manufacturersample_90x90.jpg',0,0,0,'','',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(13,1,'washupito.gif','','washupito','image/gif','vendor','images/stories/virtuemart/vendor/washupito.gif','images/stories/virtuemart/vendor/resized/washupito_90x90.gif',0,0,0,'','',0,1,'0000-00-00 00:00:00',0,'2014-07-15 09:33:45',706,'0000-00-00 00:00:00',0),(14,1,'hammer.jpg','','hammer','image/jpeg','product','images/stories/virtuemart/product/hammer.jpg','images/stories/virtuemart/product/resized/hammer_90x90.jpg',0,0,0,'','',0,1,'0000-00-00 00:00:00',0,'2012-10-26 10:16:59',627,'0000-00-00 00:00:00',0),(15,1,'chain_saw.jpg','','chain saw','image/jpeg','product','images/stories/virtuemart/product/chain_saw.jpg','images/stories/virtuemart/product/resized/chain_saw_90x90.jpg',0,0,0,'','',0,1,'0000-00-00 00:00:00',0,'2012-10-26 10:19:12',627,'0000-00-00 00:00:00',0),(16,1,'circular_saw.jpg','','circular saw','image/jpeg','product','images/stories/virtuemart/product/circular_saw.jpg','images/stories/virtuemart/product/resized/circular_saw_90x90.jpg',0,0,0,'','',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(17,1,'1.jpg','','','image/jpeg','category','images/stories/virtuemart/category/1.jpg','',0,0,0,'','',0,1,'2014-07-15 09:56:18',706,'2014-07-21 13:29:10',706,'0000-00-00 00:00:00',0),(18,1,'2.jpg','','','image/jpeg','category','images/stories/virtuemart/category/2.jpg','',0,0,0,'','',0,1,'2014-07-15 09:57:13',706,'2014-07-21 13:29:17',706,'0000-00-00 00:00:00',0),(19,1,'3.jpg','','','image/jpeg','category','images/stories/virtuemart/category/3.jpg','',0,0,0,'','',0,1,'2014-07-15 09:58:05',706,'2014-07-21 13:29:50',706,'0000-00-00 00:00:00',0),(20,1,'hammer.jpg','','hammer','image/png','manufacturer','images/stories/virtuemart/manufacturer/33-80x80.png','',0,0,0,'','',0,1,'2014-07-15 10:00:14',706,'2014-07-21 12:25:18',706,'0000-00-00 00:00:00',0),(21,1,'55-80x80.png','','','image/png','manufacturer','images/stories/virtuemart/manufacturer/55-80x80.png','',0,0,0,'','',0,1,'2014-07-15 10:00:40',706,'2014-07-21 12:25:29',706,'0000-00-00 00:00:00',0),(22,1,'99-80x80.png','','','image/png','manufacturer','images/stories/virtuemart/manufacturer/99-80x80.png','',0,0,0,'','',0,1,'2014-07-15 10:01:14',706,'2014-07-21 12:25:38',706,'0000-00-00 00:00:00',0),(23,1,'washupito.gif_vendor','','washupito','image/png','vendor','images/stories/virtuemart/vendor/logo.png','',0,0,0,'','',0,1,'2014-07-15 10:02:32',706,'2014-08-17 18:11:56',706,'0000-00-00 00:00:00',0),(24,1,'1.jpg','','','image/jpeg','product','images/stories/virtuemart/product/1.jpg','',0,0,0,'','',0,1,'2014-07-15 10:06:06',706,'2014-08-11 09:22:59',706,'0000-00-00 00:00:00',0),(25,1,'1.jpg_product','','','image/jpeg','product','images/stories/virtuemart/product/11.jpg','',0,0,0,'','',0,1,'2014-07-15 10:06:19',706,'2014-07-15 10:06:19',706,'0000-00-00 00:00:00',0),(26,1,'1.jpg_product','','','image/jpeg','product','images/stories/virtuemart/product/17.jpg','',0,0,0,'','',0,1,'2014-07-15 10:06:29',706,'2014-07-15 10:06:29',706,'0000-00-00 00:00:00',0),(27,1,'1.jpg_product_product_product_product_product_product','','','image/jpeg','product','images/stories/virtuemart/product/2.jpg','',0,0,0,'','',0,1,'2014-07-15 10:07:13',706,'2014-08-11 09:23:14',706,'0000-00-00 00:00:00',0),(28,1,'1.jpg_product_product_product_product','','','image/jpeg','product','images/stories/virtuemart/product/21.jpg','',0,0,0,'','',0,1,'2014-07-15 10:07:24',706,'2014-07-15 10:07:24',706,'0000-00-00 00:00:00',0),(29,1,'1.jpg_product_product_product_product','','','image/jpeg','product','images/stories/virtuemart/product/23.jpg','',0,0,0,'','',0,1,'2014-07-15 10:07:32',706,'2014-07-15 10:07:32',706,'0000-00-00 00:00:00',0),(30,1,'1.jpg_product_product_product_product_product_product_product','','','image/jpeg','product','images/stories/virtuemart/product/3.jpg','',0,0,0,'','',0,1,'2014-07-15 10:07:55',706,'2014-08-11 09:23:24',706,'0000-00-00 00:00:00',0),(31,1,'1.jpg_product_product_product_product_product','','','image/jpeg','product','images/stories/virtuemart/product/36.jpg','',0,0,0,'','',0,1,'2014-07-15 10:08:02',706,'2014-07-15 10:08:02',706,'0000-00-00 00:00:00',0),(32,1,'1.jpg_product_product_product_product_product','','','image/jpeg','product','images/stories/virtuemart/product/31.jpg','',0,0,0,'','',0,1,'2014-07-15 10:08:09',706,'2014-07-15 10:08:09',706,'0000-00-00 00:00:00',0),(33,1,'1.jpg_product','','','image/jpeg','product','images/stories/virtuemart/product/313.jpg','',0,0,0,'','',0,1,'2014-07-15 13:50:38',706,'2014-07-15 13:50:38',706,'0000-00-00 00:00:00',0),(35,1,'sale_label.png','sale_label.png','sale_label.png','image/png','product','images/stories/virtuemart/product/sale_label.png','',0,0,0,'','',0,1,'2014-07-20 12:36:36',706,'2014-07-20 12:36:36',706,'0000-00-00 00:00:00',0),(36,1,'new_label.png','new_label.png','new_label.png','image/png','product','images/stories/virtuemart/product/new_label.png','',0,0,0,'','',0,1,'2014-07-20 12:36:36',706,'2014-07-20 12:36:36',706,'0000-00-00 00:00:00',0),(37,1,'manufacturersample','manufacturersample','manufacturersample','','manufacturer','images/stories/virtuemart/manufacturer/manufacturersample','',0,0,0,'','',0,1,'2014-07-20 12:36:36',706,'2014-07-20 12:36:36',706,'0000-00-00 00:00:00',0),(38,1,'11-(29)-380x450.jpg','','','image/jpeg','category','images/stories/virtuemart/category/11-(29)-380x450.jpg','',0,0,0,'','',0,1,'2014-07-20 12:42:35',706,'2014-07-21 13:29:36',706,'0000-00-00 00:00:00',0),(39,1,'11-(29)-380x4501.jpg','','','image/jpeg','category','images/stories/virtuemart/category/11-(29)-380x4501.jpg','',0,0,0,'','',0,1,'2014-07-20 12:43:52',706,'2014-07-21 13:29:28',706,'0000-00-00 00:00:00',0),(40,1,'2-(9)-380x450.jpg','','','image/jpeg','category','images/stories/virtuemart/category/2-(9)-380x450.jpg','',0,0,0,'','',0,1,'2014-07-20 12:44:48',706,'2014-07-21 13:29:42',706,'0000-00-00 00:00:00',0),(41,1,'_dsc0063-800x800.jpg','','','image/jpeg','category','images/stories/virtuemart/category/_dsc0063-800x800.jpg','',0,0,0,'','',0,1,'2014-07-20 12:46:58',706,'2014-07-21 13:28:54',706,'0000-00-00 00:00:00',0),(42,1,'_dsc0057-800x800.jpg','','','image/jpeg','category','images/stories/virtuemart/category/_dsc0057-800x800.jpg','',0,0,0,'','',0,1,'2014-07-20 12:47:47',706,'2014-07-21 13:28:47',706,'0000-00-00 00:00:00',0),(43,1,'2-(27)-380x450.jpg','','','image/jpeg','category','images/stories/virtuemart/category/2-(27)-380x450.jpg','',0,0,0,'','',0,1,'2014-07-20 12:48:42',706,'2014-07-21 13:28:37',706,'0000-00-00 00:00:00',0),(44,1,'_dsc0067-800x800.jpg','','','image/jpeg','category','images/stories/virtuemart/category/_dsc0067-800x800.jpg','',0,0,0,'','',0,1,'2014-07-20 12:49:38',706,'2014-07-21 13:29:01',706,'0000-00-00 00:00:00',0),(45,1,'img_6175-kопировать.jpg','','','image/jpeg','product','images/stories/virtuemart/product/img_6175-kопировать.jpg','',0,0,0,'','',0,1,'2014-08-17 13:36:30',706,'2014-08-17 17:51:32',706,'0000-00-00 00:00:00',0),(46,1,'img_6182-kопировать.jpg','','','image/jpeg','product','images/stories/virtuemart/product/img_6182-kопировать.jpg','',0,0,0,'','',0,1,'2014-08-17 18:09:44',706,'2014-08-17 18:15:37',706,'0000-00-00 00:00:00',0);
/*!40000 ALTER TABLE `uzlnh_virtuemart_medias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uzlnh_virtuemart_migration_oldtonew_ids`
--

DROP TABLE IF EXISTS `uzlnh_virtuemart_migration_oldtonew_ids`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uzlnh_virtuemart_migration_oldtonew_ids` (
  `attributes` longblob,
  `relatedproducts` longblob,
  `id` smallint(1) unsigned NOT NULL AUTO_INCREMENT,
  `cats` longblob,
  `catsxref` blob,
  `manus` longblob,
  `mfcats` blob,
  `shoppergroups` longblob,
  `products` longblob,
  `products_start` int(1) DEFAULT NULL,
  `orderstates` blob,
  `orders` longblob,
  `orders_start` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='xref table for vm1 ids to vm2 ids';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uzlnh_virtuemart_migration_oldtonew_ids`
--

LOCK TABLES `uzlnh_virtuemart_migration_oldtonew_ids` WRITE;
/*!40000 ALTER TABLE `uzlnh_virtuemart_migration_oldtonew_ids` DISABLE KEYS */;
INSERT INTO `uzlnh_virtuemart_migration_oldtonew_ids` VALUES (NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `uzlnh_virtuemart_migration_oldtonew_ids` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uzlnh_virtuemart_modules`
--

DROP TABLE IF EXISTS `uzlnh_virtuemart_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uzlnh_virtuemart_modules` (
  `module_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `module_name` char(255) DEFAULT NULL,
  `module_description` varchar(21000) DEFAULT NULL,
  `module_perms` char(255) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `is_admin` enum('0','1') NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`module_id`),
  KEY `idx_module_name` (`module_name`),
  KEY `idx_module_ordering` (`ordering`),
  KEY `i_published` (`published`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='VirtueMart Core Modules, not: Joomla modules';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uzlnh_virtuemart_modules`
--

LOCK TABLES `uzlnh_virtuemart_modules` WRITE;
/*!40000 ALTER TABLE `uzlnh_virtuemart_modules` DISABLE KEYS */;
INSERT INTO `uzlnh_virtuemart_modules` VALUES (1,'product','Here you can administer your online catalog of products.  Categories , Products (view=product), Attributes  ,Product Types      Product Files (view=media), Inventory  , Calculation Rules ,Customer Reviews  ','storeadmin,admin',1,'1',1),(2,'order','View Order and Update Order Status:    Orders , Coupons , Revenue Report ,Shopper , Shopper Groups ','admin,storeadmin',1,'1',2),(3,'manufacturer','Manage the manufacturers of products in your store.','storeadmin,admin',1,'1',3),(4,'store','Store Configuration: Store Information, Payment Methods , Shipment, Shipment Rates','storeadmin,admin',1,'1',4),(5,'configuration','Configuration: shop configuration , currencies (view=currency), Credit Card List, Countries, userfields, order status  ','admin,storeadmin',1,'1',5),(6,'msgs','This module is unprotected an used for displaying system messages to users.  We need to have an area that does not require authorization when things go wrong.','none',0,'0',99),(7,'shop','This is the Washupito store module.  This is the demo store included with the VirtueMart distribution.','none',1,'0',99),(8,'store','Store Configuration: Store Information, Payment Methods , Shipment, Shipment Rates','storeadmin,admin',1,'1',4),(9,'account','This module allows shoppers to update their account information and view previously placed orders.','shopper,storeadmin,admin,demo',1,'0',99),(10,'checkout','','none',0,'0',99),(11,'tools','Tools','admin',1,'1',8),(13,'zone','This is the zone-shipment module. Here you can manage your shipment costs according to Zones.','admin,storeadmin',0,'1',11);
/*!40000 ALTER TABLE `uzlnh_virtuemart_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uzlnh_virtuemart_order_calc_rules`
--

DROP TABLE IF EXISTS `uzlnh_virtuemart_order_calc_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uzlnh_virtuemart_order_calc_rules` (
  `virtuemart_order_calc_rule_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_calc_id` int(11) DEFAULT NULL,
  `virtuemart_order_id` int(11) DEFAULT NULL,
  `virtuemart_vendor_id` smallint(11) NOT NULL DEFAULT '1',
  `virtuemart_order_item_id` int(11) DEFAULT NULL,
  `calc_rule_name` char(64) NOT NULL DEFAULT '' COMMENT 'Name of the rule',
  `calc_kind` char(16) NOT NULL DEFAULT '' COMMENT 'Discount/Tax/Margin/Commission',
  `calc_mathop` char(16) NOT NULL DEFAULT '' COMMENT 'Discount/Tax/Margin/Commission',
  `calc_amount` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `calc_result` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `calc_value` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `calc_currency` smallint(1) DEFAULT NULL,
  `calc_params` varchar(18000) DEFAULT NULL,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_order_calc_rule_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='Stores all calculation rules which are part of an order';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uzlnh_virtuemart_order_calc_rules`
--

LOCK TABLES `uzlnh_virtuemart_order_calc_rules` WRITE;
/*!40000 ALTER TABLE `uzlnh_virtuemart_order_calc_rules` DISABLE KEYS */;
INSERT INTO `uzlnh_virtuemart_order_calc_rules` VALUES (1,4,1,1,1,'Скидка','VatTax','+',0.00000,0.00000,0.00000,131,'','2014-07-15 16:35:39',0,'2014-07-15 16:35:39',0,'0000-00-00 00:00:00',0),(2,0,1,1,NULL,'','payment','',0.00000,0.00000,0.00000,0,'','2014-07-15 16:35:39',0,'2014-07-15 16:35:39',0,'0000-00-00 00:00:00',0),(3,0,1,1,NULL,'','shipment','',0.00000,0.00000,0.00000,0,'','2014-07-15 16:35:39',0,'2014-07-15 16:35:39',0,'0000-00-00 00:00:00',0),(4,4,2,1,2,'Скидка','VatTax','+',0.00000,0.00000,0.00000,131,'','2014-07-15 16:37:53',0,'2014-07-15 16:37:53',0,'0000-00-00 00:00:00',0),(5,0,2,1,NULL,'','payment','',0.00000,0.00000,0.00000,0,'','2014-07-15 16:37:53',0,'2014-07-15 16:37:53',0,'0000-00-00 00:00:00',0),(6,0,2,1,NULL,'','shipment','',0.00000,0.00000,0.00000,0,'','2014-07-15 16:37:53',0,'2014-07-15 16:37:53',0,'0000-00-00 00:00:00',0);
/*!40000 ALTER TABLE `uzlnh_virtuemart_order_calc_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uzlnh_virtuemart_order_histories`
--

DROP TABLE IF EXISTS `uzlnh_virtuemart_order_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uzlnh_virtuemart_order_histories` (
  `virtuemart_order_history_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_order_id` int(1) unsigned NOT NULL DEFAULT '0',
  `order_status_code` char(1) NOT NULL DEFAULT '0',
  `customer_notified` tinyint(1) NOT NULL DEFAULT '0',
  `comments` varchar(21000) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_order_history_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='Stores all actions and changes that occur to an order';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uzlnh_virtuemart_order_histories`
--

LOCK TABLES `uzlnh_virtuemart_order_histories` WRITE;
/*!40000 ALTER TABLE `uzlnh_virtuemart_order_histories` DISABLE KEYS */;
INSERT INTO `uzlnh_virtuemart_order_histories` VALUES (1,1,'P',0,'',1,'2014-07-15 16:35:39',0,'2014-07-15 16:35:39',0,'0000-00-00 00:00:00',0),(2,1,'P',1,'',1,'2014-07-15 16:35:39',0,'2014-07-15 16:35:39',0,'0000-00-00 00:00:00',0),(3,2,'P',0,'',1,'2014-07-15 16:37:53',0,'2014-07-15 16:37:53',0,'0000-00-00 00:00:00',0),(4,2,'P',1,'',1,'2014-07-15 16:37:53',0,'2014-07-15 16:37:53',0,'0000-00-00 00:00:00',0),(5,2,'-',0,'Order deleted',1,'2014-07-29 13:38:40',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(6,1,'-',0,'Order deleted',1,'2014-07-29 13:38:40',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0);
/*!40000 ALTER TABLE `uzlnh_virtuemart_order_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uzlnh_virtuemart_order_items`
--

DROP TABLE IF EXISTS `uzlnh_virtuemart_order_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uzlnh_virtuemart_order_items` (
  `product_priceWithoutTax` decimal(15,5) DEFAULT NULL,
  `product_discountedPriceWithoutTax` decimal(15,5) DEFAULT NULL,
  `delivery_date` varchar(200) DEFAULT NULL,
  `virtuemart_order_item_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_order_id` int(11) DEFAULT NULL,
  `virtuemart_vendor_id` smallint(11) NOT NULL DEFAULT '1',
  `virtuemart_product_id` int(11) DEFAULT NULL,
  `order_item_sku` char(64) NOT NULL DEFAULT '',
  `order_item_name` char(255) NOT NULL DEFAULT '',
  `product_quantity` int(11) DEFAULT NULL,
  `product_item_price` decimal(15,5) DEFAULT NULL,
  `product_tax` decimal(15,5) DEFAULT NULL,
  `product_basePriceWithTax` decimal(15,5) DEFAULT NULL,
  `product_final_price` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `product_subtotal_discount` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `product_subtotal_with_tax` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `order_item_currency` int(11) DEFAULT NULL,
  `order_status` char(1) DEFAULT NULL,
  `product_attribute` text,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_order_item_id`),
  KEY `virtuemart_product_id` (`virtuemart_product_id`),
  KEY `i_virtuemart_order_id` (`virtuemart_order_id`),
  KEY `i_virtuemart_vendor_id` (`virtuemart_vendor_id`),
  KEY `order_status` (`order_status`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Stores all items (products) which are part of an order';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uzlnh_virtuemart_order_items`
--

LOCK TABLES `uzlnh_virtuemart_order_items` WRITE;
/*!40000 ALTER TABLE `uzlnh_virtuemart_order_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `uzlnh_virtuemart_order_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uzlnh_virtuemart_order_userinfos`
--

DROP TABLE IF EXISTS `uzlnh_virtuemart_order_userinfos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uzlnh_virtuemart_order_userinfos` (
  `virtuemart_order_userinfo_id` int(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_order_id` int(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_user_id` int(1) unsigned NOT NULL DEFAULT '0',
  `address_type` char(2) DEFAULT NULL,
  `address_type_name` char(32) DEFAULT NULL,
  `company` char(64) DEFAULT NULL,
  `title` char(32) DEFAULT NULL,
  `last_name` char(48) DEFAULT NULL,
  `first_name` char(48) DEFAULT NULL,
  `middle_name` char(48) DEFAULT NULL,
  `phone_1` char(32) DEFAULT NULL,
  `phone_2` char(32) DEFAULT NULL,
  `fax` char(32) DEFAULT NULL,
  `address_1` char(64) NOT NULL DEFAULT '',
  `address_2` char(64) DEFAULT NULL,
  `city` char(64) NOT NULL DEFAULT '',
  `virtuemart_state_id` smallint(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_country_id` smallint(1) unsigned NOT NULL DEFAULT '0',
  `zip` char(16) NOT NULL DEFAULT '',
  `email` char(128) DEFAULT NULL,
  `agreed` tinyint(1) NOT NULL DEFAULT '0',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_order_userinfo_id`),
  KEY `i_virtuemart_order_id` (`virtuemart_order_id`),
  KEY `i_virtuemart_user_id` (`virtuemart_user_id`),
  KEY `idx_address_type` (`address_type`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Stores the BillTo and ShipTo Information at order time';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uzlnh_virtuemart_order_userinfos`
--

LOCK TABLES `uzlnh_virtuemart_order_userinfos` WRITE;
/*!40000 ALTER TABLE `uzlnh_virtuemart_order_userinfos` DISABLE KEYS */;
/*!40000 ALTER TABLE `uzlnh_virtuemart_order_userinfos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uzlnh_virtuemart_orders`
--

DROP TABLE IF EXISTS `uzlnh_virtuemart_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uzlnh_virtuemart_orders` (
  `virtuemart_order_id` int(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_user_id` int(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_vendor_id` smallint(1) unsigned NOT NULL DEFAULT '1',
  `customer_number` char(32) DEFAULT NULL,
  `order_number` char(64) DEFAULT NULL,
  `order_pass` char(8) DEFAULT NULL,
  `order_total` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `order_salesPrice` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `order_billTaxAmount` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `order_billTax` varchar(400) DEFAULT NULL,
  `order_billDiscountAmount` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `order_discountAmount` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `order_subtotal` decimal(15,5) DEFAULT NULL,
  `order_tax` decimal(10,5) DEFAULT NULL,
  `order_shipment` decimal(10,2) DEFAULT NULL,
  `order_shipment_tax` decimal(10,5) DEFAULT NULL,
  `order_payment` decimal(10,2) DEFAULT NULL,
  `order_payment_tax` decimal(10,5) DEFAULT NULL,
  `coupon_discount` decimal(12,2) NOT NULL DEFAULT '0.00',
  `coupon_code` char(32) DEFAULT NULL,
  `order_discount` decimal(12,2) NOT NULL DEFAULT '0.00',
  `order_currency` smallint(1) DEFAULT NULL,
  `order_status` char(1) DEFAULT NULL,
  `user_currency_id` smallint(1) DEFAULT NULL,
  `user_currency_rate` decimal(10,5) NOT NULL DEFAULT '1.00000',
  `virtuemart_paymentmethod_id` mediumint(1) unsigned DEFAULT NULL,
  `virtuemart_shipmentmethod_id` mediumint(1) unsigned DEFAULT NULL,
  `customer_note` varchar(20000) DEFAULT NULL,
  `delivery_date` varchar(200) DEFAULT NULL,
  `order_language` char(7) DEFAULT NULL,
  `ip_address` char(15) NOT NULL DEFAULT '',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_order_id`),
  KEY `idx_orders_virtuemart_user_id` (`virtuemart_user_id`),
  KEY `idx_orders_virtuemart_vendor_id` (`virtuemart_vendor_id`),
  KEY `idx_orders_order_number` (`order_number`),
  KEY `idx_orders_virtuemart_paymentmethod_id` (`virtuemart_paymentmethod_id`),
  KEY `idx_orders_virtuemart_shipmentmethod_id` (`virtuemart_shipmentmethod_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Used to store all orders';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uzlnh_virtuemart_orders`
--

LOCK TABLES `uzlnh_virtuemart_orders` WRITE;
/*!40000 ALTER TABLE `uzlnh_virtuemart_orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `uzlnh_virtuemart_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uzlnh_virtuemart_orderstates`
--

DROP TABLE IF EXISTS `uzlnh_virtuemart_orderstates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uzlnh_virtuemart_orderstates` (
  `virtuemart_orderstate_id` tinyint(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_vendor_id` smallint(11) NOT NULL DEFAULT '1',
  `order_status_code` char(1) NOT NULL DEFAULT '',
  `order_status_name` char(64) DEFAULT NULL,
  `order_status_description` varchar(20000) DEFAULT NULL,
  `order_stock_handle` char(1) NOT NULL DEFAULT 'A',
  `ordering` int(2) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_orderstate_id`),
  KEY `idx_order_status_ordering` (`ordering`),
  KEY `idx_order_status_virtuemart_vendor_id` (`virtuemart_vendor_id`),
  KEY `i_published` (`published`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='All available order statuses';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uzlnh_virtuemart_orderstates`
--

LOCK TABLES `uzlnh_virtuemart_orderstates` WRITE;
/*!40000 ALTER TABLE `uzlnh_virtuemart_orderstates` DISABLE KEYS */;
INSERT INTO `uzlnh_virtuemart_orderstates` VALUES (1,1,'P','Pending','','R',1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(2,1,'U','Confirmed by shopper','','R',2,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(3,1,'C','Confirmed','','R',3,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(4,1,'X','Cancelled','','A',4,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(5,1,'R','Refunded','','A',5,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(6,1,'S','Shipped','','O',6,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0);
/*!40000 ALTER TABLE `uzlnh_virtuemart_orderstates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uzlnh_virtuemart_payment_plg_authorizenet`
--

DROP TABLE IF EXISTS `uzlnh_virtuemart_payment_plg_authorizenet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uzlnh_virtuemart_payment_plg_authorizenet` (
  `id` int(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_order_id` int(1) unsigned DEFAULT NULL,
  `order_number` char(64) DEFAULT NULL,
  `virtuemart_paymentmethod_id` mediumint(1) unsigned DEFAULT NULL,
  `payment_name` varchar(5000) DEFAULT NULL,
  `payment_order_total` decimal(15,5) NOT NULL,
  `payment_currency` smallint(1) DEFAULT NULL,
  `return_context` char(255) DEFAULT NULL,
  `cost_per_transaction` decimal(10,2) DEFAULT NULL,
  `cost_percent_total` char(10) DEFAULT NULL,
  `tax_id` smallint(1) DEFAULT NULL,
  `authorizenet_response_authorization_code` char(10) DEFAULT NULL,
  `authorizenet_response_transaction_id` char(128) DEFAULT NULL,
  `authorizenet_response_response_code` char(128) DEFAULT NULL,
  `authorizenet_response_response_subcode` char(13) DEFAULT NULL,
  `authorizenet_response_response_reason_code` decimal(10,2) DEFAULT NULL,
  `authorizenet_response_response_reason_text` text,
  `authorizenet_response_transaction_type` char(50) DEFAULT NULL,
  `authorizenet_response_account_number` char(4) DEFAULT NULL,
  `authorizenet_response_card_type` char(128) DEFAULT NULL,
  `authorizenet_response_card_code_response` char(5) DEFAULT NULL,
  `authorizenet_response_cavv_response` char(1) DEFAULT NULL,
  `authorizeresponse_raw` text,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Payment AuthorizeNet Table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uzlnh_virtuemart_payment_plg_authorizenet`
--

LOCK TABLES `uzlnh_virtuemart_payment_plg_authorizenet` WRITE;
/*!40000 ALTER TABLE `uzlnh_virtuemart_payment_plg_authorizenet` DISABLE KEYS */;
/*!40000 ALTER TABLE `uzlnh_virtuemart_payment_plg_authorizenet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uzlnh_virtuemart_payment_plg_standard`
--

DROP TABLE IF EXISTS `uzlnh_virtuemart_payment_plg_standard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uzlnh_virtuemart_payment_plg_standard` (
  `id` int(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_order_id` int(1) unsigned DEFAULT NULL,
  `order_number` char(64) DEFAULT NULL,
  `virtuemart_paymentmethod_id` mediumint(1) unsigned DEFAULT NULL,
  `payment_name` varchar(5000) DEFAULT NULL,
  `payment_order_total` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `payment_currency` char(3) DEFAULT NULL,
  `email_currency` char(3) DEFAULT NULL,
  `cost_per_transaction` decimal(10,2) DEFAULT NULL,
  `cost_percent_total` decimal(10,2) DEFAULT NULL,
  `tax_id` smallint(1) DEFAULT NULL,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Payment Standard Table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uzlnh_virtuemart_payment_plg_standard`
--

LOCK TABLES `uzlnh_virtuemart_payment_plg_standard` WRITE;
/*!40000 ALTER TABLE `uzlnh_virtuemart_payment_plg_standard` DISABLE KEYS */;
/*!40000 ALTER TABLE `uzlnh_virtuemart_payment_plg_standard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uzlnh_virtuemart_paymentmethod_shoppergroups`
--

DROP TABLE IF EXISTS `uzlnh_virtuemart_paymentmethod_shoppergroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uzlnh_virtuemart_paymentmethod_shoppergroups` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_paymentmethod_id` mediumint(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_shoppergroup_id` smallint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `i_virtuemart_paymentmethod_id` (`virtuemart_paymentmethod_id`,`virtuemart_shoppergroup_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='xref table for paymentmethods to shoppergroup';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uzlnh_virtuemart_paymentmethod_shoppergroups`
--

LOCK TABLES `uzlnh_virtuemart_paymentmethod_shoppergroups` WRITE;
/*!40000 ALTER TABLE `uzlnh_virtuemart_paymentmethod_shoppergroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `uzlnh_virtuemart_paymentmethod_shoppergroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uzlnh_virtuemart_paymentmethods`
--

DROP TABLE IF EXISTS `uzlnh_virtuemart_paymentmethods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uzlnh_virtuemart_paymentmethods` (
  `virtuemart_paymentmethod_id` mediumint(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_vendor_id` smallint(11) NOT NULL DEFAULT '1',
  `payment_jplugin_id` int(11) NOT NULL DEFAULT '0',
  `slug` char(255) NOT NULL DEFAULT '',
  `payment_element` char(50) NOT NULL DEFAULT '',
  `payment_params` varchar(19000) DEFAULT NULL,
  `shared` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'valide for all vendors?',
  `ordering` int(2) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_paymentmethod_id`),
  KEY `idx_payment_jplugin_id` (`payment_jplugin_id`),
  KEY `idx_payment_method_ordering` (`ordering`),
  KEY `idx_payment_element` (`payment_element`,`virtuemart_vendor_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='The payment methods of your store';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uzlnh_virtuemart_paymentmethods`
--

LOCK TABLES `uzlnh_virtuemart_paymentmethods` WRITE;
/*!40000 ALTER TABLE `uzlnh_virtuemart_paymentmethods` DISABLE KEYS */;
INSERT INTO `uzlnh_virtuemart_paymentmethods` VALUES (1,1,10004,'','standard','payment_logos=\"\"|countries=\"\"|payment_currency=\"\"|email_currency=\"\"|status_pending=\"\"|send_invoice_on_order_null=\"\"|min_amount=\"\"|max_amount=\"\"|cost_per_transaction=\"\"|cost_percent_total=\"\"|tax_id=\"-1\"|payment_info=\"\"|',0,0,1,'2014-07-15 14:53:45',706,'2014-07-15 15:10:50',706,'0000-00-00 00:00:00',0);
/*!40000 ALTER TABLE `uzlnh_virtuemart_paymentmethods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uzlnh_virtuemart_paymentmethods_ru_ru`
--

DROP TABLE IF EXISTS `uzlnh_virtuemart_paymentmethods_ru_ru`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uzlnh_virtuemart_paymentmethods_ru_ru` (
  `virtuemart_paymentmethod_id` int(1) unsigned NOT NULL,
  `payment_name` char(180) NOT NULL DEFAULT '',
  `payment_desc` varchar(19000) NOT NULL DEFAULT '',
  `slug` char(192) NOT NULL DEFAULT '',
  PRIMARY KEY (`virtuemart_paymentmethod_id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uzlnh_virtuemart_paymentmethods_ru_ru`
--

LOCK TABLES `uzlnh_virtuemart_paymentmethods_ru_ru` WRITE;
/*!40000 ALTER TABLE `uzlnh_virtuemart_paymentmethods_ru_ru` DISABLE KEYS */;
INSERT INTO `uzlnh_virtuemart_paymentmethods_ru_ru` VALUES (1,'Оплата наличными','','оплата-наличными');
/*!40000 ALTER TABLE `uzlnh_virtuemart_paymentmethods_ru_ru` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uzlnh_virtuemart_permgroups`
--

DROP TABLE IF EXISTS `uzlnh_virtuemart_permgroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uzlnh_virtuemart_permgroups` (
  `virtuemart_permgroup_id` tinyint(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_vendor_id` smallint(1) unsigned NOT NULL DEFAULT '1',
  `group_name` char(128) DEFAULT NULL,
  `group_level` int(11) DEFAULT NULL,
  `ordering` int(2) NOT NULL DEFAULT '0',
  `shared` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_permgroup_id`),
  KEY `i_virtuemart_vendor_id` (`virtuemart_vendor_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='Holds all the user groups';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uzlnh_virtuemart_permgroups`
--

LOCK TABLES `uzlnh_virtuemart_permgroups` WRITE;
/*!40000 ALTER TABLE `uzlnh_virtuemart_permgroups` DISABLE KEYS */;
INSERT INTO `uzlnh_virtuemart_permgroups` VALUES (1,1,'admin',0,0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(2,1,'storeadmin',250,0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(3,1,'shopper',500,0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(4,1,'demo',750,0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0);
/*!40000 ALTER TABLE `uzlnh_virtuemart_permgroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uzlnh_virtuemart_product_categories`
--

DROP TABLE IF EXISTS `uzlnh_virtuemart_product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uzlnh_virtuemart_product_categories` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_product_id` int(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_category_id` mediumint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `i_virtuemart_product_id` (`virtuemart_product_id`,`virtuemart_category_id`),
  KEY `i_ordering` (`ordering`)
) ENGINE=MyISAM AUTO_INCREMENT=58 DEFAULT CHARSET=utf8 COMMENT='Maps Products to Categories';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uzlnh_virtuemart_product_categories`
--

LOCK TABLES `uzlnh_virtuemart_product_categories` WRITE;
/*!40000 ALTER TABLE `uzlnh_virtuemart_product_categories` DISABLE KEYS */;
INSERT INTO `uzlnh_virtuemart_product_categories` VALUES (17,18,6,0),(18,18,7,0),(19,18,8,0),(23,20,6,0),(15,17,7,0),(25,20,8,0),(14,17,6,0),(16,17,8,0),(20,19,6,0),(22,19,8,0),(21,19,7,0),(24,20,7,0),(26,21,6,0),(27,21,7,0),(28,21,8,0),(29,22,6,0),(30,22,7,0),(31,22,8,0),(56,23,6,0),(33,17,9,0),(34,17,18,0),(35,17,10,0),(36,17,11,0),(37,17,12,0),(38,17,13,0),(39,17,14,0),(40,17,15,0),(41,17,16,0),(42,17,17,0),(43,17,19,0),(57,24,6,0),(45,19,9,0),(46,19,18,0),(47,19,10,0),(48,19,11,0),(49,19,12,0),(50,19,13,0),(51,19,14,0),(52,19,15,0),(53,19,16,0),(54,19,17,0),(55,19,19,0);
/*!40000 ALTER TABLE `uzlnh_virtuemart_product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uzlnh_virtuemart_product_customfields`
--

DROP TABLE IF EXISTS `uzlnh_virtuemart_product_customfields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uzlnh_virtuemart_product_customfields` (
  `virtuemart_customfield_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'field id',
  `virtuemart_product_id` int(11) NOT NULL DEFAULT '0',
  `virtuemart_custom_id` int(11) NOT NULL DEFAULT '1' COMMENT 'custom group id',
  `custom_value` varchar(8000) DEFAULT NULL COMMENT 'field value',
  `custom_price` decimal(15,5) DEFAULT NULL COMMENT 'price',
  `custom_param` varchar(12800) DEFAULT NULL COMMENT 'Param for Plugins',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) unsigned NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) unsigned NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_customfield_id`),
  KEY `idx_virtuemart_product_id` (`virtuemart_product_id`),
  KEY `idx_virtuemart_custom_id` (`virtuemart_custom_id`),
  KEY `idx_published` (`published`),
  KEY `idx_ordering` (`ordering`)
) ENGINE=MyISAM AUTO_INCREMENT=71 DEFAULT CHARSET=utf8 COMMENT='custom fields';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uzlnh_virtuemart_product_customfields`
--

LOCK TABLES `uzlnh_virtuemart_product_customfields` WRITE;
/*!40000 ALTER TABLE `uzlnh_virtuemart_product_customfields` DISABLE KEYS */;
INSERT INTO `uzlnh_virtuemart_product_customfields` VALUES (58,19,9,'S',NULL,'',0,'0000-00-00 00:00:00',0,'2014-08-11 09:22:46',706,'0000-00-00 00:00:00',0,1),(57,19,9,'XS',NULL,'',0,'0000-00-00 00:00:00',0,'2014-08-11 09:22:46',706,'0000-00-00 00:00:00',0,0),(70,22,25,'Chanel',NULL,'',0,'0000-00-00 00:00:00',0,'2014-08-11 09:23:24',706,'0000-00-00 00:00:00',0,3),(69,21,25,'Dolce & Gabbana',NULL,'',0,'0000-00-00 00:00:00',0,'2014-08-11 09:23:14',706,'0000-00-00 00:00:00',0,1),(68,20,25,'Sansara',NULL,'',0,'0000-00-00 00:00:00',0,'2014-08-11 09:22:59',706,'0000-00-00 00:00:00',0,1),(48,18,22,'36',NULL,'',0,'0000-00-00 00:00:00',0,'2014-08-11 09:22:38',706,'0000-00-00 00:00:00',0,0),(49,17,22,'35',NULL,'',0,'0000-00-00 00:00:00',0,'2014-08-11 09:22:26',706,'0000-00-00 00:00:00',0,0),(50,20,22,'35',NULL,'',0,'2014-07-20 13:51:49',706,'2014-08-11 09:22:59',706,'0000-00-00 00:00:00',0,0),(51,21,22,'36',NULL,'',0,'2014-07-20 13:51:49',706,'2014-08-11 09:23:14',706,'0000-00-00 00:00:00',0,0),(52,22,9,'XS',NULL,'',0,'0000-00-00 00:00:00',0,'2014-08-11 09:23:24',706,'0000-00-00 00:00:00',0,0),(53,22,9,'S',NULL,'',0,'0000-00-00 00:00:00',0,'2014-08-11 09:23:24',706,'0000-00-00 00:00:00',0,1),(54,22,9,'M',NULL,'',0,'0000-00-00 00:00:00',0,'2014-08-11 09:23:24',706,'0000-00-00 00:00:00',0,2),(55,19,23,'Белый',NULL,'',0,'0000-00-00 00:00:00',0,'2014-08-11 09:22:46',706,'0000-00-00 00:00:00',0,2),(56,19,23,'Черный',NULL,'',0,'0000-00-00 00:00:00',0,'2014-08-11 09:22:46',706,'0000-00-00 00:00:00',0,3),(65,17,25,'Chanel',NULL,'',0,'0000-00-00 00:00:00',0,'2014-08-11 09:22:26',706,'0000-00-00 00:00:00',0,1),(66,18,25,'Dior',NULL,'',0,'0000-00-00 00:00:00',0,'2014-08-11 09:22:38',706,'0000-00-00 00:00:00',0,1),(67,19,25,'Dior',NULL,'',0,'0000-00-00 00:00:00',0,'2014-08-11 09:22:46',706,'0000-00-00 00:00:00',0,4);
/*!40000 ALTER TABLE `uzlnh_virtuemart_product_customfields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uzlnh_virtuemart_product_manufacturers`
--

DROP TABLE IF EXISTS `uzlnh_virtuemart_product_manufacturers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uzlnh_virtuemart_product_manufacturers` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_product_id` int(11) DEFAULT NULL,
  `virtuemart_manufacturer_id` smallint(1) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `i_virtuemart_product_id` (`virtuemart_product_id`,`virtuemart_manufacturer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='Maps a product to a manufacturer';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uzlnh_virtuemart_product_manufacturers`
--

LOCK TABLES `uzlnh_virtuemart_product_manufacturers` WRITE;
/*!40000 ALTER TABLE `uzlnh_virtuemart_product_manufacturers` DISABLE KEYS */;
INSERT INTO `uzlnh_virtuemart_product_manufacturers` VALUES (17,17,1),(25,23,3),(26,24,3),(23,21,2),(20,18,2),(24,22,3),(21,19,3),(22,20,1);
/*!40000 ALTER TABLE `uzlnh_virtuemart_product_manufacturers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uzlnh_virtuemart_product_medias`
--

DROP TABLE IF EXISTS `uzlnh_virtuemart_product_medias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uzlnh_virtuemart_product_medias` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_product_id` int(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_media_id` int(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `i_virtuemart_product_id` (`virtuemart_product_id`,`virtuemart_media_id`),
  KEY `i_ordering` (`ordering`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uzlnh_virtuemart_product_medias`
--

LOCK TABLES `uzlnh_virtuemart_product_medias` WRITE;
/*!40000 ALTER TABLE `uzlnh_virtuemart_product_medias` DISABLE KEYS */;
INSERT INTO `uzlnh_virtuemart_product_medias` VALUES (11,17,24,1),(21,18,28,2),(26,17,33,2),(24,19,31,2),(23,19,30,1),(20,18,27,1),(27,20,24,1),(22,18,29,3),(25,19,32,3),(28,20,33,2),(29,21,27,1),(30,21,28,2),(31,21,29,3),(32,22,30,1),(33,22,31,2),(34,22,32,3),(35,23,45,1),(36,24,46,1);
/*!40000 ALTER TABLE `uzlnh_virtuemart_product_medias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uzlnh_virtuemart_product_prices`
--

DROP TABLE IF EXISTS `uzlnh_virtuemart_product_prices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uzlnh_virtuemart_product_prices` (
  `virtuemart_product_price_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_product_id` int(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_shoppergroup_id` int(11) DEFAULT NULL,
  `product_price` decimal(15,5) DEFAULT NULL,
  `override` tinyint(1) DEFAULT NULL,
  `product_override_price` decimal(15,5) DEFAULT NULL,
  `product_tax_id` int(11) DEFAULT NULL,
  `product_discount_id` int(11) DEFAULT NULL,
  `product_currency` smallint(1) DEFAULT NULL,
  `product_price_publish_up` datetime DEFAULT NULL,
  `product_price_publish_down` datetime DEFAULT NULL,
  `price_quantity_start` int(11) unsigned DEFAULT NULL,
  `price_quantity_end` int(11) unsigned DEFAULT NULL,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_product_price_id`),
  KEY `i_product_id` (`virtuemart_product_id`),
  KEY `i_virtuemart_shoppergroup_id` (`virtuemart_shoppergroup_id`),
  KEY `dx_product_price_publish_up` (`product_price_publish_up`),
  KEY `dx_product_price_publish_down` (`product_price_publish_down`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COMMENT='Holds price records for a product';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uzlnh_virtuemart_product_prices`
--

LOCK TABLES `uzlnh_virtuemart_product_prices` WRITE;
/*!40000 ALTER TABLE `uzlnh_virtuemart_product_prices` DISABLE KEYS */;
INSERT INTO `uzlnh_virtuemart_product_prices` VALUES (21,21,0,3000.00000,0,2500.00000,0,0,131,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,0,'2014-07-20 13:51:49',706,'2014-08-11 09:23:14',706,'0000-00-00 00:00:00',0),(17,17,0,3000.00000,0,0.00000,0,0,131,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,0,'2014-07-15 10:06:06',706,'2014-08-11 09:22:26',706,'0000-00-00 00:00:00',0),(23,23,0,13100.00000,0,0.00000,0,-1,131,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,0,'2014-08-17 13:35:33',706,'2014-08-17 17:51:32',706,'0000-00-00 00:00:00',0),(24,24,0,8000.00000,0,0.00000,0,0,131,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,0,'2014-08-17 18:06:42',706,'2014-08-17 18:15:37',706,'0000-00-00 00:00:00',0),(20,20,0,3000.00000,0,0.00000,0,0,131,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,0,'2014-07-20 13:51:49',706,'2014-08-11 09:22:59',706,'0000-00-00 00:00:00',0),(22,22,0,3000.00000,0,0.00000,0,0,131,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,0,'2014-07-20 13:51:49',706,'2014-08-11 09:23:24',706,'0000-00-00 00:00:00',0),(18,18,0,3000.00000,0,2500.00000,0,0,131,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,0,'2014-07-15 10:06:35',706,'2014-08-11 09:22:38',706,'0000-00-00 00:00:00',0),(19,19,0,3000.00000,0,0.00000,0,0,131,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,0,'2014-07-15 10:06:41',706,'2014-08-11 09:22:46',706,'0000-00-00 00:00:00',0);
/*!40000 ALTER TABLE `uzlnh_virtuemart_product_prices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uzlnh_virtuemart_product_relations`
--

DROP TABLE IF EXISTS `uzlnh_virtuemart_product_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uzlnh_virtuemart_product_relations` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_product_id` int(1) unsigned NOT NULL DEFAULT '0',
  `related_products` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `i_virtuemart_product_id` (`virtuemart_product_id`,`related_products`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uzlnh_virtuemart_product_relations`
--

LOCK TABLES `uzlnh_virtuemart_product_relations` WRITE;
/*!40000 ALTER TABLE `uzlnh_virtuemart_product_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `uzlnh_virtuemart_product_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uzlnh_virtuemart_product_shoppergroups`
--

DROP TABLE IF EXISTS `uzlnh_virtuemart_product_shoppergroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uzlnh_virtuemart_product_shoppergroups` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_product_id` int(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_shoppergroup_id` smallint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `i_virtuemart_product_id` (`virtuemart_product_id`,`virtuemart_shoppergroup_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Maps Products to Categories';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uzlnh_virtuemart_product_shoppergroups`
--

LOCK TABLES `uzlnh_virtuemart_product_shoppergroups` WRITE;
/*!40000 ALTER TABLE `uzlnh_virtuemart_product_shoppergroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `uzlnh_virtuemart_product_shoppergroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uzlnh_virtuemart_products`
--

DROP TABLE IF EXISTS `uzlnh_virtuemart_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uzlnh_virtuemart_products` (
  `product_gtin` char(64) DEFAULT NULL,
  `product_mpn` char(64) DEFAULT NULL,
  `virtuemart_product_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_vendor_id` smallint(1) unsigned NOT NULL DEFAULT '1',
  `product_parent_id` int(1) unsigned NOT NULL DEFAULT '0',
  `product_sku` char(64) DEFAULT NULL,
  `product_weight` decimal(10,4) DEFAULT NULL,
  `product_weight_uom` char(7) DEFAULT NULL,
  `product_length` decimal(10,4) DEFAULT NULL,
  `product_width` decimal(10,4) DEFAULT NULL,
  `product_height` decimal(10,4) DEFAULT NULL,
  `product_lwh_uom` char(7) DEFAULT NULL,
  `product_url` char(255) DEFAULT NULL,
  `product_in_stock` int(1) NOT NULL DEFAULT '0',
  `product_ordered` int(1) NOT NULL DEFAULT '0',
  `low_stock_notification` int(1) unsigned NOT NULL DEFAULT '0',
  `product_available_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `product_availability` char(32) DEFAULT NULL,
  `product_special` tinyint(1) DEFAULT NULL,
  `product_sales` int(1) unsigned NOT NULL DEFAULT '0',
  `product_unit` varchar(8) DEFAULT NULL,
  `product_packaging` decimal(8,4) unsigned DEFAULT NULL,
  `product_params` varchar(2000) DEFAULT NULL,
  `hits` int(11) unsigned DEFAULT NULL,
  `intnotes` varchar(18000) DEFAULT NULL,
  `metarobot` varchar(400) DEFAULT NULL,
  `metaauthor` varchar(400) DEFAULT NULL,
  `layout` char(16) DEFAULT NULL,
  `published` tinyint(1) DEFAULT NULL,
  `pordering` mediumint(2) unsigned NOT NULL DEFAULT '0',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_product_id`),
  KEY `idx_product_virtuemart_vendor_id` (`virtuemart_vendor_id`),
  KEY `idx_product_product_parent_id` (`product_parent_id`),
  KEY `i_product_special` (`product_special`),
  KEY `i_published` (`published`),
  KEY `i_pordering` (`pordering`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COMMENT='All products are stored here.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uzlnh_virtuemart_products`
--

LOCK TABLES `uzlnh_virtuemart_products` WRITE;
/*!40000 ALTER TABLE `uzlnh_virtuemart_products` DISABLE KEYS */;
INSERT INTO `uzlnh_virtuemart_products` VALUES ('','',17,1,0,'4',NULL,'KG',100.0000,150.0000,100.0000,'CM','',100,0,0,'2014-07-15 00:00:00','',1,0,'KG',NULL,'min_order_level=\"\"|max_order_level=\"\"|step_order_level=\"\"|product_box=\"\"|',NULL,'','','','0',1,0,'2014-07-15 10:06:06',706,'2014-08-11 09:22:26',706,'0000-00-00 00:00:00',0),('','',18,1,0,'6',NULL,'KG',100.0000,150.0000,100.0000,'CM','',100,4,0,'2014-07-15 00:00:00','',1,0,'KG',NULL,'min_order_level=\"\"|max_order_level=\"\"|step_order_level=\"\"|product_box=\"\"|',NULL,'','','','0',1,0,'2014-07-15 10:06:35',706,'2014-08-11 09:22:38',706,'0000-00-00 00:00:00',0),('','',19,1,0,'5',NULL,'KG',100.0000,150.0000,100.0000,'CM','',100,0,0,'2014-07-15 00:00:00','',1,0,'KG',NULL,'min_order_level=\"\"|max_order_level=\"\"|step_order_level=\"\"|product_box=\"\"|',NULL,'','','','0',1,0,'2014-07-15 10:06:41',706,'2014-08-11 09:22:46',706,'0000-00-00 00:00:00',0),('','',20,1,0,'1',NULL,'KG',100.0000,150.0000,100.0000,'CM','',100,0,0,'2014-07-15 00:00:00','',1,0,'KG',NULL,'min_order_level=\"\"|max_order_level=\"\"|step_order_level=\"\"|product_box=\"\"|',NULL,'','','','0',1,0,'2014-07-20 13:51:49',706,'2014-08-11 09:22:59',706,'0000-00-00 00:00:00',0),('','',21,1,0,'2',NULL,'KG',100.0000,150.0000,100.0000,'CM','',100,4,0,'2014-07-15 00:00:00','',1,0,'KG',NULL,'min_order_level=\"\"|max_order_level=\"\"|step_order_level=\"\"|product_box=\"\"|',NULL,'','','','0',1,0,'2014-07-20 13:51:49',706,'2014-08-11 09:23:14',706,'0000-00-00 00:00:00',0),('','',22,1,0,'3',NULL,'KG',100.0000,150.0000,100.0000,'CM','',100,0,0,'2014-07-15 00:00:00','',0,0,'KG',NULL,'min_order_level=\"\"|max_order_level=\"\"|step_order_level=\"\"|product_box=\"\"|',NULL,'','','','0',1,0,'2014-07-20 13:51:49',706,'2014-08-11 09:23:24',706,'0000-00-00 00:00:00',0),('','',23,1,0,'1',NULL,'KG',NULL,NULL,NULL,'M','',0,0,0,'2014-08-17 00:00:00','',1,0,'KG',NULL,'min_order_level=\"\"|max_order_level=\"\"|step_order_level=\"\"|product_box=\"\"|',NULL,'','','','0',1,0,'2014-08-17 13:35:33',706,'2014-08-17 17:51:32',706,'0000-00-00 00:00:00',0),('','',24,1,0,'2',NULL,'KG',NULL,NULL,NULL,'M','',0,0,0,'2014-08-17 00:00:00','',1,0,'KG',NULL,'min_order_level=\"\"|max_order_level=\"\"|step_order_level=\"\"|product_box=\"\"|',NULL,'','','','0',1,0,'2014-08-17 18:06:42',706,'2014-08-17 18:15:37',706,'0000-00-00 00:00:00',0);
/*!40000 ALTER TABLE `uzlnh_virtuemart_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uzlnh_virtuemart_products_ru_ru`
--

DROP TABLE IF EXISTS `uzlnh_virtuemart_products_ru_ru`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uzlnh_virtuemart_products_ru_ru` (
  `virtuemart_product_id` int(1) unsigned NOT NULL,
  `product_s_desc` varchar(2000) NOT NULL DEFAULT '',
  `product_desc` varchar(18400) NOT NULL DEFAULT '',
  `product_name` char(180) NOT NULL DEFAULT '',
  `metadesc` varchar(400) NOT NULL DEFAULT '',
  `metakey` varchar(400) NOT NULL DEFAULT '',
  `customtitle` char(255) NOT NULL DEFAULT '',
  `slug` char(192) NOT NULL DEFAULT '',
  PRIMARY KEY (`virtuemart_product_id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uzlnh_virtuemart_products_ru_ru`
--

LOCK TABLES `uzlnh_virtuemart_products_ru_ru` WRITE;
/*!40000 ALTER TABLE `uzlnh_virtuemart_products_ru_ru` DISABLE KEYS */;
INSERT INTO `uzlnh_virtuemart_products_ru_ru` VALUES (17,'Краткое описание товара','<p>Полное описание товара</p>','Блузка','','','','платье'),(18,'Краткое описание товара','<p>Полное описание товара</p>','Брюки','','','','платье-18'),(19,'Краткое описание товара','<p>Полное описание товара</p>','Футболка','','','','платье-19'),(20,'Краткое описание товара','<p>Полное описание товара</p>','Платье','','','','платье-17'),(21,'Краткое описание товара','<p>Полное описание товара</p>','Плащ','','','','платье-18-18'),(22,'Краткое описание товара','<p>Полное описание товара</p>','Юбка','','','','платье-19-19'),(23,'Платье Carbrary вечернее','<p>Платье Carbrary вечернее, облегающий верх - парча приглушенного золотого цвета, юбка-колокол(двуслойная), верх - тончайшая органза, по нижнему краю отделанная широкой атласной полосой! Отлично подойдет как для молодежной вечеринки, так и для похода в театр!</p>','Платье','','','','платье-1'),(24,'Платье из коллекции Ulyana Sergeenko','<p>ВНИМАНИЕ! Платье из эксклюзивной коллекции Ulyana Sergeenko, 100% шелк, длинное в пол, рисунок \"гжель\". Облегающий верх, широкая струящаяся юбка, пышные рукава  \"фонарик\"-  длина до локтя. Имидж девушки-крестьянки, нежной и трогательной на все времена!</p>','Платье','','','','платье-2');
/*!40000 ALTER TABLE `uzlnh_virtuemart_products_ru_ru` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uzlnh_virtuemart_rating_reviews`
--

DROP TABLE IF EXISTS `uzlnh_virtuemart_rating_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uzlnh_virtuemart_rating_reviews` (
  `virtuemart_rating_review_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_product_id` int(1) unsigned NOT NULL DEFAULT '0',
  `comment` varchar(18000) DEFAULT NULL,
  `review_ok` tinyint(1) NOT NULL DEFAULT '0',
  `review_rates` int(1) unsigned NOT NULL DEFAULT '0',
  `review_ratingcount` int(1) unsigned NOT NULL DEFAULT '0',
  `review_rating` decimal(10,2) NOT NULL DEFAULT '0.00',
  `review_editable` tinyint(1) NOT NULL DEFAULT '1',
  `lastip` char(50) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_rating_review_id`),
  UNIQUE KEY `i_virtuemart_product_id` (`virtuemart_product_id`,`created_by`),
  KEY `i_published` (`published`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uzlnh_virtuemart_rating_reviews`
--

LOCK TABLES `uzlnh_virtuemart_rating_reviews` WRITE;
/*!40000 ALTER TABLE `uzlnh_virtuemart_rating_reviews` DISABLE KEYS */;
/*!40000 ALTER TABLE `uzlnh_virtuemart_rating_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uzlnh_virtuemart_rating_votes`
--

DROP TABLE IF EXISTS `uzlnh_virtuemart_rating_votes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uzlnh_virtuemart_rating_votes` (
  `virtuemart_rating_vote_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_product_id` int(1) unsigned NOT NULL DEFAULT '0',
  `vote` int(11) NOT NULL DEFAULT '0',
  `lastip` char(50) NOT NULL DEFAULT '0',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_rating_vote_id`),
  UNIQUE KEY `i_virtuemart_product_id` (`virtuemart_product_id`,`created_by`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Stores all ratings for a product';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uzlnh_virtuemart_rating_votes`
--

LOCK TABLES `uzlnh_virtuemart_rating_votes` WRITE;
/*!40000 ALTER TABLE `uzlnh_virtuemart_rating_votes` DISABLE KEYS */;
/*!40000 ALTER TABLE `uzlnh_virtuemart_rating_votes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uzlnh_virtuemart_ratings`
--

DROP TABLE IF EXISTS `uzlnh_virtuemart_ratings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uzlnh_virtuemart_ratings` (
  `virtuemart_rating_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_product_id` int(1) unsigned NOT NULL DEFAULT '0',
  `rates` int(11) NOT NULL DEFAULT '0',
  `ratingcount` int(1) unsigned NOT NULL DEFAULT '0',
  `rating` decimal(10,1) NOT NULL DEFAULT '0.0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_rating_id`),
  UNIQUE KEY `i_virtuemart_product_id` (`virtuemart_product_id`,`virtuemart_rating_id`),
  KEY `i_published` (`published`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Stores all ratings for a product';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uzlnh_virtuemart_ratings`
--

LOCK TABLES `uzlnh_virtuemart_ratings` WRITE;
/*!40000 ALTER TABLE `uzlnh_virtuemart_ratings` DISABLE KEYS */;
/*!40000 ALTER TABLE `uzlnh_virtuemart_ratings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uzlnh_virtuemart_shipment_plg_weight_countries`
--

DROP TABLE IF EXISTS `uzlnh_virtuemart_shipment_plg_weight_countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uzlnh_virtuemart_shipment_plg_weight_countries` (
  `id` int(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_order_id` int(11) unsigned DEFAULT NULL,
  `order_number` char(32) DEFAULT NULL,
  `virtuemart_shipmentmethod_id` mediumint(1) unsigned DEFAULT NULL,
  `shipment_name` varchar(5000) DEFAULT NULL,
  `order_weight` decimal(10,4) DEFAULT NULL,
  `shipment_weight_unit` char(3) DEFAULT 'KG',
  `shipment_cost` decimal(10,2) DEFAULT NULL,
  `shipment_package_fee` decimal(10,2) DEFAULT NULL,
  `tax_id` smallint(1) DEFAULT NULL,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Shipment Weight Countries Table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uzlnh_virtuemart_shipment_plg_weight_countries`
--

LOCK TABLES `uzlnh_virtuemart_shipment_plg_weight_countries` WRITE;
/*!40000 ALTER TABLE `uzlnh_virtuemart_shipment_plg_weight_countries` DISABLE KEYS */;
/*!40000 ALTER TABLE `uzlnh_virtuemart_shipment_plg_weight_countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uzlnh_virtuemart_shipmentmethod_shoppergroups`
--

DROP TABLE IF EXISTS `uzlnh_virtuemart_shipmentmethod_shoppergroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uzlnh_virtuemart_shipmentmethod_shoppergroups` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_shipmentmethod_id` mediumint(1) unsigned DEFAULT NULL,
  `virtuemart_shoppergroup_id` smallint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `i_virtuemart_shipmentmethod_id` (`virtuemart_shipmentmethod_id`,`virtuemart_shoppergroup_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='xref table for shipment to shoppergroup';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uzlnh_virtuemart_shipmentmethod_shoppergroups`
--

LOCK TABLES `uzlnh_virtuemart_shipmentmethod_shoppergroups` WRITE;
/*!40000 ALTER TABLE `uzlnh_virtuemart_shipmentmethod_shoppergroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `uzlnh_virtuemart_shipmentmethod_shoppergroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uzlnh_virtuemart_shipmentmethods`
--

DROP TABLE IF EXISTS `uzlnh_virtuemart_shipmentmethods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uzlnh_virtuemart_shipmentmethods` (
  `virtuemart_shipmentmethod_id` mediumint(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_vendor_id` smallint(11) NOT NULL DEFAULT '1',
  `shipment_jplugin_id` int(11) NOT NULL DEFAULT '0',
  `slug` char(255) NOT NULL DEFAULT '',
  `shipment_element` char(50) NOT NULL DEFAULT '',
  `shipment_params` varchar(19000) DEFAULT NULL,
  `ordering` int(2) NOT NULL DEFAULT '0',
  `shared` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_shipmentmethod_id`),
  KEY `idx_shipment_jplugin_id` (`shipment_jplugin_id`),
  KEY `idx_shipment_method_ordering` (`ordering`),
  KEY `idx_shipment_element` (`shipment_element`,`virtuemart_vendor_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Shipment created from the shipment plugins';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uzlnh_virtuemart_shipmentmethods`
--

LOCK TABLES `uzlnh_virtuemart_shipmentmethods` WRITE;
/*!40000 ALTER TABLE `uzlnh_virtuemart_shipmentmethods` DISABLE KEYS */;
INSERT INTO `uzlnh_virtuemart_shipmentmethods` VALUES (1,1,10019,'','weight_countries','shipment_logos=\"\"|countries=\"\"|zip_start=\"\"|zip_stop=\"\"|weight_start=\"\"|weight_stop=\"\"|weight_unit=\"KG\"|nbproducts_start=0|nbproducts_stop=0|orderamount_start=\"\"|orderamount_stop=\"\"|cost=\"\"|package_fee=\"\"|tax_id=\"-1\"|free_shipment=\"1000\"|',0,0,1,'2014-07-15 14:53:08',706,'2014-07-15 14:53:31',706,'0000-00-00 00:00:00',0);
/*!40000 ALTER TABLE `uzlnh_virtuemart_shipmentmethods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uzlnh_virtuemart_shipmentmethods_ru_ru`
--

DROP TABLE IF EXISTS `uzlnh_virtuemart_shipmentmethods_ru_ru`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uzlnh_virtuemart_shipmentmethods_ru_ru` (
  `virtuemart_shipmentmethod_id` int(1) unsigned NOT NULL,
  `shipment_name` char(180) NOT NULL DEFAULT '',
  `shipment_desc` varchar(19000) NOT NULL DEFAULT '',
  `slug` char(192) NOT NULL DEFAULT '',
  PRIMARY KEY (`virtuemart_shipmentmethod_id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uzlnh_virtuemart_shipmentmethods_ru_ru`
--

LOCK TABLES `uzlnh_virtuemart_shipmentmethods_ru_ru` WRITE;
/*!40000 ALTER TABLE `uzlnh_virtuemart_shipmentmethods_ru_ru` DISABLE KEYS */;
INSERT INTO `uzlnh_virtuemart_shipmentmethods_ru_ru` VALUES (1,'Доставка курьером','','доставка-курьером');
/*!40000 ALTER TABLE `uzlnh_virtuemart_shipmentmethods_ru_ru` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uzlnh_virtuemart_shoppergroups`
--

DROP TABLE IF EXISTS `uzlnh_virtuemart_shoppergroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uzlnh_virtuemart_shoppergroups` (
  `virtuemart_shoppergroup_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_vendor_id` smallint(11) NOT NULL DEFAULT '1',
  `shopper_group_name` char(64) DEFAULT NULL,
  `shopper_group_desc` char(128) DEFAULT NULL,
  `custom_price_display` tinyint(1) NOT NULL DEFAULT '0',
  `price_display` blob,
  `default` tinyint(1) NOT NULL DEFAULT '0',
  `ordering` int(2) NOT NULL DEFAULT '0',
  `shared` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_shoppergroup_id`),
  KEY `idx_shopper_group_virtuemart_vendor_id` (`virtuemart_vendor_id`),
  KEY `idx_shopper_group_name` (`shopper_group_name`),
  KEY `i_ordering` (`ordering`),
  KEY `i_shared` (`shared`),
  KEY `i_published` (`published`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='Shopper Groups that users can be assigned to';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uzlnh_virtuemart_shoppergroups`
--

LOCK TABLES `uzlnh_virtuemart_shoppergroups` WRITE;
/*!40000 ALTER TABLE `uzlnh_virtuemart_shoppergroups` DISABLE KEYS */;
INSERT INTO `uzlnh_virtuemart_shoppergroups` VALUES (2,1,'-default-','This is the default shopper group.',0,NULL,1,0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(1,1,'-anonymous-','Shopper group for anonymous shoppers',0,NULL,2,0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(3,1,'Gold Level','Gold Level Shoppers.',0,NULL,0,0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(4,1,'Wholesale','Shoppers that can buy at wholesale.',0,NULL,0,0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0);
/*!40000 ALTER TABLE `uzlnh_virtuemart_shoppergroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uzlnh_virtuemart_states`
--

DROP TABLE IF EXISTS `uzlnh_virtuemart_states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uzlnh_virtuemart_states` (
  `virtuemart_state_id` smallint(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_vendor_id` smallint(1) unsigned NOT NULL DEFAULT '1',
  `virtuemart_country_id` smallint(1) unsigned NOT NULL DEFAULT '1',
  `virtuemart_worldzone_id` smallint(1) unsigned NOT NULL DEFAULT '0',
  `state_name` char(64) DEFAULT NULL,
  `state_3_code` char(3) DEFAULT NULL,
  `state_2_code` char(2) DEFAULT NULL,
  `ordering` int(2) NOT NULL DEFAULT '0',
  `shared` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_state_id`),
  UNIQUE KEY `idx_state_3_code` (`virtuemart_vendor_id`,`virtuemart_country_id`,`state_3_code`),
  UNIQUE KEY `idx_state_2_code` (`virtuemart_vendor_id`,`virtuemart_country_id`,`state_2_code`),
  KEY `i_virtuemart_vendor_id` (`virtuemart_vendor_id`),
  KEY `i_virtuemart_country_id` (`virtuemart_country_id`),
  KEY `i_ordering` (`ordering`),
  KEY `i_shared` (`shared`),
  KEY `i_published` (`published`)
) ENGINE=MyISAM AUTO_INCREMENT=730 DEFAULT CHARSET=utf8 COMMENT='States that are assigned to a country';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uzlnh_virtuemart_states`
--

LOCK TABLES `uzlnh_virtuemart_states` WRITE;
/*!40000 ALTER TABLE `uzlnh_virtuemart_states` DISABLE KEYS */;
INSERT INTO `uzlnh_virtuemart_states` VALUES (1,1,223,0,'Alabama','ALA','AL',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(2,1,223,0,'Alaska','ALK','AK',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(3,1,223,0,'Arizona','ARZ','AZ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(4,1,223,0,'Arkansas','ARK','AR',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(5,1,223,0,'California','CAL','CA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(6,1,223,0,'Colorado','COL','CO',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(7,1,223,0,'Connecticut','CCT','CT',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(8,1,223,0,'Delaware','DEL','DE',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(9,1,223,0,'District Of Columbia','DOC','DC',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(10,1,223,0,'Florida','FLO','FL',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(11,1,223,0,'Georgia','GEA','GA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(12,1,223,0,'Hawaii','HWI','HI',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(13,1,223,0,'Idaho','IDA','ID',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(14,1,223,0,'Illinois','ILL','IL',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(15,1,223,0,'Indiana','IND','IN',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(16,1,223,0,'Iowa','IOA','IA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(17,1,223,0,'Kansas','KAS','KS',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(18,1,223,0,'Kentucky','KTY','KY',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(19,1,223,0,'Louisiana','LOA','LA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(20,1,223,0,'Maine','MAI','ME',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(21,1,223,0,'Maryland','MLD','MD',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(22,1,223,0,'Massachusetts','MSA','MA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(23,1,223,0,'Michigan','MIC','MI',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(24,1,223,0,'Minnesota','MIN','MN',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(25,1,223,0,'Mississippi','MIS','MS',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(26,1,223,0,'Missouri','MIO','MO',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(27,1,223,0,'Montana','MOT','MT',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(28,1,223,0,'Nebraska','NEB','NE',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(29,1,223,0,'Nevada','NEV','NV',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(30,1,223,0,'New Hampshire','NEH','NH',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(31,1,223,0,'New Jersey','NEJ','NJ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(32,1,223,0,'New Mexico','NEM','NM',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(33,1,223,0,'New York','NEY','NY',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(34,1,223,0,'North Carolina','NOC','NC',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(35,1,223,0,'North Dakota','NOD','ND',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(36,1,223,0,'Ohio','OHI','OH',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(37,1,223,0,'Oklahoma','OKL','OK',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(38,1,223,0,'Oregon','ORN','OR',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(39,1,223,0,'Pennsylvania','PEA','PA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(40,1,223,0,'Rhode Island','RHI','RI',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(41,1,223,0,'South Carolina','SOC','SC',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(42,1,223,0,'South Dakota','SOD','SD',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(43,1,223,0,'Tennessee','TEN','TN',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(44,1,223,0,'Texas','TXS','TX',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(45,1,223,0,'Utah','UTA','UT',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(46,1,223,0,'Vermont','VMT','VT',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(47,1,223,0,'Virginia','VIA','VA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(48,1,223,0,'Washington','WAS','WA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(49,1,223,0,'West Virginia','WEV','WV',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(50,1,223,0,'Wisconsin','WIS','WI',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(51,1,223,0,'Wyoming','WYO','WY',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(52,1,38,0,'Alberta','ALB','AB',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(53,1,38,0,'British Columbia','BRC','BC',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(54,1,38,0,'Manitoba','MAB','MB',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(55,1,38,0,'New Brunswick','NEB','NB',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(56,1,38,0,'Newfoundland and Labrador','NFL','NL',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(57,1,38,0,'Northwest Territories','NWT','NT',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(58,1,38,0,'Nova Scotia','NOS','NS',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(59,1,38,0,'Nunavut','NUT','NU',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(60,1,38,0,'Ontario','ONT','ON',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(61,1,38,0,'Prince Edward Island','PEI','PE',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(62,1,38,0,'Quebec','QEC','QC',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(63,1,38,0,'Saskatchewan','SAK','SK',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(64,1,38,0,'Yukon','YUT','YT',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(65,1,222,0,'England','ENG','EN',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(66,1,222,0,'Northern Ireland','NOI','NI',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(67,1,222,0,'Scotland','SCO','SD',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(68,1,222,0,'Wales','WLS','WS',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(69,1,13,0,'Australian Capital Territory','ACT','AC',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(70,1,13,0,'New South Wales','NSW','NS',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(71,1,13,0,'Northern Territory','NOT','NT',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(72,1,13,0,'Queensland','QLD','QL',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(73,1,13,0,'South Australia','SOA','SA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(74,1,13,0,'Tasmania','TAS','TS',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(75,1,13,0,'Victoria','VIC','VI',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(76,1,13,0,'Western Australia','WEA','WA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(77,1,138,0,'Aguascalientes','AGS','AG',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(78,1,138,0,'Baja California Norte','BCN','BN',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(79,1,138,0,'Baja California Sur','BCS','BS',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(80,1,138,0,'Campeche','CAM','CA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(81,1,138,0,'Chiapas','CHI','CS',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(82,1,138,0,'Chihuahua','CHA','CH',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(83,1,138,0,'Coahuila','COA','CO',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(84,1,138,0,'Colima','COL','CM',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(85,1,138,0,'Distrito Federal','DFM','DF',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(86,1,138,0,'Durango','DGO','DO',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(87,1,138,0,'Guanajuato','GTO','GO',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(88,1,138,0,'Guerrero','GRO','GU',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(89,1,138,0,'Hidalgo','HGO','HI',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(90,1,138,0,'Jalisco','JAL','JA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(91,1,138,0,'M','EDM','EM',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(92,1,138,0,'Michoac','MCN','MI',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(93,1,138,0,'Morelos','MOR','MO',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(94,1,138,0,'Nayarit','NAY','NY',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(95,1,138,0,'Nuevo Le','NUL','NL',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(96,1,138,0,'Oaxaca','OAX','OA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(97,1,138,0,'Puebla','PUE','PU',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(98,1,138,0,'Quer','QRO','QU',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(99,1,138,0,'Quintana Roo','QUR','QR',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(100,1,138,0,'San Luis Potos','SLP','SP',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(101,1,138,0,'Sinaloa','SIN','SI',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(102,1,138,0,'Sonora','SON','SO',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(103,1,138,0,'Tabasco','TAB','TA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(104,1,138,0,'Tamaulipas','TAM','TM',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(105,1,138,0,'Tlaxcala','TLX','TX',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(106,1,138,0,'Veracruz','VER','VZ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(107,1,138,0,'Yucat','YUC','YU',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(108,1,138,0,'Zacatecas','ZAC','ZA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(109,1,30,0,'Acre','ACR','AC',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(110,1,30,0,'Alagoas','ALG','AL',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(111,1,30,0,'Amapá','AMP','AP',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(112,1,30,0,'Amazonas','AMZ','AM',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(113,1,30,0,'Bahía','BAH','BA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(114,1,30,0,'Ceará','CEA','CE',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(115,1,30,0,'Distrito Federal','DFB','DF',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(116,1,30,0,'Espírito Santo','ESS','ES',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(117,1,30,0,'Goiás','GOI','GO',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(118,1,30,0,'Maranhão','MAR','MA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(119,1,30,0,'Mato Grosso','MAT','MT',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(120,1,30,0,'Mato Grosso do Sul','MGS','MS',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(121,1,30,0,'Minas Gerais','MIG','MG',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(122,1,30,0,'Paraná','PAR','PR',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(123,1,30,0,'Paraíba','PRB','PB',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(124,1,30,0,'Pará','PAB','PA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(125,1,30,0,'Pernambuco','PER','PE',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(126,1,30,0,'Piauí','PIA','PI',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(127,1,30,0,'Rio Grande do Norte','RGN','RN',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(128,1,30,0,'Rio Grande do Sul','RGS','RS',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(129,1,30,0,'Rio de Janeiro','RDJ','RJ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(130,1,30,0,'Rondônia','RON','RO',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(131,1,30,0,'Roraima','ROR','RR',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(132,1,30,0,'Santa Catarina','SAC','SC',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(133,1,30,0,'Sergipe','SER','SE',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(134,1,30,0,'São Paulo','SAP','SP',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(135,1,30,0,'Tocantins','TOC','TO',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(136,1,44,0,'Anhui','ANH','34',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(137,1,44,0,'Beijing','BEI','11',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(138,1,44,0,'Chongqing','CHO','50',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(139,1,44,0,'Fujian','FUJ','35',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(140,1,44,0,'Gansu','GAN','62',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(141,1,44,0,'Guangdong','GUA','44',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(142,1,44,0,'Guangxi Zhuang','GUZ','45',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(143,1,44,0,'Guizhou','GUI','52',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(144,1,44,0,'Hainan','HAI','46',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(145,1,44,0,'Hebei','HEB','13',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(146,1,44,0,'Heilongjiang','HEI','23',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(147,1,44,0,'Henan','HEN','41',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(148,1,44,0,'Hubei','HUB','42',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(149,1,44,0,'Hunan','HUN','43',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(150,1,44,0,'Jiangsu','JIA','32',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(151,1,44,0,'Jiangxi','JIX','36',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(152,1,44,0,'Jilin','JIL','22',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(153,1,44,0,'Liaoning','LIA','21',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(154,1,44,0,'Nei Mongol','NML','15',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(155,1,44,0,'Ningxia Hui','NIH','64',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(156,1,44,0,'Qinghai','QIN','63',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(157,1,44,0,'Shandong','SNG','37',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(158,1,44,0,'Shanghai','SHH','31',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(159,1,44,0,'Shaanxi','SHX','61',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(160,1,44,0,'Sichuan','SIC','51',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(161,1,44,0,'Tianjin','TIA','12',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(162,1,44,0,'Xinjiang Uygur','XIU','65',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(163,1,44,0,'Xizang','XIZ','54',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(164,1,44,0,'Yunnan','YUN','53',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(165,1,44,0,'Zhejiang','ZHE','33',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(166,1,104,0,'Israel','ISL','IL',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(167,1,104,0,'Gaza Strip','GZS','GZ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(168,1,104,0,'West Bank','WBK','WB',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(169,1,151,0,'St. Maarten','STM','SM',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(170,1,151,0,'Bonaire','BNR','BN',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(171,1,151,0,'Curacao','CUR','CR',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(172,1,175,0,'Alba','ABA','AB',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(173,1,175,0,'Arad','ARD','AR',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(174,1,175,0,'Arges','ARG','AG',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(175,1,175,0,'Bacau','BAC','BC',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(176,1,175,0,'Bihor','BIH','BH',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(177,1,175,0,'Bistrita-Nasaud','BIS','BN',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(178,1,175,0,'Botosani','BOT','BT',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(179,1,175,0,'Braila','BRL','BR',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(180,1,175,0,'Brasov','BRA','BV',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(181,1,175,0,'Bucuresti','BUC','B',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(182,1,175,0,'Buzau','BUZ','BZ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(183,1,175,0,'Calarasi','CAL','CL',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(184,1,175,0,'Caras Severin','CRS','CS',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(185,1,175,0,'Cluj','CLJ','CJ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(186,1,175,0,'Constanta','CST','CT',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(187,1,175,0,'Covasna','COV','CV',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(188,1,175,0,'Dambovita','DAM','DB',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(189,1,175,0,'Dolj','DLJ','DJ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(190,1,175,0,'Galati','GAL','GL',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(191,1,175,0,'Giurgiu','GIU','GR',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(192,1,175,0,'Gorj','GOR','GJ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(193,1,175,0,'Hargita','HRG','HR',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(194,1,175,0,'Hunedoara','HUN','HD',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(195,1,175,0,'Ialomita','IAL','IL',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(196,1,175,0,'Iasi','IAS','IS',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(197,1,175,0,'Ilfov','ILF','IF',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(198,1,175,0,'Maramures','MAR','MM',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(199,1,175,0,'Mehedinti','MEH','MH',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(200,1,175,0,'Mures','MUR','MS',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(201,1,175,0,'Neamt','NEM','NT',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(202,1,175,0,'Olt','OLT','OT',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(203,1,175,0,'Prahova','PRA','PH',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(204,1,175,0,'Salaj','SAL','SJ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(205,1,175,0,'Satu Mare','SAT','SM',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(206,1,175,0,'Sibiu','SIB','SB',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(207,1,175,0,'Suceava','SUC','SV',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(208,1,175,0,'Teleorman','TEL','TR',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(209,1,175,0,'Timis','TIM','TM',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(210,1,175,0,'Tulcea','TUL','TL',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(211,1,175,0,'Valcea','VAL','VL',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(212,1,175,0,'Vaslui','VAS','VS',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(213,1,175,0,'Vrancea','VRA','VN',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(214,1,105,0,'Agrigento','AGR','AG',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(215,1,105,0,'Alessandria','ALE','AL',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(216,1,105,0,'Ancona','ANC','AN',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(217,1,105,0,'Aosta','AOS','AO',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(218,1,105,0,'Arezzo','ARE','AR',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(219,1,105,0,'Ascoli Piceno','API','AP',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(220,1,105,0,'Asti','AST','AT',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(221,1,105,0,'Avellino','AVE','AV',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(222,1,105,0,'Bari','BAR','BA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(223,1,105,0,'Belluno','BEL','BL',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(224,1,105,0,'Benevento','BEN','BN',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(225,1,105,0,'Bergamo','BEG','BG',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(226,1,105,0,'Biella','BIE','BI',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(227,1,105,0,'Bologna','BOL','BO',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(228,1,105,0,'Bolzano','BOZ','BZ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(229,1,105,0,'Brescia','BRE','BS',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(230,1,105,0,'Brindisi','BRI','BR',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(231,1,105,0,'Cagliari','CAG','CA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(232,1,105,0,'Caltanissetta','CAL','CL',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(233,1,105,0,'Campobasso','CBO','CB',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(234,1,105,0,'Carbonia-Iglesias','CAR','CI',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(235,1,105,0,'Caserta','CAS','CE',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(236,1,105,0,'Catania','CAT','CT',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(237,1,105,0,'Catanzaro','CTZ','CZ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(238,1,105,0,'Chieti','CHI','CH',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(239,1,105,0,'Como','COM','CO',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(240,1,105,0,'Cosenza','COS','CS',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(241,1,105,0,'Cremona','CRE','CR',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(242,1,105,0,'Crotone','CRO','KR',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(243,1,105,0,'Cuneo','CUN','CN',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(244,1,105,0,'Enna','ENN','EN',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(245,1,105,0,'Ferrara','FER','FE',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(246,1,105,0,'Firenze','FIR','FI',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(247,1,105,0,'Foggia','FOG','FG',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(248,1,105,0,'Forli-Cesena','FOC','FC',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(249,1,105,0,'Frosinone','FRO','FR',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(250,1,105,0,'Genova','GEN','GE',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(251,1,105,0,'Gorizia','GOR','GO',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(252,1,105,0,'Grosseto','GRO','GR',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(253,1,105,0,'Imperia','IMP','IM',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(254,1,105,0,'Isernia','ISE','IS',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(255,1,105,0,'L\'Aquila','AQU','AQ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(256,1,105,0,'La Spezia','LAS','SP',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(257,1,105,0,'Latina','LAT','LT',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(258,1,105,0,'Lecce','LEC','LE',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(259,1,105,0,'Lecco','LCC','LC',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(260,1,105,0,'Livorno','LIV','LI',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(261,1,105,0,'Lodi','LOD','LO',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(262,1,105,0,'Lucca','LUC','LU',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(263,1,105,0,'Macerata','MAC','MC',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(264,1,105,0,'Mantova','MAN','MN',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(265,1,105,0,'Massa-Carrara','MAS','MS',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(266,1,105,0,'Matera','MAA','MT',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(267,1,105,0,'Medio Campidano','MED','VS',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(268,1,105,0,'Messina','MES','ME',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(269,1,105,0,'Milano','MIL','MI',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(270,1,105,0,'Modena','MOD','MO',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(271,1,105,0,'Napoli','NAP','NA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(272,1,105,0,'Novara','NOV','NO',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(273,1,105,0,'Nuoro','NUR','NU',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(274,1,105,0,'Ogliastra','OGL','OG',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(275,1,105,0,'Olbia-Tempio','OLB','OT',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(276,1,105,0,'Oristano','ORI','OR',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(277,1,105,0,'Padova','PDA','PD',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(278,1,105,0,'Palermo','PAL','PA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(279,1,105,0,'Parma','PAA','PR',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(280,1,105,0,'Pavia','PAV','PV',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(281,1,105,0,'Perugia','PER','PG',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(282,1,105,0,'Pesaro e Urbino','PES','PU',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(283,1,105,0,'Pescara','PSC','PE',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(284,1,105,0,'Piacenza','PIA','PC',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(285,1,105,0,'Pisa','PIS','PI',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(286,1,105,0,'Pistoia','PIT','PT',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(287,1,105,0,'Pordenone','POR','PN',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(288,1,105,0,'Potenza','PTZ','PZ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(289,1,105,0,'Prato','PRA','PO',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(290,1,105,0,'Ragusa','RAG','RG',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(291,1,105,0,'Ravenna','RAV','RA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(292,1,105,0,'Reggio Calabria','REG','RC',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(293,1,105,0,'Reggio Emilia','REE','RE',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(294,1,105,0,'Rieti','RIE','RI',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(295,1,105,0,'Rimini','RIM','RN',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(296,1,105,0,'Roma','ROM','RM',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(297,1,105,0,'Rovigo','ROV','RO',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(298,1,105,0,'Salerno','SAL','SA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(299,1,105,0,'Sassari','SAS','SS',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(300,1,105,0,'Savona','SAV','SV',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(301,1,105,0,'Siena','SIE','SI',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(302,1,105,0,'Siracusa','SIR','SR',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(303,1,105,0,'Sondrio','SOO','SO',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(304,1,105,0,'Taranto','TAR','TA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(305,1,105,0,'Teramo','TER','TE',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(306,1,105,0,'Terni','TRN','TR',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(307,1,105,0,'Torino','TOR','TO',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(308,1,105,0,'Trapani','TRA','TP',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(309,1,105,0,'Trento','TRE','TN',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(310,1,105,0,'Treviso','TRV','TV',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(311,1,105,0,'Trieste','TRI','TS',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(312,1,105,0,'Udine','UDI','UD',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(313,1,105,0,'Varese','VAR','VA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(314,1,105,0,'Venezia','VEN','VE',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(315,1,105,0,'Verbano Cusio Ossola','VCO','VB',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(316,1,105,0,'Vercelli','VER','VC',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(317,1,105,0,'Verona','VRN','VR',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(318,1,105,0,'Vibo Valenzia','VIV','VV',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(319,1,105,0,'Vicenza','VII','VI',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(320,1,105,0,'Viterbo','VIT','VT',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(321,1,195,0,'A Coru','ACO','15',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(322,1,195,0,'Alava','ALA','01',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(323,1,195,0,'Albacete','ALB','02',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(324,1,195,0,'Alicante','ALI','03',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(325,1,195,0,'Almeria','ALM','04',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(326,1,195,0,'Asturias','AST','33',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(327,1,195,0,'Avila','AVI','05',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(328,1,195,0,'Badajoz','BAD','06',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(329,1,195,0,'Baleares','BAL','07',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(330,1,195,0,'Barcelona','BAR','08',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(331,1,195,0,'Burgos','BUR','09',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(332,1,195,0,'Caceres','CAC','10',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(333,1,195,0,'Cadiz','CAD','11',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(334,1,195,0,'Cantabria','CAN','39',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(335,1,195,0,'Castellon','CAS','12',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(336,1,195,0,'Ceuta','CEU','51',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(337,1,195,0,'Ciudad Real','CIU','13',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(338,1,195,0,'Cordoba','COR','14',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(339,1,195,0,'Cuenca','CUE','16',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(340,1,195,0,'Girona','GIR','17',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(341,1,195,0,'Granada','GRA','18',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(342,1,195,0,'Guadalajara','GUA','19',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(343,1,195,0,'Guipuzcoa','GUI','20',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(344,1,195,0,'Huelva','HUL','21',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(345,1,195,0,'Huesca','HUS','22',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(346,1,195,0,'Jaen','JAE','23',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(347,1,195,0,'La Rioja','LRI','26',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(348,1,195,0,'Las Palmas','LPA','35',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(349,1,195,0,'Leon','LEO','24',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(350,1,195,0,'Lleida','LLE','25',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(351,1,195,0,'Lugo','LUG','27',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(352,1,195,0,'Madrid','MAD','28',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(353,1,195,0,'Malaga','MAL','29',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(354,1,195,0,'Melilla','MEL','52',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(355,1,195,0,'Murcia','MUR','30',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(356,1,195,0,'Navarra','NAV','31',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(357,1,195,0,'Ourense','OUR','32',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(358,1,195,0,'Palencia','PAL','34',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(359,1,195,0,'Pontevedra','PON','36',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(360,1,195,0,'Salamanca','SAL','37',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(361,1,195,0,'Santa Cruz de Tenerife','SCT','38',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(362,1,195,0,'Segovia','SEG','40',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(363,1,195,0,'Sevilla','SEV','41',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(364,1,195,0,'Soria','SOR','42',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(365,1,195,0,'Tarragona','TAR','43',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(366,1,195,0,'Teruel','TER','44',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(367,1,195,0,'Toledo','TOL','45',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(368,1,195,0,'Valencia','VAL','46',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(369,1,195,0,'Valladolid','VLL','47',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(370,1,195,0,'Vizcaya','VIZ','48',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(371,1,195,0,'Zamora','ZAM','49',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(372,1,195,0,'Zaragoza','ZAR','50',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(373,1,10,0,'Buenos Aires','BAS','BA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(374,1,10,0,'Ciudad Autonoma De Buenos Aires','CBA','CB',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(375,1,10,0,'Catamarca','CAT','CA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(376,1,10,0,'Chaco','CHO','CH',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(377,1,10,0,'Chubut','CTT','CT',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(378,1,10,0,'Cordoba','COD','CO',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(379,1,10,0,'Corrientes','CRI','CR',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(380,1,10,0,'Entre Rios','ERS','ER',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(381,1,10,0,'Formosa','FRM','FR',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(382,1,10,0,'Jujuy','JUJ','JU',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(383,1,10,0,'La Pampa','LPM','LP',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(384,1,10,0,'La Rioja','LRI','LR',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(385,1,10,0,'Mendoza','MED','ME',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(386,1,10,0,'Misiones','MIS','MI',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(387,1,10,0,'Neuquen','NQU','NQ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(388,1,10,0,'Rio Negro','RNG','RN',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(389,1,10,0,'Salta','SAL','SA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(390,1,10,0,'San Juan','SJN','SJ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(391,1,10,0,'San Luis','SLU','SL',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(392,1,10,0,'Santa Cruz','SCZ','SC',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(393,1,10,0,'Santa Fe','SFE','SF',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(394,1,10,0,'Santiago Del Estero','SEN','SE',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(395,1,10,0,'Tierra Del Fuego','TFE','TF',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(396,1,10,0,'Tucuman','TUC','TU',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(397,1,11,0,'Aragatsotn','ARG','AG',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(398,1,11,0,'Ararat','ARR','AR',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(399,1,11,0,'Armavir','ARM','AV',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(400,1,11,0,'Gegharkunik','GEG','GR',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(401,1,11,0,'Kotayk','KOT','KT',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(402,1,11,0,'Lori','LOR','LO',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(403,1,11,0,'Shirak','SHI','SH',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(404,1,11,0,'Syunik','SYU','SU',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(405,1,11,0,'Tavush','TAV','TV',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(406,1,11,0,'Vayots-Dzor','VAD','VD',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(407,1,11,0,'Yerevan','YER','ER',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(408,1,99,0,'Andaman & Nicobar Islands','ANI','AI',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(409,1,99,0,'Andhra Pradesh','AND','AN',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(410,1,99,0,'Arunachal Pradesh','ARU','AR',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(411,1,99,0,'Assam','ASS','AS',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(412,1,99,0,'Bihar','BIH','BI',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(413,1,99,0,'Chandigarh','CHA','CA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(414,1,99,0,'Chhatisgarh','CHH','CH',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(415,1,99,0,'Dadra & Nagar Haveli','DAD','DD',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(416,1,99,0,'Daman & Diu','DAM','DA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(417,1,99,0,'Delhi','DEL','DE',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(418,1,99,0,'Goa','GOA','GO',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(419,1,99,0,'Gujarat','GUJ','GU',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(420,1,99,0,'Haryana','HAR','HA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(421,1,99,0,'Himachal Pradesh','HIM','HI',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(422,1,99,0,'Jammu & Kashmir','JAM','JA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(423,1,99,0,'Jharkhand','JHA','JH',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(424,1,99,0,'Karnataka','KAR','KA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(425,1,99,0,'Kerala','KER','KE',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(426,1,99,0,'Lakshadweep','LAK','LA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(427,1,99,0,'Madhya Pradesh','MAD','MD',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(428,1,99,0,'Maharashtra','MAH','MH',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(429,1,99,0,'Manipur','MAN','MN',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(430,1,99,0,'Meghalaya','MEG','ME',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(431,1,99,0,'Mizoram','MIZ','MI',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(432,1,99,0,'Nagaland','NAG','NA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(433,1,99,0,'Orissa','ORI','OR',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(434,1,99,0,'Pondicherry','PON','PO',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(435,1,99,0,'Punjab','PUN','PU',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(436,1,99,0,'Rajasthan','RAJ','RA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(437,1,99,0,'Sikkim','SIK','SI',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(438,1,99,0,'Tamil Nadu','TAM','TA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(439,1,99,0,'Tripura','TRI','TR',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(440,1,99,0,'Uttaranchal','UAR','UA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(441,1,99,0,'Uttar Pradesh','UTT','UT',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(442,1,99,0,'West Bengal','WES','WE',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(443,1,101,0,'Ahmadi va Kohkiluyeh','BOK','BO',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(444,1,101,0,'Ardabil','ARD','AR',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(445,1,101,0,'Azarbayjan-e Gharbi','AZG','AG',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(446,1,101,0,'Azarbayjan-e Sharqi','AZS','AS',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(447,1,101,0,'Bushehr','BUS','BU',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(448,1,101,0,'Chaharmahal va Bakhtiari','CMB','CM',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(449,1,101,0,'Esfahan','ESF','ES',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(450,1,101,0,'Fars','FAR','FA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(451,1,101,0,'Gilan','GIL','GI',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(452,1,101,0,'Gorgan','GOR','GO',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(453,1,101,0,'Hamadan','HAM','HA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(454,1,101,0,'Hormozgan','HOR','HO',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(455,1,101,0,'Ilam','ILA','IL',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(456,1,101,0,'Kerman','KER','KE',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(457,1,101,0,'Kermanshah','BAK','BA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(458,1,101,0,'Khorasan-e Junoubi','KHJ','KJ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(459,1,101,0,'Khorasan-e Razavi','KHR','KR',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(460,1,101,0,'Khorasan-e Shomali','KHS','KS',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(461,1,101,0,'Khuzestan','KHU','KH',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(462,1,101,0,'Kordestan','KOR','KO',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(463,1,101,0,'Lorestan','LOR','LO',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(464,1,101,0,'Markazi','MAR','MR',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(465,1,101,0,'Mazandaran','MAZ','MZ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(466,1,101,0,'Qazvin','QAS','QA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(467,1,101,0,'Qom','QOM','QO',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(468,1,101,0,'Semnan','SEM','SE',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(469,1,101,0,'Sistan va Baluchestan','SBA','SB',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(470,1,101,0,'Tehran','TEH','TE',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(471,1,101,0,'Yazd','YAZ','YA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(472,1,101,0,'Zanjan','ZAN','ZA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(535,1,84,0,'ΛΕΥΚΑΔΑΣ','ΛΕΥ','ΛΕ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(532,1,84,0,'ΛΑΡΙΣΑΣ','ΛΑΡ','ΛΡ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(504,1,84,0,'ΑΡΚΑΔΙΑΣ','ΑΡΚ','ΑΚ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(503,1,84,0,'ΑΡΓΟΛΙΔΑΣ','ΑΡΓ','ΑΡ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(533,1,84,0,'ΛΑΣΙΘΙΟΥ','ΛΑΣ','ΛΑ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(534,1,84,0,'ΛΕΣΒΟΥ','ΛΕΣ','ΛΣ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(530,1,84,0,'ΚΥΚΛΑΔΩΝ','ΚΥΚ','ΚΥ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(553,1,84,0,'ΑΙΤΩΛΟΑΚΑΡΝΑΝΙΑΣ','ΑΙΤ','ΑΙ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(529,1,84,0,'ΚΟΡΙΝΘΙΑΣ','ΚΟΡ','ΚΟ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(531,1,84,0,'ΛΑΚΩΝΙΑΣ','ΛΑΚ','ΛK',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(517,1,84,0,'ΗΜΑΘΙΑΣ','ΗΜΑ','ΗΜ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(518,1,84,0,'ΗΡΑΚΛΕΙΟΥ','ΗΡΑ','ΗΡ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(519,1,84,0,'ΘΕΣΠΡΩΤΙΑΣ','ΘΕΠ','ΘΠ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(520,1,84,0,'ΘΕΣΣΑΛΟΝΙΚΗΣ','ΘΕΣ','ΘΕ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(521,1,84,0,'ΙΩΑΝΝΙΝΩΝ','ΙΩΑ','ΙΩ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(522,1,84,0,'ΚΑΒΑΛΑΣ','ΚΑΒ','ΚΒ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(523,1,84,0,'ΚΑΡΔΙΤΣΑΣ','ΚΑΡ','ΚΡ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(524,1,84,0,'ΚΑΣΤΟΡΙΑΣ','ΚΑΣ','ΚΣ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(525,1,84,0,'ΚΕΡΚΥΡΑΣ','ΚΕΡ','ΚΕ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(526,1,84,0,'ΚΕΦΑΛΛΗΝΙΑΣ','ΚΕΦ','ΚΦ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(527,1,84,0,'ΚΙΛΚΙΣ','ΚΙΛ','ΚΙ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(528,1,84,0,'ΚΟΖΑΝΗΣ','ΚΟΖ','ΚZ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(507,1,84,0,'ΑΧΑΪΑΣ','ΑΧΑ','ΑΧ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(508,1,84,0,'ΒΟΙΩΤΙΑΣ','ΒΟΙ','ΒΟ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(509,1,84,0,'ΓΡΕΒΕΝΩΝ','ΓΡΕ','ΓΡ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(510,1,84,0,'ΔΡΑΜΑΣ','ΔΡΑ','ΔΡ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(511,1,84,0,'ΔΩΔΕΚΑΝΗΣΟΥ','ΔΩΔ','ΔΩ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(512,1,84,0,'ΕΒΡΟΥ','ΕΒΡ','ΕΒ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(513,1,84,0,'ΕΥΒΟΙΑΣ','ΕΥΒ','ΕΥ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(514,1,84,0,'ΕΥΡΥΤΑΝΙΑΣ','ΕΥΡ','ΕΡ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(515,1,84,0,'ΖΑΚΥΝΘΟΥ','ΖΑΚ','ΖΑ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(516,1,84,0,'ΗΛΕΙΑΣ','ΗΛΕ','ΗΛ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(505,1,84,0,'ΑΡΤΑΣ','ΑΡΤ','ΑΑ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(506,1,84,0,'ΑΤΤΙΚΗΣ','ΑΤΤ','ΑΤ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(536,1,84,0,'ΜΑΓΝΗΣΙΑΣ','ΜΑΓ','ΜΑ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(537,1,84,0,'ΜΕΣΣΗΝΙΑΣ','ΜΕΣ','ΜΕ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(538,1,84,0,'ΞΑΝΘΗΣ','ΞΑΝ','ΞΑ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(539,1,84,0,'ΠΕΛΛΗΣ','ΠΕΛ','ΠΕ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(540,1,84,0,'ΠΙΕΡΙΑΣ','ΠΙΕ','ΠΙ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(541,1,84,0,'ΠΡΕΒΕΖΑΣ','ΠΡΕ','ΠΡ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(542,1,84,0,'ΡΕΘΥΜΝΗΣ','ΡΕΘ','ΡΕ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(543,1,84,0,'ΡΟΔΟΠΗΣ','ΡΟΔ','ΡΟ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(544,1,84,0,'ΣΑΜΟΥ','ΣΑΜ','ΣΑ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(545,1,84,0,'ΣΕΡΡΩΝ','ΣΕΡ','ΣΕ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(546,1,84,0,'ΤΡΙΚΑΛΩΝ','ΤΡΙ','ΤΡ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(547,1,84,0,'ΦΘΙΩΤΙΔΑΣ','ΦΘΙ','ΦΘ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(548,1,84,0,'ΦΛΩΡΙΝΑΣ','ΦΛΩ','ΦΛ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(549,1,84,0,'ΦΩΚΙΔΑΣ','ΦΩΚ','ΦΩ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(550,1,84,0,'ΧΑΛΚΙΔΙΚΗΣ','ΧΑΛ','ΧΑ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(551,1,84,0,'ΧΑΝΙΩΝ','ΧΑΝ','ΧΝ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(552,1,84,0,'ΧΙΟΥ','ΧΙΟ','ΧΙ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(569,1,81,0,'Schleswig-Holstein','SHO','SH',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(554,1,81,0,'Freie und Hansestadt Hamburg','HAM','HH',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(555,1,81,0,'Niedersachsen','NIS','NI',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(556,1,81,0,'Freie Hansestadt Bremen','HBR','HB',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(557,1,81,0,'Nordrhein-Westfalen','NRW','NW',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(558,1,81,0,'Hessen','HES','HE',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(559,1,81,0,'Rheinland-Pfalz','RLP','RP',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(560,1,81,0,'Baden-Württemberg','BWÜ','BW',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(561,1,81,0,'Freistaat Bayern','BAV','BY',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(562,1,81,0,'Saarland','SLA','SL',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(563,1,81,0,'Berlin','BER','BE',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(564,1,81,0,'Brandenburg','BRB','BB',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(565,1,81,0,'Mecklenburg-Vorpommern','MVO','MV',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(566,1,81,0,'Freistaat Sachsen','SAC','SN',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(567,1,81,0,'Sachsen-Anhalt','SAA','ST',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(568,1,81,0,'Freistaat Thüringen','THÜ','TH',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(570,1,176,0,'Адыгея Республика','AD','01',1,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(571,1,176,0,'Алтай Республика','AL','04',2,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(572,1,176,0,'Алтайский край','ALT','22',3,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(573,1,176,0,'Амурская область','AMU','28',4,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(574,1,176,0,'Архангельская область','ARK','29',5,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(575,1,176,0,'Астраханская область','AST','30',6,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(576,1,176,0,'Башкортостан Республика','BA','02',7,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(577,1,176,0,'Белгородская область','BEL','31',8,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(578,1,176,0,'Брянская область','BRY','32',9,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(579,1,176,0,'Бурятия Республика','BU','03',10,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(580,1,176,0,'Владимирская область','VLA','33',11,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(581,1,176,0,'Волгоградская область','VGG','34',12,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(582,1,176,0,'Вологодская область','VLG','35',13,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(583,1,176,0,'Воронежская область','VOR','36',14,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(584,1,176,0,'Дагестан Республика','DA','05',15,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(585,1,176,0,'Еврейская автономная область','YEV','79',16,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(586,1,176,0,'Забайкальский край','ZAB','75',17,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(587,1,176,0,'Ивановская область','IVA','37',18,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(588,1,176,0,'Ингушетия Республика','IN','06',19,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(589,1,176,0,'Иркутская область','IRK','38',20,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(590,1,176,0,'Кабардино-Балкарская Республика','KB','07',21,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(591,1,176,0,'Калининградская область','KGD','39',22,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(592,1,176,0,'Калмыкия Республика','KL','08',23,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(593,1,176,0,'Калужская область','KLU','40',24,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(594,1,176,0,'Камчатский край','KAM','41',25,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(595,1,176,0,'Карачаево-Черкесская Республика','KC','09',26,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(596,1,176,0,'Карелия Республика','KR','10',27,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(597,1,176,0,'Кемеровская область','KEM','42',28,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(598,1,176,0,'Кировская область','KIR','43',29,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(599,1,176,0,'Коми Республика','KO','11',30,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(600,1,176,0,'Костромская область','KOS','44',31,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(601,1,176,0,'Краснодарский край','KDA','23',32,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(602,1,176,0,'Красноярский край','KIA','24',33,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(603,1,176,0,'Курганская область','KGN','45',34,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(604,1,176,0,'Курская область','KRS','46',35,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(605,1,176,0,'Ленинградская область','LEN','47',36,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(606,1,176,0,'Липецкая область','LIP','48',37,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(607,1,176,0,'Магаданская область','MAG','49',38,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(608,1,176,0,'Марий Эл Республика','ME','12',39,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(609,1,176,0,'Мордовия Республика','MO','13',40,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(610,1,176,0,'Москва','MOW','77',41,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(611,1,176,0,'Московская область','MOS','50',42,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(612,1,176,0,'Мурманская область','MUR','51',43,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(613,1,176,0,'Ненецкий автономный округ','NEN','83',44,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(614,1,176,0,'Нижегородская область','NIZ','52',45,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(615,1,176,0,'Новгородская область','NGR','53',46,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(616,1,176,0,'Новосибирская область','NVS','54',47,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(617,1,176,0,'Омская область','OMS','55',48,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(618,1,176,0,'Оренбургская область','ORE','56',49,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(619,1,176,0,'Орловская область','ORL','57',50,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(620,1,176,0,'Пензенская область','PNZ','58',51,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(621,1,176,0,'Пермский край','PER','59',52,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(622,1,176,0,'Приморский край','PRI','25',53,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(623,1,176,0,'Псковская область','PSK','60',54,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(624,1,176,0,'Ростовская область','ROS','61',55,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(625,1,176,0,'Рязанская область','RYA','62',56,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(626,1,176,0,'Самарская область','SAM','63',57,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(627,1,176,0,'Санкт-Петербург','SPE','78',58,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(628,1,176,0,'Саратовская область','SAR','64',59,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(629,1,176,0,'Саха (Якутия) Республика','SA','14',60,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(630,1,176,0,'Сахалинская область','SAK','65',61,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(631,1,176,0,'Свердловская область','SVE','66',62,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(632,1,176,0,'Северная Осетия-Алания Республика','SE','15',63,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(633,1,176,0,'Смоленская область','SMO','67',64,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(634,1,176,0,'Ставропольский край','STA','26',65,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(635,1,176,0,'Тамбовская область','TAM','68',66,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(636,1,176,0,'Татарстан Республика','TA','16',67,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(637,1,176,0,'Тверская область','TVE','69',68,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(638,1,176,0,'Томская область','TOM','70',69,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(639,1,176,0,'Тульская область','TUL','71',70,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(640,1,176,0,'Тыва Республика','TY','17',71,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(641,1,176,0,'Тюменская область','TYU','72',72,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(642,1,176,0,'Удмуртская Республика','UD','18',73,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(643,1,176,0,'Ульяновская область','ULY','73',74,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(644,1,176,0,'Хакасия Республика','KK','19',75,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(645,1,176,0,'Челябинская область','CHE','74',76,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(646,1,176,0,'Чеченская Республика','CE','20',77,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(647,1,176,0,'Чувашская Республика','CU','21',78,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(648,1,176,0,'Чукотский автономный округ','CHU','87',79,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(649,1,176,0,'Хабаровский край','KHA','27',80,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(650,1,176,0,'Ханты-Мансийский автономный округ','KHM','86',81,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(651,1,176,0,'Ямало-Ненецкий автономный округ','YAN','89',82,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(652,1,176,0,'Ярославская область','YAR','76',83,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(653,1,209,0,'กระบี่','กบ','กบ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(654,1,209,0,'กรุงเทพมหานคร','กทม','กท',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(655,1,209,0,'กาญจนบุรี','กจ','กจ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(656,1,209,0,'กาฬสินธุ์','กส','กส',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(657,1,209,0,'กำแพงเพชร','กพ','กพ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(658,1,209,0,'ขอนแก่น','ขก','ขก',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(659,1,209,0,'จันทบุรี','จบ','จบ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(660,1,209,0,'ฉะเชิงเทรา','ฉช','ฉช',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(661,1,209,0,'ชลบุรี','ชบ','ชบ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(662,1,209,0,'ชัยนาท','ชน','ชน',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(663,1,209,0,'ชัยภูมิ','ชย','ชย',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(664,1,209,0,'ชุมพร','ชพ','ชพ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(665,1,209,0,'เชียงราย','ชร','ชร',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(666,1,209,0,'เชียงใหม่','ชม','ชม',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(667,1,209,0,'ตรัง','ตง','ตง',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(668,1,209,0,'ตราด','ตร','ตร',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(669,1,209,0,'ตาก','ตก','ตก',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(670,1,209,0,'นครนายก','นย','นย',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(671,1,209,0,'นครปฐม','นฐ','นฐ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(672,1,209,0,'นครพนม','นพ','นพ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(673,1,209,0,'นครราชสีมา','นม','นม',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(674,1,209,0,'นครศรีธรรมราช','นศ','นศ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(675,1,209,0,'นครสวรรค์','นว','นว',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(676,1,209,0,'นนทบุรี','นบ','นบ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(677,1,209,0,'นราธิวาส','นธ','นธ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(678,1,209,0,'น่าน','นน','นน',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(679,1,209,0,'บุรีรัมย์','บร','บร',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(680,1,209,0,'บึงกาฬ','บก','บก',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(681,1,209,0,'ปทุมธานี','ปท','ปท',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(682,1,209,0,'ประจวบคีรีขันธ์','ปข','ปข',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(683,1,209,0,'ปราจีนบุรี','ปจ','ปจ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(684,1,209,0,'ปัตตานี','ปน','ปน',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(685,1,209,0,'พระนครศรีอยุธยา','อย','อย',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(686,1,209,0,'พังงา','พง','พง',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(687,1,209,0,'พัทลุง','พท','พท',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(688,1,209,0,'พิจิตร','พจ','พจ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(689,1,209,0,'พิษณุโลก','พล','พล',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(690,1,209,0,'เพชรบุรี','พบ','พบ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(691,1,209,0,'เพชรบูรณ์','พช','พช',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(692,1,209,0,'แพร่','พร','พร',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(693,1,209,0,'พะเยา','พย','พย',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(694,1,209,0,'ภูเก็ต','ภก','ภก',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(695,1,209,0,'มหาสารคาม','มค','มค',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(696,1,209,0,'แม่ฮ่องสอน','มส','มส',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(697,1,209,0,'มุกดาหาร','มห','มห',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(698,1,209,0,'ยะลา','ยล','ยล',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(699,1,209,0,'ยโสธร','ยส','ยส',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(700,1,209,0,'ร้อยเอ็ด','รอ','รอ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(701,1,209,0,'ระนอง','รน','รน',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(702,1,209,0,'ระยอง','รย','รย',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(703,1,209,0,'ราชบุรี','รบ','รบ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(704,1,209,0,'ลพบุรี','ลบ','ลบ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(705,1,209,0,'ลำปาง','ลป','ลป',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(706,1,209,0,'ลำพูน','ลพ','ลพ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(707,1,209,0,'เลย','ลย','ลย',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(708,1,209,0,'ศรีสะเกษ','ศก','ศก',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(709,1,209,0,'สกลนคร','สน','สน',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(710,1,209,0,'สงขลา','สข','สข',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(711,1,209,0,'สตูล','สต','สต',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(712,1,209,0,'สมุทรปราการ','สป','สป',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(713,1,209,0,'สมุทรสงคราม','สส','สส',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(714,1,209,0,'สมุทรสาคร','สค','สค',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(715,1,209,0,'สระบุรี','สบ','สบ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(716,1,209,0,'สระแก้ว','สก','สก',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(717,1,209,0,'สิงห์บุรี','สห','สห',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(718,1,209,0,'สุโขทัย','สท','สท',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(719,1,209,0,'สุพรรณบุรี','สพ','สพ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(720,1,209,0,'สุราษฎร์ธานี','สฎ','สฎ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(721,1,209,0,'สุรินทร์','สร','สร',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(722,1,209,0,'หนองคาย','นค','นค',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(723,1,209,0,'หนองบัวลำภู','นภ','นภ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(724,1,209,0,'อ่างทอง','อท','อท',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(725,1,209,0,'อุดรธานี','อด','อด',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(726,1,209,0,'อุตรดิตถ์','อต','อต',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(727,1,209,0,'อุทัยธานี','อน','อน',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(728,1,209,0,'อุบลราชธานี','อบ','อบ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(729,1,209,0,'อำนาจเจริญ','อจ','อจ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0);
/*!40000 ALTER TABLE `uzlnh_virtuemart_states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uzlnh_virtuemart_userfield_values`
--

DROP TABLE IF EXISTS `uzlnh_virtuemart_userfield_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uzlnh_virtuemart_userfield_values` (
  `virtuemart_userfield_value_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_userfield_id` smallint(1) unsigned NOT NULL DEFAULT '0',
  `fieldtitle` char(255) NOT NULL DEFAULT '',
  `fieldvalue` char(255) NOT NULL DEFAULT '',
  `sys` tinyint(4) NOT NULL DEFAULT '0',
  `ordering` int(2) NOT NULL DEFAULT '0',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_userfield_value_id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='Holds the different values for dropdown and radio lists';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uzlnh_virtuemart_userfield_values`
--

LOCK TABLES `uzlnh_virtuemart_userfield_values` WRITE;
/*!40000 ALTER TABLE `uzlnh_virtuemart_userfield_values` DISABLE KEYS */;
INSERT INTO `uzlnh_virtuemart_userfield_values` VALUES (1,10,'Mr','Mr',0,0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(2,10,'Mrs','Mrs',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(3,26,'None','',0,0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(4,26,'Non-resident (Canada)','R',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(5,26,'Federal government (United States)','A',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(6,26,'State government (United States)','B',0,2,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(7,26,'Tribe / Status Indian / Indian Band (both)','C',0,3,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(8,26,'Foreign diplomat (both)','D',0,4,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(9,26,'Charitable or benevolent org (both)','E',0,5,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(10,26,'Religious or educational org (both)','F',0,6,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(11,26,'Resale (both)','G',0,7,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(12,26,'Commercial agricultural production (both)','H',0,8,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(13,26,'Industrial production / manufacturer (both)','I',0,9,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(14,26,'Direct pay permit (United States)','J',0,10,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(15,26,'Direct mail (United States)','K',0,11,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(16,26,'Other (both)','L',0,12,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(17,26,'Local government (United States)','N',0,13,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(18,26,'Commercial aquaculture (Canada)','P',0,14,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(19,26,'Commercial Fishery (Canada)','Q',0,15,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0);
/*!40000 ALTER TABLE `uzlnh_virtuemart_userfield_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uzlnh_virtuemart_userfields`
--

DROP TABLE IF EXISTS `uzlnh_virtuemart_userfields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uzlnh_virtuemart_userfields` (
  `virtuemart_userfield_id` smallint(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_vendor_id` smallint(1) unsigned NOT NULL DEFAULT '1',
  `userfield_jplugin_id` int(11) NOT NULL DEFAULT '0',
  `name` char(255) NOT NULL DEFAULT '',
  `title` char(255) NOT NULL DEFAULT '',
  `description` mediumtext,
  `type` char(70) NOT NULL DEFAULT '',
  `maxlength` int(11) DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `required` tinyint(4) NOT NULL DEFAULT '0',
  `cols` int(11) DEFAULT NULL,
  `rows` int(11) DEFAULT NULL,
  `value` char(255) DEFAULT NULL,
  `default` char(255) DEFAULT NULL,
  `registration` tinyint(1) NOT NULL DEFAULT '0',
  `shipment` tinyint(1) NOT NULL DEFAULT '0',
  `account` tinyint(1) NOT NULL DEFAULT '1',
  `readonly` tinyint(1) NOT NULL DEFAULT '0',
  `calculated` tinyint(1) NOT NULL DEFAULT '0',
  `sys` tinyint(4) NOT NULL DEFAULT '0',
  `params` varchar(17500) DEFAULT NULL,
  `ordering` int(2) NOT NULL DEFAULT '0',
  `shared` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_userfield_id`),
  KEY `i_virtuemart_vendor_id` (`virtuemart_vendor_id`),
  KEY `i_ordering` (`ordering`),
  KEY `i_shared` (`shared`),
  KEY `i_published` (`published`),
  KEY `i_account` (`account`),
  KEY `i_shipment` (`shipment`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='Holds the fields for the user information';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uzlnh_virtuemart_userfields`
--

LOCK TABLES `uzlnh_virtuemart_userfields` WRITE;
/*!40000 ALTER TABLE `uzlnh_virtuemart_userfields` DISABLE KEYS */;
INSERT INTO `uzlnh_virtuemart_userfields` VALUES (1,0,0,'email','COM_VIRTUEMART_REGISTER_EMAIL','','emailaddress',100,30,1,NULL,NULL,NULL,NULL,1,1,1,0,0,1,NULL,4,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(2,0,0,'password','COM_VIRTUEMART_SHOPPER_FORM_PASSWORD_1','','password',25,30,0,NULL,NULL,NULL,NULL,0,0,0,0,0,1,NULL,10,0,0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(3,0,0,'password2','COM_VIRTUEMART_SHOPPER_FORM_PASSWORD_2','','password',25,30,0,NULL,NULL,NULL,NULL,0,0,0,0,0,1,NULL,12,0,0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(4,0,0,'agreed','COM_VIRTUEMART_I_AGREE_TO_TOS','','checkbox',NULL,NULL,1,NULL,NULL,NULL,NULL,1,1,1,0,0,1,NULL,13,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(5,0,0,'name','COM_VIRTUEMART_USER_DISPLAYED_NAME','','text',25,30,0,0,0,'',NULL,0,0,0,0,0,1,'',8,0,0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(6,0,0,'username','COM_VIRTUEMART_USERNAME','','text',25,30,0,0,0,'',NULL,0,0,0,0,0,1,'',6,0,0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(7,0,0,'address_type_name','COM_VIRTUEMART_USER_FORM_ADDRESS_LABEL','','text',32,30,0,NULL,NULL,NULL,NULL,0,0,0,0,0,1,NULL,16,0,0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(8,0,0,'delimiter_billto','COM_VIRTUEMART_USER_FORM_BILLTO_LBL','','delimiter',25,30,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0,NULL,18,0,0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(9,0,0,'company','COM_VIRTUEMART_SHOPPER_FORM_COMPANY_NAME','','text',64,30,0,NULL,NULL,NULL,NULL,0,0,0,0,0,1,NULL,20,0,0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(10,0,0,'title','COM_VIRTUEMART_SHOPPER_FORM_TITLE','','select',0,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,1,NULL,22,0,0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(11,0,0,'first_name','COM_VIRTUEMART_SHOPPER_FORM_FIRST_NAME','','text',32,30,1,NULL,NULL,NULL,NULL,1,1,1,0,0,1,NULL,24,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(12,0,0,'middle_name','COM_VIRTUEMART_SHOPPER_FORM_MIDDLE_NAME','','text',32,30,0,NULL,NULL,NULL,NULL,0,0,0,0,0,1,NULL,26,0,0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(13,0,0,'last_name','COM_VIRTUEMART_SHOPPER_FORM_LAST_NAME','','text',32,30,1,NULL,NULL,NULL,NULL,1,1,1,0,0,1,NULL,28,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(14,0,0,'address_1','COM_VIRTUEMART_SHOPPER_FORM_ADDRESS_1','','text',64,30,1,NULL,NULL,NULL,NULL,1,1,1,0,0,1,NULL,30,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(15,0,0,'address_2','COM_VIRTUEMART_SHOPPER_FORM_ADDRESS_2','','text',64,30,0,NULL,NULL,NULL,NULL,0,0,0,0,0,1,NULL,32,0,0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(16,0,0,'zip','COM_VIRTUEMART_SHOPPER_FORM_ZIP','','text',32,30,0,NULL,NULL,NULL,NULL,0,0,0,0,0,1,NULL,34,0,0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(17,0,0,'city','COM_VIRTUEMART_SHOPPER_FORM_CITY','','text',32,30,1,NULL,NULL,NULL,NULL,1,1,1,0,0,1,NULL,36,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(18,0,0,'virtuemart_country_id','COM_VIRTUEMART_SHOPPER_FORM_COUNTRY','','select',0,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,1,NULL,38,0,0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(19,0,0,'virtuemart_state_id','COM_VIRTUEMART_SHOPPER_FORM_STATE','','select',0,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,1,NULL,40,0,0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(20,0,0,'phone_1','COM_VIRTUEMART_SHOPPER_FORM_PHONE','','text',32,30,1,NULL,NULL,NULL,NULL,1,1,1,0,0,1,NULL,42,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(21,0,0,'phone_2','COM_VIRTUEMART_SHOPPER_FORM_PHONE2','','text',32,30,0,NULL,NULL,NULL,NULL,0,0,0,0,0,1,NULL,44,0,0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(22,0,0,'fax','COM_VIRTUEMART_SHOPPER_FORM_FAX','','text',32,30,0,NULL,NULL,NULL,NULL,0,0,0,0,0,1,NULL,46,0,0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(23,0,0,'delimiter_sendregistration','COM_VIRTUEMART_BUTTON_SEND_REG','','delimiter',25,30,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0,NULL,2,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(24,0,0,'delimiter_userinfo','COM_VIRTUEMART_ORDER_PRINT_CUST_INFO_LBL','','delimiter',NULL,NULL,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0,NULL,14,0,0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(25,1,0,'tax_exemption_number','COM_VIRTUEMART_SHOPPER_FORM_TAXEXEMPTION_NBR','Vendors can set here a tax exemption number for a shopper. This field is only changeable by administrators.','text',10,0,0,0,0,NULL,NULL,0,0,0,1,0,0,NULL,48,0,0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(26,1,0,'tax_usage_type','COM_VIRTUEMART_SHOPPER_FORM_TAX_USAGE','Federal, national, educational, public, or similar often get a special tax. This field is only writable by administrators.','select',0,0,0,0,0,NULL,NULL,0,0,0,1,0,0,NULL,50,0,0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0);
/*!40000 ALTER TABLE `uzlnh_virtuemart_userfields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uzlnh_virtuemart_userinfos`
--

DROP TABLE IF EXISTS `uzlnh_virtuemart_userinfos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uzlnh_virtuemart_userinfos` (
  `virtuemart_userinfo_id` int(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_user_id` int(1) unsigned NOT NULL DEFAULT '0',
  `address_type` char(2) NOT NULL DEFAULT '',
  `address_type_name` char(32) NOT NULL DEFAULT '',
  `name` char(64) DEFAULT NULL,
  `company` char(64) DEFAULT NULL,
  `title` char(32) DEFAULT NULL,
  `last_name` char(48) DEFAULT NULL,
  `first_name` char(48) DEFAULT NULL,
  `middle_name` char(48) DEFAULT NULL,
  `phone_1` char(32) DEFAULT NULL,
  `phone_2` char(32) DEFAULT NULL,
  `fax` char(32) DEFAULT NULL,
  `address_1` char(64) NOT NULL DEFAULT '',
  `address_2` char(64) DEFAULT NULL,
  `city` char(64) NOT NULL DEFAULT '',
  `virtuemart_state_id` smallint(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_country_id` smallint(1) unsigned NOT NULL DEFAULT '0',
  `zip` char(32) NOT NULL DEFAULT '',
  `agreed` tinyint(1) NOT NULL DEFAULT '0',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_userinfo_id`),
  KEY `idx_userinfo_virtuemart_user_id` (`virtuemart_userinfo_id`,`virtuemart_user_id`),
  KEY `address_type` (`address_type`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Customer Information, BT = BillTo and ST = ShipTo';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uzlnh_virtuemart_userinfos`
--

LOCK TABLES `uzlnh_virtuemart_userinfos` WRITE;
/*!40000 ALTER TABLE `uzlnh_virtuemart_userinfos` DISABLE KEYS */;
INSERT INTO `uzlnh_virtuemart_userinfos` VALUES (1,706,'BT','','Super User','IM Style','','Квасневская','Ольга','','555-555-555','','','Россия','','Москва',0,0,'',1,'2014-07-14 09:32:41',706,'2014-08-17 18:11:56',706,'0000-00-00 00:00:00',0);
/*!40000 ALTER TABLE `uzlnh_virtuemart_userinfos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uzlnh_virtuemart_vendor_medias`
--

DROP TABLE IF EXISTS `uzlnh_virtuemart_vendor_medias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uzlnh_virtuemart_vendor_medias` (
  `id` smallint(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_vendor_id` smallint(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_media_id` int(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `i_virtuemart_vendor_id` (`virtuemart_vendor_id`,`virtuemart_media_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uzlnh_virtuemart_vendor_medias`
--

LOCK TABLES `uzlnh_virtuemart_vendor_medias` WRITE;
/*!40000 ALTER TABLE `uzlnh_virtuemart_vendor_medias` DISABLE KEYS */;
INSERT INTO `uzlnh_virtuemart_vendor_medias` VALUES (2,1,23,1);
/*!40000 ALTER TABLE `uzlnh_virtuemart_vendor_medias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uzlnh_virtuemart_vendors`
--

DROP TABLE IF EXISTS `uzlnh_virtuemart_vendors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uzlnh_virtuemart_vendors` (
  `metarobot` char(20) DEFAULT NULL,
  `metaauthor` char(64) DEFAULT NULL,
  `virtuemart_vendor_id` smallint(1) unsigned NOT NULL AUTO_INCREMENT,
  `vendor_name` char(64) DEFAULT NULL,
  `vendor_currency` int(11) DEFAULT NULL,
  `vendor_accepted_currencies` varchar(1536) NOT NULL DEFAULT '',
  `vendor_params` varchar(17000) DEFAULT NULL,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_vendor_id`),
  KEY `idx_vendor_name` (`vendor_name`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Vendors manage their products in your store';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uzlnh_virtuemart_vendors`
--

LOCK TABLES `uzlnh_virtuemart_vendors` WRITE;
/*!40000 ALTER TABLE `uzlnh_virtuemart_vendors` DISABLE KEYS */;
INSERT INTO `uzlnh_virtuemart_vendors` VALUES ('','',1,'IM Style',131,'131','vendor_min_pov=\"0\"|vendor_min_poq=1|vendor_freeshipment=0|vendor_address_format=\"\"|vendor_date_format=\"\"|vendor_letter_format=\"A4\"|vendor_letter_orientation=\"P\"|vendor_letter_margin_top=\"45\"|vendor_letter_margin_left=\"25\"|vendor_letter_margin_right=\"25\"|vendor_letter_margin_bottom=\"25\"|vendor_letter_margin_header=\"12\"|vendor_letter_margin_footer=\"20\"|vendor_letter_font=\"helvetica\"|vendor_letter_font_size=\"8\"|vendor_letter_header_font_size=\"7\"|vendor_letter_footer_font_size=\"6\"|vendor_letter_header=\"1\"|vendor_letter_header_line=\"1\"|vendor_letter_header_line_color=\"#000000\"|vendor_letter_header_image=\"1\"|vendor_letter_header_imagesize=\"60\"|vendor_letter_header_cell_height_ratio=\"1\"|vendor_letter_footer=\"1\"|vendor_letter_footer_line=\"1\"|vendor_letter_footer_line_color=\"#000000\"|vendor_letter_footer_cell_height_ratio=\"1\"|vendor_letter_add_tos=\"0\"|vendor_letter_add_tos_newpage=\"1\"|','0000-00-00 00:00:00',0,'2014-08-17 18:11:56',706,'0000-00-00 00:00:00',0);
/*!40000 ALTER TABLE `uzlnh_virtuemart_vendors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uzlnh_virtuemart_vendors_ru_ru`
--

DROP TABLE IF EXISTS `uzlnh_virtuemart_vendors_ru_ru`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uzlnh_virtuemart_vendors_ru_ru` (
  `vendor_letter_css` text NOT NULL,
  `vendor_letter_header_html` varchar(8000) NOT NULL DEFAULT '<h1>{vm:vendorname}</h1><p>{vm:vendoraddress}</p>',
  `vendor_letter_footer_html` varchar(8000) NOT NULL DEFAULT '<p>{vm:vendorlegalinfo}<br />Page {vm:pagenum}/{vm:pagecount}</p>',
  `metadesc` varchar(400) NOT NULL DEFAULT '',
  `metakey` varchar(400) NOT NULL DEFAULT '',
  `customtitle` char(255) NOT NULL DEFAULT '',
  `virtuemart_vendor_id` int(1) unsigned NOT NULL,
  `vendor_store_desc` text NOT NULL,
  `vendor_terms_of_service` text NOT NULL,
  `vendor_legal_info` text NOT NULL,
  `vendor_store_name` char(180) NOT NULL DEFAULT '',
  `vendor_phone` char(26) NOT NULL DEFAULT '',
  `vendor_url` char(255) NOT NULL DEFAULT '',
  `slug` char(192) NOT NULL DEFAULT '',
  PRIMARY KEY (`virtuemart_vendor_id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uzlnh_virtuemart_vendors_ru_ru`
--

LOCK TABLES `uzlnh_virtuemart_vendors_ru_ru` WRITE;
/*!40000 ALTER TABLE `uzlnh_virtuemart_vendors_ru_ru` DISABLE KEYS */;
INSERT INTO `uzlnh_virtuemart_vendors_ru_ru` VALUES ('','<h1>{vm:vendorname}</h1>\r\n<p>{vm:vendoraddress}</p>','<p>{vm:vendorlegalinfo}<br />Page {vm:pagenum}/{vm:pagecount}</p>','','','',1,'<h1>Добро пожаловать!</h1>\r\n<p>С другой стороны постоянное информационно-пропагандистское обеспечение нашей деятельности требуют определения и уточнения модели развития. С другой стороны рамки и место обучения кадров способствует подготовки и реализации систем массового участия. Таким образом сложившаяся структура организации играет важную роль в формировании системы обучения кадров, соответствует насущным потребностям.</p>','<h5>You haven\'t configured any terms of service yet. Click <a href=\"administrator/index.php?option=com_virtuemart&view=user&task=editshop\">here</a> to change this text.</h5>','<p>VAT-ID: XYZ-DEMO<br />Reg.Nr: DEMONUMBER</p>','IM Style','555-555-1212','http://ph238604-210420141006039.www12.pagehost.ru/','im-style');
/*!40000 ALTER TABLE `uzlnh_virtuemart_vendors_ru_ru` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uzlnh_virtuemart_vmuser_shoppergroups`
--

DROP TABLE IF EXISTS `uzlnh_virtuemart_vmuser_shoppergroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uzlnh_virtuemart_vmuser_shoppergroups` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_user_id` int(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_shoppergroup_id` smallint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `i_virtuemart_user_id` (`virtuemart_user_id`,`virtuemart_shoppergroup_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='xref table for users to shopper group';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uzlnh_virtuemart_vmuser_shoppergroups`
--

LOCK TABLES `uzlnh_virtuemart_vmuser_shoppergroups` WRITE;
/*!40000 ALTER TABLE `uzlnh_virtuemart_vmuser_shoppergroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `uzlnh_virtuemart_vmuser_shoppergroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uzlnh_virtuemart_vmusers`
--

DROP TABLE IF EXISTS `uzlnh_virtuemart_vmusers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uzlnh_virtuemart_vmusers` (
  `virtuemart_user_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_vendor_id` smallint(1) unsigned NOT NULL DEFAULT '0',
  `user_is_vendor` tinyint(1) NOT NULL DEFAULT '0',
  `customer_number` char(32) DEFAULT NULL,
  `perms` char(40) NOT NULL DEFAULT 'shopper',
  `virtuemart_paymentmethod_id` mediumint(1) unsigned DEFAULT NULL,
  `virtuemart_shipmentmethod_id` mediumint(1) unsigned DEFAULT NULL,
  `agreed` tinyint(1) NOT NULL DEFAULT '0',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_user_id`),
  UNIQUE KEY `i_virtuemart_user_id` (`virtuemart_user_id`,`virtuemart_vendor_id`),
  KEY `i_virtuemart_vendor_id` (`virtuemart_vendor_id`),
  KEY `i_user_is_vendor` (`user_is_vendor`)
) ENGINE=MyISAM AUTO_INCREMENT=707 DEFAULT CHARSET=utf8 COMMENT='Holds the unique user data';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uzlnh_virtuemart_vmusers`
--

LOCK TABLES `uzlnh_virtuemart_vmusers` WRITE;
/*!40000 ALTER TABLE `uzlnh_virtuemart_vmusers` DISABLE KEYS */;
INSERT INTO `uzlnh_virtuemart_vmusers` VALUES (706,1,1,'21232f297a57a5a743894a0e4a801fc3','admin',0,0,1,'2014-07-15 09:32:47',706,'2014-08-17 18:11:56',706,'0000-00-00 00:00:00',0);
/*!40000 ALTER TABLE `uzlnh_virtuemart_vmusers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uzlnh_virtuemart_waitingusers`
--

DROP TABLE IF EXISTS `uzlnh_virtuemart_waitingusers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uzlnh_virtuemart_waitingusers` (
  `virtuemart_waitinguser_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_product_id` int(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_user_id` int(1) unsigned NOT NULL DEFAULT '0',
  `notify_email` char(150) NOT NULL DEFAULT '',
  `notified` tinyint(1) NOT NULL DEFAULT '0',
  `notify_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ordering` int(2) NOT NULL DEFAULT '0',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_waitinguser_id`),
  KEY `virtuemart_product_id` (`virtuemart_product_id`),
  KEY `notify_email` (`notify_email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Stores notifications, users waiting f. products out of stock';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uzlnh_virtuemart_waitingusers`
--

LOCK TABLES `uzlnh_virtuemart_waitingusers` WRITE;
/*!40000 ALTER TABLE `uzlnh_virtuemart_waitingusers` DISABLE KEYS */;
/*!40000 ALTER TABLE `uzlnh_virtuemart_waitingusers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uzlnh_virtuemart_worldzones`
--

DROP TABLE IF EXISTS `uzlnh_virtuemart_worldzones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uzlnh_virtuemart_worldzones` (
  `virtuemart_worldzone_id` smallint(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_vendor_id` smallint(1) DEFAULT NULL,
  `zone_name` char(255) DEFAULT NULL,
  `zone_cost` decimal(10,2) DEFAULT NULL,
  `zone_limit` decimal(10,2) DEFAULT NULL,
  `zone_description` varchar(18000) DEFAULT NULL,
  `zone_tax_rate` int(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(2) NOT NULL DEFAULT '0',
  `shared` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_worldzone_id`),
  KEY `i_virtuemart_vendor_id` (`virtuemart_vendor_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='The Zones managed by the Zone Shipment Module';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uzlnh_virtuemart_worldzones`
--

LOCK TABLES `uzlnh_virtuemart_worldzones` WRITE;
/*!40000 ALTER TABLE `uzlnh_virtuemart_worldzones` DISABLE KEYS */;
INSERT INTO `uzlnh_virtuemart_worldzones` VALUES (1,NULL,'Default',6.00,35.00,'This is the default Shipment Zone. This is the zone information that all countries will use until you assign each individual country to a Zone.',2,0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(2,NULL,'Zone 1',1000.00,10000.00,'This is a zone example',2,0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(3,NULL,'Zone 2',2.00,22.00,'This is the second zone. You can use this for notes about this zone',2,0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(4,NULL,'Zone 3',11.00,64.00,'Another useful thing might be details about this zone or special instructions.',2,0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0);
/*!40000 ALTER TABLE `uzlnh_virtuemart_worldzones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uzlnh_weblinks`
--

DROP TABLE IF EXISTS `uzlnh_weblinks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uzlnh_weblinks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `sid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `url` varchar(250) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(11) NOT NULL DEFAULT '0',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `archived` tinyint(1) NOT NULL DEFAULT '0',
  `approved` tinyint(1) NOT NULL DEFAULT '1',
  `access` int(11) NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `language` char(7) NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if link is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uzlnh_weblinks`
--

LOCK TABLES `uzlnh_weblinks` WRITE;
/*!40000 ALTER TABLE `uzlnh_weblinks` DISABLE KEYS */;
/*!40000 ALTER TABLE `uzlnh_weblinks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uzlnh_xmap_items`
--

DROP TABLE IF EXISTS `uzlnh_xmap_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uzlnh_xmap_items` (
  `uid` varchar(100) NOT NULL,
  `itemid` int(11) NOT NULL,
  `view` varchar(10) NOT NULL,
  `sitemap_id` int(11) NOT NULL,
  `properties` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`uid`,`itemid`,`view`,`sitemap_id`),
  KEY `uid` (`uid`,`itemid`),
  KEY `view` (`view`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uzlnh_xmap_items`
--

LOCK TABLES `uzlnh_xmap_items` WRITE;
/*!40000 ALTER TABLE `uzlnh_xmap_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `uzlnh_xmap_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uzlnh_xmap_sitemap`
--

DROP TABLE IF EXISTS `uzlnh_xmap_sitemap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uzlnh_xmap_sitemap` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `introtext` text,
  `metadesc` text,
  `metakey` text,
  `attribs` text,
  `selections` text,
  `excluded_items` text,
  `is_default` int(1) DEFAULT '0',
  `state` int(2) DEFAULT NULL,
  `access` int(11) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `count_xml` int(11) DEFAULT NULL,
  `count_html` int(11) DEFAULT NULL,
  `views_xml` int(11) DEFAULT NULL,
  `views_html` int(11) DEFAULT NULL,
  `lastvisit_xml` int(11) DEFAULT NULL,
  `lastvisit_html` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uzlnh_xmap_sitemap`
--

LOCK TABLES `uzlnh_xmap_sitemap` WRITE;
/*!40000 ALTER TABLE `uzlnh_xmap_sitemap` DISABLE KEYS */;
INSERT INTO `uzlnh_xmap_sitemap` VALUES (1,'Карта сайта','karta-sajta','<h1>Карта сайта</h1>',NULL,NULL,'{\"showintro\":\"1\",\"show_menutitle\":\"0\",\"classname\":\"\",\"columns\":\"\",\"exlinks\":\"img_blue.gif\",\"compress_xml\":\"1\",\"beautify_xml\":\"1\",\"include_link\":\"1\",\"news_publication_name\":\"\"}','{\"mainmenu\":{\"priority\":\"0.5\",\"changefreq\":\"weekly\",\"ordering\":0},\"top-menu\":{\"priority\":\"0.5\",\"changefreq\":\"weekly\",\"ordering\":1}}',NULL,1,1,1,'2014-07-21 07:34:56',0,61,0,16,0,1429290993);
/*!40000 ALTER TABLE `uzlnh_xmap_sitemap` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-07-12 11:34:00
