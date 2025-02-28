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
-- Table structure for table `goguma_category_info`
--

DROP TABLE IF EXISTS `goguma_category_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `goguma_category_info` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `category_name` varchar(200) DEFAULT '',
  `upd_date` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goguma_category_info`
--

LOCK TABLES `goguma_category_info` WRITE;
/*!40000 ALTER TABLE `goguma_category_info` DISABLE KEYS */;
INSERT INTO `goguma_category_info` VALUES (1,'디지털기기','2025-02-21 15:47:33'),(2,'가구/인테리어','2025-02-21 15:47:33'),(3,'유아동','2025-02-21 15:47:33'),(4,'의류','2025-02-21 15:47:33'),(5,'잡화','2025-02-21 15:47:33'),(6,'생활가전','2025-02-21 15:47:33'),(7,'생활/주방','2025-02-21 15:47:33'),(8,'스포츠/레저','2025-02-21 15:47:33'),(9,'취미/게임/음반','2025-02-21 15:47:33'),(10,'뷰티/미용','2025-02-21 15:47:33'),(11,'식물','2025-02-21 15:47:33'),(12,'식품','2025-02-21 15:47:33'),(13,'반려동물','2025-02-21 15:47:33'),(14,'티켓/교환권','2025-02-21 15:47:33'),(15,'도서','2025-02-21 15:47:33'),(16,'기타','2025-02-21 15:47:33');
/*!40000 ALTER TABLE `goguma_category_info` ENABLE KEYS */;
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
