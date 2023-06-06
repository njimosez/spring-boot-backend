-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: demo
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `feeding`
--

DROP TABLE IF EXISTS `feeding`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feeding` (
  `feeding_id` int NOT NULL AUTO_INCREMENT,
  `avg_fish_size` double NOT NULL,
  `feed_out` int NOT NULL,
  `feeding_date` date DEFAULT NULL,
  `pellet_size` int NOT NULL,
  `qty_fed` int NOT NULL,
  `times_fed` int NOT NULL,
  `stockid` int DEFAULT NULL,
  PRIMARY KEY (`feeding_id`),
  KEY `FK3rs3uah0eagtnrjg8ixdo5uxb` (`stockid`),
  CONSTRAINT `FK3rs3uah0eagtnrjg8ixdo5uxb` FOREIGN KEY (`stockid`) REFERENCES `stock` (`stock_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feeding`
--

LOCK TABLES `feeding` WRITE;
/*!40000 ALTER TABLE `feeding` DISABLE KEYS */;
/*!40000 ALTER TABLE `feeding` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pond`
--

DROP TABLE IF EXISTS `pond`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pond` (
  `pond_id` int NOT NULL AUTO_INCREMENT,
  `pond_name` varchar(255) DEFAULT NULL,
  `area` double DEFAULT NULL,
  `target_fish_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`pond_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pond`
--

LOCK TABLES `pond` WRITE;
/*!40000 ALTER TABLE `pond` DISABLE KEYS */;
INSERT INTO `pond` VALUES (1,'pond_4',200,'clarias');
/*!40000 ALTER TABLE `pond` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sampling`
--

DROP TABLE IF EXISTS `sampling`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sampling` (
  `sampling_id` int NOT NULL AUTO_INCREMENT,
  `avg_fish_size` double NOT NULL,
  `fish_specy` varchar(255) DEFAULT NULL,
  `sample_date` date DEFAULT NULL,
  `sample_qty` int NOT NULL,
  `target_size` double NOT NULL,
  `total_sample_weight` double NOT NULL,
  `stockid` int DEFAULT NULL,
  PRIMARY KEY (`sampling_id`),
  KEY `FK1ao7fqpyfukgngmnwuqwvam65` (`stockid`),
  CONSTRAINT `FK1ao7fqpyfukgngmnwuqwvam65` FOREIGN KEY (`stockid`) REFERENCES `stock` (`stock_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sampling`
--

LOCK TABLES `sampling` WRITE;
/*!40000 ALTER TABLE `sampling` DISABLE KEYS */;
INSERT INTO `sampling` VALUES (1,344.79,'clarias','2023-05-05',1400,400,482700,1);
/*!40000 ALTER TABLE `sampling` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock`
--

DROP TABLE IF EXISTS `stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stock` (
  `stock_id` int NOT NULL AUTO_INCREMENT,
  `fish_specy` varchar(255) DEFAULT NULL,
  `stock_date` date DEFAULT NULL,
  `total_stock` int NOT NULL,
  `date_emptied` date DEFAULT NULL,
  `mortality` int NOT NULL,
  `stock_remaining` int NOT NULL,
  `pond_id` int DEFAULT NULL,
  PRIMARY KEY (`stock_id`),
  KEY `FKbn61oe9lffauajg1221ilyqdd` (`pond_id`),
  CONSTRAINT `FKbn61oe9lffauajg1221ilyqdd` FOREIGN KEY (`pond_id`) REFERENCES `pond` (`pond_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock`
--

LOCK TABLES `stock` WRITE;
/*!40000 ALTER TABLE `stock` DISABLE KEYS */;
INSERT INTO `stock` VALUES (1,'clarias','2023-05-05',125,NULL,0,125,1);
/*!40000 ALTER TABLE `stock` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-03 16:41:55
