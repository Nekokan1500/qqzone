-- MariaDB dump 10.19  Distrib 10.4.28-MariaDB, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: test
-- ------------------------------------------------------
-- Server version	10.4.28-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `test`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `test` /*!40100 DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci */;

USE `test`;

--
-- Table structure for table `flyway_fe0602b5ee93ecf4e29ff67756ee3011_schema_version`
--

DROP TABLE IF EXISTS `flyway_fe0602b5ee93ecf4e29ff67756ee3011_schema_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flyway_fe0602b5ee93ecf4e29ff67756ee3011_schema_version` (
  `installed_rank` int(11) NOT NULL,
  `version` varchar(50) DEFAULT NULL,
  `description` varchar(200) NOT NULL,
  `type` varchar(20) NOT NULL,
  `script` varchar(1000) NOT NULL,
  `checksum` int(11) DEFAULT NULL,
  `installed_by` varchar(100) NOT NULL,
  `installed_on` timestamp NOT NULL DEFAULT current_timestamp(),
  `execution_time` int(11) NOT NULL,
  `success` tinyint(1) NOT NULL,
  PRIMARY KEY (`installed_rank`),
  KEY `flyway_fe0602b5ee93ecf4e29ff67756ee3011_schema_version_s_idx` (`success`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flyway_fe0602b5ee93ecf4e29ff67756ee3011_schema_version`
--

LOCK TABLES `flyway_fe0602b5ee93ecf4e29ff67756ee3011_schema_version` WRITE;
/*!40000 ALTER TABLE `flyway_fe0602b5ee93ecf4e29ff67756ee3011_schema_version` DISABLE KEYS */;
INSERT INTO `flyway_fe0602b5ee93ecf4e29ff67756ee3011_schema_version` VALUES (1,'1.0','schema','SQL','test_v1.0__schema.sql',696010588,'root','2024-02-27 23:11:15',5,1),(2,'1.1','user data','SQL','test_v1.1__user_data.sql',-1338003370,'root','2024-02-27 23:11:15',1,1),(3,'2.0','schema','SQL','test_v2.0__schema.sql',346098518,'root','2024-02-27 23:11:15',250,1),(4,'2.1','user data','SQL','test_v2.1__user_data.sql',-726860914,'root','2024-02-27 23:11:15',0,1);
/*!40000 ALTER TABLE `flyway_fe0602b5ee93ecf4e29ff67756ee3011_schema_version` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_author_reply`
--

DROP TABLE IF EXISTS `t_author_reply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_author_reply` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) DEFAULT NULL,
  `authorReplyDate` date DEFAULT NULL,
  `authorId` int(11) DEFAULT NULL,
  `replyId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_t_author_reply_replyIQEi3m` (`replyId`,`authorId`),
  KEY `FK_t_author_reply_TO_t_urRKVi` (`authorId`),
  CONSTRAINT `FK_t_author_reply_TO_t_urRKVi` FOREIGN KEY (`authorId`) REFERENCES `t_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_author_reply`
--

LOCK TABLES `t_author_reply` WRITE;
/*!40000 ALTER TABLE `t_author_reply` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_author_reply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_friend`
--

DROP TABLE IF EXISTS `t_friend`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_friend` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `fid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_t_friend_TO_t_user_uid_id` (`uid`),
  CONSTRAINT `FK_t_friend_TO_t_user_uid_id` FOREIGN KEY (`uid`) REFERENCES `t_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_friend`
--

LOCK TABLES `t_friend` WRITE;
/*!40000 ALTER TABLE `t_friend` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_friend` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_reply`
--

DROP TABLE IF EXISTS `t_reply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_reply` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) DEFAULT NULL,
  `replyDate` date DEFAULT NULL,
  `authorId` int(11) DEFAULT NULL,
  `topicId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_t_reply_TO_t_user_autK9xBP` (`authorId`),
  KEY `FK_t_reply_TO_t_topic_toRdVkY` (`topicId`),
  CONSTRAINT `FK_t_reply_TO_t_topic_toRdVkY` FOREIGN KEY (`topicId`) REFERENCES `t_topic` (`id`),
  CONSTRAINT `FK_t_reply_TO_t_user_autK9xBP` FOREIGN KEY (`authorId`) REFERENCES `t_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_reply`
--

LOCK TABLES `t_reply` WRITE;
/*!40000 ALTER TABLE `t_reply` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_reply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_topic`
--

DROP TABLE IF EXISTS `t_topic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_topic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `topicDate` date DEFAULT NULL,
  `authorId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_t_topic_TO_t_user_aut56gUJ` (`authorId`),
  CONSTRAINT `FK_t_topic_TO_t_user_aut56gUJ` FOREIGN KEY (`authorId`) REFERENCES `t_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_topic`
--

LOCK TABLES `t_topic` WRITE;
/*!40000 ALTER TABLE `t_topic` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_topic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_user`
--

DROP TABLE IF EXISTS `t_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `loginId` varchar(255) DEFAULT NULL,
  `nickName` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_user`
--

LOCK TABLES `t_user` WRITE;
/*!40000 ALTER TABLE `t_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_user_detail`
--

DROP TABLE IF EXISTS `t_user_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_user_detail` (
  `id` int(11) NOT NULL,
  `firstName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `zodiac` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK_t_user_detail_TO_t_usKU4ZM` FOREIGN KEY (`id`) REFERENCES `t_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_user_detail`
--

LOCK TABLES `t_user_detail` WRITE;
/*!40000 ALTER TABLE `t_user_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_user_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'test'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-27 23:11:32
