-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: like_figma
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.12-MariaDB-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comments` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` int(11) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `markers`
--

DROP TABLE IF EXISTS `markers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `markers` (
  `marker_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `author_id` int(11) NOT NULL,
  `first_comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`marker_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `markers`
--

LOCK TABLES `markers` WRITE;
/*!40000 ALTER TABLE `markers` DISABLE KEYS */;
/*!40000 ALTER TABLE `markers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `planner_layers`
--

DROP TABLE IF EXISTS `planner_layers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `planner_layers` (
  `id` int(11) NOT NULL,
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `planner_layers`
--

LOCK TABLES `planner_layers` WRITE;
/*!40000 ALTER TABLE `planner_layers` DISABLE KEYS */;
INSERT INTO `planner_layers` VALUES (1,'layer1','Новый слой'),(2,'layer2','Электропроводники');
/*!40000 ALTER TABLE `planner_layers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `planner_objects`
--

DROP TABLE IF EXISTS `planner_objects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `planner_objects` (
  `id` int(11) NOT NULL COMMENT 'Идентификатор',
  `dateCreate` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Дата создания',
  `dateUpdate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Дата последнего редактирования',
  `groupId` int(11) NOT NULL COMMENT 'Идентификатор группы',
  `alias` varchar(100) NOT NULL COMMENT 'Кодовое обозначение',
  `caption` varchar(255) NOT NULL COMMENT 'Название',
  `caption_en` varchar(255) NOT NULL COMMENT 'Название на английском',
  `caption_es` varchar(255) NOT NULL COMMENT 'Название на испанском',
  `caption_fr` varchar(255) NOT NULL COMMENT 'Название на французском',
  `caption_ja` varchar(255) NOT NULL COMMENT 'Название на японском',
  `caption_ar` varchar(255) NOT NULL COMMENT 'Название на арабском',
  `caption_de` varchar(255) NOT NULL COMMENT 'Название на немецком',
  `caption_hi` varchar(255) NOT NULL COMMENT 'Название на хинди',
  `caption_ms` varchar(255) NOT NULL COMMENT 'Название на малайском',
  `caption_pt` varchar(255) NOT NULL COMMENT 'Название на португальском',
  `caption_he` varchar(255) NOT NULL COMMENT 'Название на иврите',
  `caption_zh` varchar(255) NOT NULL COMMENT 'Название на китайском',
  `productCode` varchar(255) DEFAULT NULL,
  `length` float NOT NULL COMMENT 'Длина, м',
  `lengthMin` float NOT NULL DEFAULT 0.1 COMMENT 'Минимальная длина',
  `lengthMax` float NOT NULL DEFAULT 100 COMMENT 'Максимальная длина',
  `width` float NOT NULL COMMENT 'Ширина, м',
  `widthMin` float NOT NULL DEFAULT 0.1 COMMENT 'Минимальная ширина',
  `widthMax` float NOT NULL DEFAULT 100 COMMENT 'Максимальная ширина',
  `height` float NOT NULL COMMENT 'Высота, м',
  `heightMin` float NOT NULL DEFAULT 0.1 COMMENT 'Минимальная высота',
  `heightMax` float NOT NULL DEFAULT 100 COMMENT 'Максимальная высота',
  `weight` float NOT NULL DEFAULT 0 COMMENT 'Вес, кг',
  `canPlaceId` tinyint(4) NOT NULL DEFAULT 1 COMMENT 'Место крепления: 1 - пол, 2 - стены, 3 - потолок',
  `placeRuleId` tinyint(4) DEFAULT NULL COMMENT 'Правило расположения: NULL - Нет правил, 1 - Прикрепить к полу',
  `light` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 - Не является источником света, 1 - Источник света',
  `showSizeInfo` tinyint(4) NOT NULL DEFAULT 1 COMMENT '0 - Не показывать размеры, 1 - Показывать размеры',
  `editSize` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 - Нельзя редактировать размеры, 1 - Можно редактировать размеры',
  `isHole` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 - Не создает дырку, 1 - Создает дырку (в полу, стене, потолку)',
  `animated` tinyint(1) NOT NULL COMMENT 'Наличие анимации',
  `hidden` tinyint(1) NOT NULL COMMENT 'Скрытие',
  `layers` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Объекты';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `planner_objects`
--

LOCK TABLES `planner_objects` WRITE;
/*!40000 ALTER TABLE `planner_objects` DISABLE KEYS */;
INSERT INTO `planner_objects` VALUES (1,'2021-08-10 08:10:51','2021-12-13 07:47:04',60,'straightSofa','Тканевый диван','Fabric sofa','Sofá de tela','Canapé en tissu','布製ソファ','أريكة قماش','Sofa aus Stoff','कपड़ा सोफा','Sofa kain','Sofá de tecido','ספת בד','布藝沙發','RG-000005',1.43,0.1,100,0.76,0.1,100,0.65,0.1,100,0,1,0,0,1,0,0,0,0,1),(2,'2022-11-18 06:42:39','0000-00-00 00:00:00',60,'car','asdf','asdf','asdf','asdf','sadf','adsf','adf','asdf','asdf','asdf','adsf','adf','112',123,0.1,100,123,0.1,100,312,0.1,100,0,1,NULL,0,1,0,0,0,0,1),(3,'2022-11-18 13:13:27','0000-00-00 00:00:00',60,'martin','as','wqer','asdf','sadf','asdf','asdf','asdf','asdf','sdf','df','asdf','asdf','123',123,0.1,100,1,0.1,100,321,0.1,100,0,1,1,0,1,0,0,0,0,2);
/*!40000 ALTER TABLE `planner_objects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projects` (
  `project_id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `author_id` int(11) NOT NULL,
  PRIMARY KEY (`project_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects`
--

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
INSERT INTO `projects` VALUES (1,'2022-12-07',42);
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sub_markers`
--

DROP TABLE IF EXISTS `sub_markers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sub_markers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `marker_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sub_markers`
--

LOCK TABLES `sub_markers` WRITE;
/*!40000 ALTER TABLE `sub_markers` DISABLE KEYS */;
/*!40000 ALTER TABLE `sub_markers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sub_project`
--

DROP TABLE IF EXISTS `sub_project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sub_project` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sub_project`
--

LOCK TABLES `sub_project` WRITE;
/*!40000 ALTER TABLE `sub_project` DISABLE KEYS */;
/*!40000 ALTER TABLE `sub_project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wa_contact`
--

DROP TABLE IF EXISTS `wa_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wa_contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `firstname` varchar(50) NOT NULL DEFAULT '',
  `middlename` varchar(50) NOT NULL DEFAULT '',
  `lastname` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(50) NOT NULL DEFAULT '',
  `company` varchar(150) NOT NULL DEFAULT '',
  `jobtitle` varchar(50) NOT NULL DEFAULT '',
  `company_contact_id` int(11) NOT NULL DEFAULT 0,
  `is_company` tinyint(1) NOT NULL DEFAULT 0,
  `is_user` tinyint(1) NOT NULL DEFAULT 0,
  `login` varchar(32) DEFAULT NULL,
  `password` varchar(128) NOT NULL DEFAULT '',
  `last_datetime` datetime DEFAULT NULL,
  `sex` enum('m','f') DEFAULT NULL,
  `birth_day` tinyint(2) unsigned DEFAULT NULL,
  `birth_month` tinyint(2) unsigned DEFAULT NULL,
  `birth_year` smallint(4) DEFAULT NULL,
  `about` text DEFAULT NULL,
  `photo` int(10) unsigned NOT NULL DEFAULT 0,
  `create_datetime` datetime NOT NULL,
  `create_app_id` varchar(32) NOT NULL DEFAULT '',
  `create_method` varchar(32) NOT NULL DEFAULT '',
  `create_contact_id` int(11) NOT NULL DEFAULT 0,
  `locale` varchar(8) NOT NULL DEFAULT '',
  `timezone` varchar(64) NOT NULL DEFAULT '',
  `crm_vault_id` bigint(20) NOT NULL DEFAULT 0,
  `crm_user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `login` (`login`),
  KEY `name` (`name`),
  KEY `crm_vault` (`crm_vault_id`),
  KEY `crm_user` (`crm_user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wa_contact`
--

LOCK TABLES `wa_contact` WRITE;
/*!40000 ALTER TABLE `wa_contact` DISABLE KEYS */;
INSERT INTO `wa_contact` VALUES (42,'test','test','','','','','',0,0,1,'test','bc6a99722439e196f87','2022-11-07 17:04:55',NULL,NULL,NULL,NULL,NULL,0,'2022-05-24 11:58:07','contacts','add',1,'','',0,NULL);
/*!40000 ALTER TABLE `wa_contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'like_figma'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-07 16:07:52
