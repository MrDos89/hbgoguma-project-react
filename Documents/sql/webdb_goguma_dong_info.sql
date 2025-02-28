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
-- Table structure for table `goguma_dong_info`
--

DROP TABLE IF EXISTS `goguma_dong_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `goguma_dong_info` (
  `dong_id` int unsigned NOT NULL AUTO_INCREMENT,
  `dong_name` varchar(500) DEFAULT NULL,
  `upd_date` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`dong_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goguma_dong_info`
--

LOCK TABLES `goguma_dong_info` WRITE;
/*!40000 ALTER TABLE `goguma_dong_info` DISABLE KEYS */;
INSERT INTO `goguma_dong_info` VALUES (1,'개포1동','2025-02-20 17:04:40'),(2,'개포2동','2025-02-20 17:04:40'),(3,'개포3동','2025-02-20 17:04:40'),(4,'개포4동','2025-02-20 17:04:40'),(5,'논현1동','2025-02-20 17:04:40'),(6,'논현2동','2025-02-20 17:04:40'),(7,'대치1동','2025-02-20 17:04:40'),(8,'대치2동','2025-02-20 17:04:40'),(9,'대치4동','2025-02-20 17:04:40'),(10,'도곡1동','2025-02-20 17:04:40'),(11,'도곡2동','2025-02-20 17:04:40'),(12,'삼성1동','2025-02-20 17:04:40'),(13,'삼성2동','2025-02-20 17:04:40'),(14,'세곡동','2025-02-20 17:04:40'),(15,'수서동','2025-02-20 17:04:40'),(16,'신사동','2025-02-20 17:04:40'),(17,'압구정동','2025-02-20 17:04:40'),(18,'역삼1동','2025-02-20 17:04:40'),(19,'역삼2동','2025-02-20 17:04:40'),(20,'일원1동','2025-02-20 17:04:40'),(21,'일원본동','2025-02-20 17:04:40'),(22,'청담동','2025-02-20 17:04:40'),(23,'내곡동','2025-02-20 17:04:40'),(24,'반포1동','2025-02-20 17:04:40'),(25,'반포2동','2025-02-20 17:04:40'),(26,'반포3동','2025-02-20 17:04:40'),(27,'반포4동','2025-02-20 17:04:40'),(28,'반포본동','2025-02-20 17:04:40'),(29,'방배1동','2025-02-20 17:04:40'),(30,'방배2동','2025-02-20 17:04:40'),(31,'방배3동','2025-02-20 17:04:40'),(32,'방배4동','2025-02-20 17:04:40'),(33,'방배본동','2025-02-20 17:04:40'),(34,'서초1동','2025-02-20 17:04:40'),(35,'서초2동','2025-02-20 17:04:40'),(36,'서초3동','2025-02-20 17:04:40'),(37,'서초4동','2025-02-20 17:04:40'),(38,'양재1동','2025-02-20 17:04:40'),(39,'양재2동','2025-02-20 17:04:40'),(40,'잠원동','2025-02-20 17:04:40');
/*!40000 ALTER TABLE `goguma_dong_info` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-02-28 17:18:55
