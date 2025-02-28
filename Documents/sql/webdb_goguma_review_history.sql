-- MySQL dump 10.13  Distrib 8.0.40, for macos14 (arm64)
--
-- Host: 192.168.0.61    Database: webdb
-- ------------------------------------------------------
-- Server version	8.0.41

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `goguma_review_history`
--

DROP TABLE IF EXISTS `goguma_review_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `goguma_review_history` (
  `hid` int unsigned NOT NULL AUTO_INCREMENT,
  `seller_uid` int unsigned NOT NULL,
  `buyer_uid` int unsigned NOT NULL,
  `review_content` varchar(1000) DEFAULT NULL,
  `review_point` int unsigned DEFAULT '5000',
  `reward_point` int DEFAULT '100',
  `upd_date` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`hid`),
  KEY `fk_seller_uid_idx` (`buyer_uid`),
  KEY `fk_buyer_uid` (`seller_uid`),
  CONSTRAINT `fk_buyer_uid` FOREIGN KEY (`seller_uid`) REFERENCES `goguma_user` (`uid`),
  CONSTRAINT `fk_seller_uid` FOREIGN KEY (`buyer_uid`) REFERENCES `goguma_user` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goguma_review_history`
--

LOCK TABLES `goguma_review_history` WRITE;
/*!40000 ALTER TABLE `goguma_review_history` DISABLE KEYS */;
INSERT INTO `goguma_review_history` VALUES (1,459,1003,'ㅁㄴㅇㅁㄴㅇ',10000,10,'2025-02-26 20:11:48'),(2,998,1003,'ㅁㄴㅇㄻㄴㅇㄹ',10000,10,'2025-02-26 20:15:53'),(3,998,1003,'ㅁㄴㅇㄹ',10000,10,'2025-02-26 20:16:35'),(4,998,1003,'ㅁㄴㅇ',10000,10,'2025-02-26 20:26:57'),(5,998,1003,'ㅁㄴㅇㅁㄴㅇ',8000,10,'2025-02-26 20:28:31'),(6,123,1003,'dddd',10000,10,'2025-02-27 10:01:09'),(7,1000,1003,'1244',8000,10,'2025-02-27 10:12:55'),(8,1000,998,'asd',10000,10,'2025-02-27 13:14:40'),(9,1000,998,'ㅁㅇㄴㄹ',10000,10,'2025-02-27 14:10:41'),(10,1003,1000,'굿',8000,10,'2025-02-27 19:23:30'),(11,123,1003,'ㄷㄱㅈㅅㅁ',10000,10,'2025-02-27 21:30:50'),(12,1003,1000,'굿',10000,10,'2025-02-27 21:38:59'),(13,123,35,'ㅁㄴㅇ',6000,10,'2025-02-28 11:02:04'),(14,1003,124,'qw',8000,10,'2025-02-28 11:04:10'),(15,412,124,'qwer',4000,10,'2025-02-28 11:06:18'),(16,998,1005,'거래 감사합니다',10000,10,'2025-02-28 15:44:38'),(17,998,1007,'굿',10000,10,'2025-02-28 16:31:32');
/*!40000 ALTER TABLE `goguma_review_history` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-02-28 17:18:56
