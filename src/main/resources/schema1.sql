-- MySQL dump 10.13  Distrib 5.6.26, for osx10.10 (x86_64)
--
-- Host: localhost    Database: ejabberd
-- ------------------------------------------------------
-- Server version	5.6.26

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
-- Table structure for table `appmsgcount`
--

DROP TABLE IF EXISTS `appmsgcount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `appmsgcount` (
  `appkey` varchar(256) DEFAULT NULL,
  `msg_date` date NOT NULL,
  `total_msg` int(11) DEFAULT '0',
  `out_msg` int(11) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `caps_features`
--

DROP TABLE IF EXISTS `caps_features`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `caps_features` (
  `node` varchar(250) NOT NULL,
  `subnode` varchar(250) NOT NULL,
  `feature` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  KEY `i_caps_features_node_subnode` (`node`(75),`subnode`(75))
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `irc_custom`
--

DROP TABLE IF EXISTS `irc_custom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `irc_custom` (
  `jid` text NOT NULL,
  `host` text NOT NULL,
  `data` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  UNIQUE KEY `i_irc_custom_jid_host` (`jid`(75),`host`(75)) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `last`
--

DROP TABLE IF EXISTS `last`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `last` (
  `username` varchar(250) NOT NULL,
  `seconds` text NOT NULL,
  `state` text NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `message_body_0`
--

DROP TABLE IF EXISTS `message_body_0`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `message_body_0` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `mid` bigint(20) NOT NULL,
  `body` text NOT NULL,
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `i_message_body_0` (`mid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='kv store for message body';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `message_body_1`
--

DROP TABLE IF EXISTS `message_body_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `message_body_1` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `mid` bigint(20) NOT NULL,
  `body` text NOT NULL,
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `i_message_body_1` (`mid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9199 DEFAULT CHARSET=utf8mb4 COMMENT='kv store for message body';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `message_index_1`
--

DROP TABLE IF EXISTS `message_index_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `message_index_1` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `mid` bigint(20) NOT NULL,
  `type` char(1) NOT NULL COMMENT 's for send, r for receive',
  `username` varchar(250) NOT NULL,
  `opposite` varchar(250) NOT NULL COMMENT 'user with whom people have conversations',
  `source` varchar(250) DEFAULT NULL COMMENT 'i.e. org#app infomation',
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `i_username_message_index_1` (`username`) USING BTREE,
  KEY `i_username_oppo_message_index_1` (`username`,`opposite`) USING BTREE,
  KEY `i_source_message_index_1` (`source`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=620 DEFAULT CHARSET=utf8 COMMENT='user''s message box index';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `motd`
--

DROP TABLE IF EXISTS `motd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `motd` (
  `username` varchar(250) NOT NULL,
  `xml` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `msgcount`
--

DROP TABLE IF EXISTS `msgcount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `msgcount` (
  `msg_date` date NOT NULL,
  `total_msg` int(11) DEFAULT '0',
  `out_msg` int(11) DEFAULT '0',
  `offline_msg` int(11) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `muc_registered`
--

DROP TABLE IF EXISTS `muc_registered`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `muc_registered` (
  `jid` text NOT NULL,
  `host` text NOT NULL,
  `nick` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  UNIQUE KEY `i_muc_registered_jid_host` (`jid`(75),`host`(75)) USING BTREE,
  KEY `i_muc_registered_nick` (`nick`(75)) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `muc_room`
--

DROP TABLE IF EXISTS `muc_room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `muc_room` (
  `name` text NOT NULL,
  `host` text NOT NULL,
  `opts` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  UNIQUE KEY `i_muc_room_name_host` (`name`(75),`host`(75)) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `privacy_default_list`
--

DROP TABLE IF EXISTS `privacy_default_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `privacy_default_list` (
  `username` varchar(250) NOT NULL,
  `name` varchar(250) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `privacy_list`
--

DROP TABLE IF EXISTS `privacy_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `privacy_list` (
  `username` varchar(250) NOT NULL,
  `name` varchar(250) NOT NULL,
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `i_privacy_list_username_name` (`username`(75),`name`(75)) USING BTREE,
  KEY `i_privacy_list_username` (`username`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `privacy_list_data`
--

DROP TABLE IF EXISTS `privacy_list_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `privacy_list_data` (
  `id` bigint(20) DEFAULT NULL,
  `t` char(1) NOT NULL,
  `value` text NOT NULL,
  `action` char(1) NOT NULL,
  `ord` decimal(10,0) NOT NULL,
  `match_all` tinyint(1) NOT NULL,
  `match_iq` tinyint(1) NOT NULL,
  `match_message` tinyint(1) NOT NULL,
  `match_presence_in` tinyint(1) NOT NULL,
  `match_presence_out` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `private_storage`
--

DROP TABLE IF EXISTS `private_storage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `private_storage` (
  `username` varchar(250) NOT NULL,
  `namespace` varchar(250) NOT NULL,
  `data` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  UNIQUE KEY `i_private_storage_username_namespace` (`username`(75),`namespace`(75)) USING BTREE,
  KEY `i_private_storage_username` (`username`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pubsub_item`
--

DROP TABLE IF EXISTS `pubsub_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pubsub_item` (
  `nodeid` bigint(20) DEFAULT NULL,
  `itemid` text,
  `publisher` text,
  `creation` text,
  `modification` text,
  `payload` text,
  UNIQUE KEY `i_pubsub_item_tuple` (`nodeid`,`itemid`(36)),
  KEY `i_pubsub_item_itemid` (`itemid`(36)),
  CONSTRAINT `pubsub_item_ibfk_1` FOREIGN KEY (`nodeid`) REFERENCES `pubsub_node` (`nodeid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pubsub_node`
--

DROP TABLE IF EXISTS `pubsub_node`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pubsub_node` (
  `host` text,
  `node` text,
  `parent` text,
  `type` text,
  `nodeid` bigint(20) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`nodeid`),
  UNIQUE KEY `i_pubsub_node_tuple` (`host`(20),`node`(120)),
  KEY `i_pubsub_node_parent` (`parent`(120))
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pubsub_node_option`
--

DROP TABLE IF EXISTS `pubsub_node_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pubsub_node_option` (
  `nodeid` bigint(20) DEFAULT NULL,
  `name` text,
  `val` text,
  KEY `i_pubsub_node_option_nodeid` (`nodeid`),
  CONSTRAINT `pubsub_node_option_ibfk_1` FOREIGN KEY (`nodeid`) REFERENCES `pubsub_node` (`nodeid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pubsub_node_owner`
--

DROP TABLE IF EXISTS `pubsub_node_owner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pubsub_node_owner` (
  `nodeid` bigint(20) DEFAULT NULL,
  `owner` text,
  KEY `i_pubsub_node_owner_nodeid` (`nodeid`),
  CONSTRAINT `pubsub_node_owner_ibfk_1` FOREIGN KEY (`nodeid`) REFERENCES `pubsub_node` (`nodeid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pubsub_state`
--

DROP TABLE IF EXISTS `pubsub_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pubsub_state` (
  `nodeid` bigint(20) DEFAULT NULL,
  `jid` text,
  `affiliation` char(1) DEFAULT NULL,
  `subscriptions` text,
  `stateid` bigint(20) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`stateid`),
  UNIQUE KEY `i_pubsub_state_tuple` (`nodeid`,`jid`(60)),
  KEY `i_pubsub_state_jid` (`jid`(60)),
  CONSTRAINT `pubsub_state_ibfk_1` FOREIGN KEY (`nodeid`) REFERENCES `pubsub_node` (`nodeid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pubsub_subscription_opt`
--

DROP TABLE IF EXISTS `pubsub_subscription_opt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pubsub_subscription_opt` (
  `subid` text,
  `opt_name` varchar(32) DEFAULT NULL,
  `opt_value` text,
  UNIQUE KEY `i_pubsub_subscription_opt` (`subid`(32),`opt_name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `receivemsg`
--

DROP TABLE IF EXISTS `receivemsg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `receivemsg` (
  `appkey` varchar(250) NOT NULL,
  `username` varchar(250) NOT NULL,
  `xml` text NOT NULL,
  `seq` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  UNIQUE KEY `seq` (`seq`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `roster_version`
--

DROP TABLE IF EXISTS `roster_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roster_version` (
  `username` varchar(250) NOT NULL,
  `version` text NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `rostergroups`
--

DROP TABLE IF EXISTS `rostergroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rostergroups` (
  `username` varchar(250) NOT NULL,
  `jid` varchar(250) NOT NULL,
  `grp` text NOT NULL,
  KEY `pk_rosterg_user_jid` (`username`(75),`jid`(75))
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `rosterusers`
--

DROP TABLE IF EXISTS `rosterusers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rosterusers` (
  `username` varchar(250) NOT NULL,
  `jid` varchar(250) NOT NULL,
  `nick` text NOT NULL,
  `subscription` char(1) NOT NULL,
  `ask` char(1) NOT NULL,
  `askmessage` text NOT NULL,
  `server` char(1) NOT NULL,
  `subscribe` text NOT NULL,
  `type` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  UNIQUE KEY `i_rosteru_user_jid` (`username`(75),`jid`(75)),
  KEY `i_rosteru_username` (`username`),
  KEY `i_rosteru_jid` (`jid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sendmsg`
--

DROP TABLE IF EXISTS `sendmsg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sendmsg` (
  `appkey` varchar(250) NOT NULL,
  `username` varchar(250) NOT NULL,
  `xml` text NOT NULL,
  `seq` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  UNIQUE KEY `seq` (`seq`),
  KEY `i_desendmsg_username` (`username`(191)) USING BTREE,
  KEY `i_desendmsg_appkey` (`appkey`(191)) USING BTREE,
  KEY `i_derecvmsg_username` (`username`(191)) USING BTREE,
  KEY `i_derecvmsg_appkey` (`appkey`(191)) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `spool`
--

DROP TABLE IF EXISTS `spool`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spool` (
  `username` varchar(250) NOT NULL,
  `xml` text NOT NULL,
  `seq` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  UNIQUE KEY `seq` (`seq`),
  KEY `i_despool` (`username`(191)) USING BTREE,
  KEY `ides_ts_spool` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `spool_1`
--

DROP TABLE IF EXISTS `spool_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spool_1` (
  `username` varchar(250) NOT NULL,
  `xml` text NOT NULL,
  `seq` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  UNIQUE KEY `seq` (`seq`)
) ENGINE=InnoDB AUTO_INCREMENT=259882 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sr_group`
--

DROP TABLE IF EXISTS `sr_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sr_group` (
  `name` varchar(250) NOT NULL,
  `opts` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sr_user`
--

DROP TABLE IF EXISTS `sr_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sr_user` (
  `jid` varchar(250) NOT NULL,
  `grp` varchar(250) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  UNIQUE KEY `i_sr_user_jid_group` (`jid`(75),`grp`(75)),
  KEY `i_sr_user_jid` (`jid`),
  KEY `i_sr_user_grp` (`grp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `username` varchar(250) NOT NULL,
  `password` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `vcard`
--

DROP TABLE IF EXISTS `vcard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vcard` (
  `username` varchar(250) NOT NULL,
  `vcard` mediumtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `vcard_search`
--

DROP TABLE IF EXISTS `vcard_search`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vcard_search` (
  `username` varchar(250) NOT NULL,
  `lusername` varchar(250) NOT NULL,
  `fn` text NOT NULL,
  `lfn` varchar(250) NOT NULL,
  `family` text NOT NULL,
  `lfamily` varchar(250) NOT NULL,
  `given` text NOT NULL,
  `lgiven` varchar(250) NOT NULL,
  `middle` text NOT NULL,
  `lmiddle` varchar(250) NOT NULL,
  `nickname` text NOT NULL,
  `lnickname` varchar(250) NOT NULL,
  `bday` text NOT NULL,
  `lbday` varchar(250) NOT NULL,
  `ctry` text NOT NULL,
  `lctry` varchar(250) NOT NULL,
  `locality` text NOT NULL,
  `llocality` varchar(250) NOT NULL,
  `email` text NOT NULL,
  `lemail` varchar(250) NOT NULL,
  `orgname` text NOT NULL,
  `lorgname` varchar(250) NOT NULL,
  `orgunit` text NOT NULL,
  `lorgunit` varchar(250) NOT NULL,
  PRIMARY KEY (`lusername`),
  KEY `i_vcard_search_lfn` (`lfn`),
  KEY `i_vcard_search_lfamily` (`lfamily`),
  KEY `i_vcard_search_lgiven` (`lgiven`),
  KEY `i_vcard_search_lmiddle` (`lmiddle`),
  KEY `i_vcard_search_lnickname` (`lnickname`),
  KEY `i_vcard_search_lbday` (`lbday`),
  KEY `i_vcard_search_lctry` (`lctry`),
  KEY `i_vcard_search_llocality` (`llocality`),
  KEY `i_vcard_search_lemail` (`lemail`),
  KEY `i_vcard_search_lorgname` (`lorgname`),
  KEY `i_vcard_search_lorgunit` (`lorgunit`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `vcard_xupdate`
--

DROP TABLE IF EXISTS `vcard_xupdate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vcard_xupdate` (
  `username` varchar(250) NOT NULL,
  `hash` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-04-03 15:59:44
