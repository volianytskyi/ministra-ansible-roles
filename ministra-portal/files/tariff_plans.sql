-- MySQL dump 10.13  Distrib 5.5.62, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: stalker_db
-- ------------------------------------------------------
-- Server version	5.5.62-0ubuntu0.14.04.1-log

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
-- Table structure for table `services_package`
--

DROP TABLE IF EXISTS `services_package`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `services_package` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `external_id` varchar(64) NOT NULL DEFAULT '',
  `name` varchar(64) NOT NULL DEFAULT '',
  `description` text,
  `type` varchar(64) NOT NULL DEFAULT '',
  `all_services` tinyint(4) DEFAULT '0',
  `service_type` varchar(32) DEFAULT 'periodic',
  `rent_duration` int(11) NOT NULL DEFAULT '0',
  `price` decimal(8,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services_package`
--

LOCK TABLES `services_package` WRITE;
/*!40000 ALTER TABLE `services_package` DISABLE KEYS */;
INSERT INTO `services_package` VALUES (1,'00','smart launcher modules','','module',0,'periodic',0,0.00),(2,'01','classic modules','','module',0,'periodic',0,0.00),(3,'02','tv','','tv',1,'periodic',0,0.00),(4,'03','video','','video',1,'periodic',0,0.00),(5,'04','radio','','radio',1,'periodic',0,0.00),(6,'05','keys','','option',0,'periodic',0,0.00);
/*!40000 ALTER TABLE `services_package` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service_in_package`
--

DROP TABLE IF EXISTS `service_in_package`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `service_in_package` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `service_id` varchar(64) NOT NULL DEFAULT '',
  `package_id` int(11) NOT NULL DEFAULT '0',
  `type` varchar(64) NOT NULL DEFAULT '',
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `options` varchar(128) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_in_package`
--

LOCK TABLES `service_in_package` WRITE;
/*!40000 ALTER TABLE `service_in_package` DISABLE KEYS */;
INSERT INTO `service_in_package` VALUES (1,'launcher_magcore-app-tv',1,'module','2019-07-30 13:12:49','{}'),(2,'launcher_magcore-app-video-club',1,'module','2019-07-30 13:12:49','{}'),(3,'launcher_magcore-app-radio',1,'module','2019-07-30 13:12:49','{}'),(4,'launcher_magcore-app-magic-cast',1,'module','2019-07-30 13:12:49','{}'),(5,'launcher_magcore-app-audio-club',1,'module','2019-07-30 13:12:49','{}'),(6,'launcher_magcore-app-explorer',1,'module','2019-07-30 13:12:49','{}'),(7,'launcher_magcore-app-records',1,'module','2019-07-30 13:12:49','{}'),(8,'launcher_magcore-app-weather',1,'module','2019-07-30 13:12:49','{}'),(9,'launcher_magcore-app-personal-account',1,'module','2019-07-30 13:12:49','{}'),(10,'launcher_magcore-app-settings',1,'module','2019-07-30 13:12:49','{}'),(11,'launcher_magcore-app-browser',1,'module','2019-07-30 13:12:49','{}'),(12,'launcher_magcore-app-downloads',1,'module','2019-07-30 13:12:49','{}'),(13,'launcher_magcore-app-karaoke',1,'module','2019-07-30 13:12:49','{}'),(14,'launcher_magcore-app-lines',1,'module','2019-07-30 13:12:49','{}'),(15,'launcher_magcore-app-sudoku',1,'module','2019-07-30 13:12:49','{}'),(16,'launcher_magcore-app-memory',1,'module','2019-07-30 13:12:49','{}'),(17,'launcher_magcore-app-2048',1,'module','2019-07-30 13:12:49','{}'),(18,'anecdote',2,'module','2019-07-30 13:13:47','{}'),(19,'audioclub',2,'module','2019-07-30 13:13:47','{}'),(20,'cityinfo',2,'module','2019-07-30 13:13:47','{}'),(21,'game.mastermind',2,'module','2019-07-30 13:13:47','{}'),(22,'horoscope',2,'module','2019-07-30 13:13:47','{}'),(23,'infoportal',2,'module','2019-07-30 13:13:47','{}'),(24,'internet',2,'module','2019-07-30 13:13:47','{}'),(25,'karaoke',2,'module','2019-07-30 13:13:47','{}'),(26,'radio',2,'module','2019-07-30 13:13:47','{}'),(27,'vclub',2,'module','2019-07-30 13:13:47','{}'),(28,'activation_code_auto_issue',6,'option','2019-07-30 13:14:54','{}');
/*!40000 ALTER TABLE `service_in_package` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tariff_plan`
--

DROP TABLE IF EXISTS `tariff_plan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tariff_plan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `external_id` varchar(64) NOT NULL DEFAULT '',
  `name` varchar(64) NOT NULL DEFAULT '',
  `user_default` tinyint(4) DEFAULT '0',
  `days_to_expires` smallint(3) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tariff_plan`
--

LOCK TABLES `tariff_plan` WRITE;
/*!40000 ALTER TABLE `tariff_plan` DISABLE KEYS */;
INSERT INTO `tariff_plan` VALUES (1,'00','Example',1,0);
/*!40000 ALTER TABLE `tariff_plan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `package_in_plan`
--

DROP TABLE IF EXISTS `package_in_plan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `package_in_plan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `package_id` int(11) NOT NULL DEFAULT '0',
  `plan_id` int(11) NOT NULL DEFAULT '0',
  `optional` tinyint(4) DEFAULT '0',
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `package_in_plan`
--

LOCK TABLES `package_in_plan` WRITE;
/*!40000 ALTER TABLE `package_in_plan` DISABLE KEYS */;
INSERT INTO `package_in_plan` VALUES (1,1,1,0,'0000-00-00 00:00:00'),(2,2,1,0,'0000-00-00 00:00:00'),(3,3,1,0,'0000-00-00 00:00:00'),(4,4,1,0,'0000-00-00 00:00:00'),(5,5,1,0,'0000-00-00 00:00:00'),(6,6,1,0,'0000-00-00 00:00:00');
/*!40000 ALTER TABLE `package_in_plan` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-07-30 16:32:49
