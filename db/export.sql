-- MySQL dump 10.13  Distrib 8.0.36, for Linux (x86_64)
--
-- Host: localhost    Database: rails_de_development
-- ------------------------------------------------------
-- Server version	8.0.36-0ubuntu0.22.04.1

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
-- Table structure for table `ar_internal_metadata`
--

DROP TABLE IF EXISTS `ar_internal_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ar_internal_metadata` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ar_internal_metadata`
--

LOCK TABLES `ar_internal_metadata` WRITE;
/*!40000 ALTER TABLE `ar_internal_metadata` DISABLE KEYS */;
INSERT INTO `ar_internal_metadata` VALUES ('environment','development','2024-02-28 20:27:23.792861','2024-02-28 20:27:23.792866');
/*!40000 ALTER TABLE `ar_internal_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notes`
--

DROP TABLE IF EXISTS `notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notes` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `content` text,
  `level` int DEFAULT NULL,
  `datetime` datetime(6) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notes`
--

LOCK TABLES `notes` WRITE;
/*!40000 ALTER TABLE `notes` DISABLE KEYS */;
INSERT INTO `notes` VALUES (1,'test','content',1,'2024-02-28 22:27:00.000000','2024-02-28 20:27:51.067050','2024-02-28 20:27:51.067050'),(2,'title','content',42,NULL,'2024-02-29 20:52:22.535978','2024-02-29 20:52:22.535982'),(3,'title','content',43,'2024-02-29 20:56:47.017007','2024-02-29 20:56:47.017011','2024-02-29 20:56:47.017012'),(4,'title','content',53,'2024-02-29 21:04:46.824761','2024-02-29 21:04:46.824765','2024-02-29 21:04:46.824766'),(5,'title','content',173,'2024-02-29 21:12:41.530647','2024-02-29 21:12:41.530652','2024-02-29 21:12:41.530652'),(6,'title.1','CONTENT: 1000',1,'2024-03-01 20:01:46.420969','2024-03-01 20:01:46.420969','2024-03-01 20:01:46.420969'),(7,'title.2','CONTENT: 2000',2,'2024-03-01 20:01:46.421498','2024-03-01 20:01:46.421498','2024-03-01 20:01:46.421498'),(8,'title.1','CONTENT: 1000',1,'2024-03-01 20:02:15.284623','2024-03-01 20:02:15.284623','2024-03-01 20:02:15.284623'),(9,'title.2','CONTENT: 2000',2,'2024-03-01 20:02:15.285008','2024-03-01 20:02:15.285008','2024-03-01 20:02:15.285008'),(10,'title.3','CONTENT: 3000',3,'2024-03-01 20:02:15.285411','2024-03-01 20:02:15.285411','2024-03-01 20:02:15.285411'),(11,'title.4','CONTENT: 4000',4,'2024-03-01 20:02:15.285757','2024-03-01 20:02:15.285757','2024-03-01 20:02:15.285757'),(12,'title.5','CONTENT: 5000',5,'2024-03-01 20:02:15.285976','2024-03-01 20:02:15.285976','2024-03-01 20:02:15.285976'),(13,'title.6','CONTENT: 6000',6,'2024-03-01 20:02:15.286185','2024-03-01 20:02:15.286185','2024-03-01 20:02:15.286185'),(14,'title.7','CONTENT: 7000',7,'2024-03-01 20:02:15.286401','2024-03-01 20:02:15.286401','2024-03-01 20:02:15.286401');
/*!40000 ALTER TABLE `notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20240228202709'),('20240229202603'),('20240301170346');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-01 21:19:31
