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
-- Table structure for table `goguma_purchase`
--

DROP TABLE IF EXISTS `goguma_purchase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `goguma_purchase` (
  `id` int NOT NULL AUTO_INCREMENT,
  `seller_uid` int NOT NULL,
  `buyer_uid` int NOT NULL,
  `pid` int NOT NULL,
  `price` int DEFAULT NULL,
  `upd_date` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goguma_purchase`
--

LOCK TABLES `goguma_purchase` WRITE;
/*!40000 ALTER TABLE `goguma_purchase` DISABLE KEYS */;
INSERT INTO `goguma_purchase` VALUES (1,998,1003,999,7426653,'2025-02-26 20:33:08'),(2,1000,1003,1002,100000,'2025-02-26 20:33:51'),(3,123,1003,1004,111111,'2025-02-26 21:01:37'),(4,123,1003,1004,111111,'2025-02-27 10:00:53'),(5,123,1003,1004,111111,'2025-02-27 10:01:02'),(6,1000,1003,1003,100000,'2025-02-27 10:12:52'),(7,1000,998,1005,100000,'2025-02-27 13:14:36'),(8,1000,998,1005,100000,'2025-02-27 14:10:36'),(9,1003,1000,1023,123123123,'2025-02-27 19:23:18'),(10,123,1003,1008,1111,'2025-02-27 21:30:45'),(11,1003,1000,1023,123123123,'2025-02-27 21:38:53'),(12,123,35,1009,5777777,'2025-02-28 11:02:00'),(13,1003,124,1031,1,'2025-02-28 11:03:59'),(14,412,124,1000,141680,'2025-02-28 11:06:14'),(15,1005,1003,1060,200000,'2025-02-28 15:37:20'),(16,998,1005,1049,12000000,'2025-02-28 15:44:26'),(17,998,1007,1059,130000,'2025-02-28 16:31:21');
/*!40000 ALTER TABLE `goguma_purchase` ENABLE KEYS */;
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
