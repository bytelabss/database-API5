-- MySQL dump 10.13  Distrib 9.0.1, for Linux (x86_64)
--
-- Host: localhost    Database: dataviz_bytelabss
-- ------------------------------------------------------
-- Server version	9.0.1

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
-- Table structure for table `custom_queries`
--

DROP TABLE IF EXISTS `custom_queries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `custom_queries` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `query` json NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  CONSTRAINT `custom_queries_chk_1` CHECK (json_valid(`query`))
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_queries`
--

LOCK TABLES `custom_queries` WRITE;
/*!40000 ALTER TABLE `custom_queries` DISABLE KEYS */;
INSERT INTO `custom_queries` VALUES (3,'{\"from\": \"fatec.bytelabss.api.models.DimCandidato\", \"limit\": 10, \"fields\": [\"idCandidato\", \"nomeCandidato\"], \"groupBy\": [\"nomeCandidato\"], \"conditions\": [{\"field\": \"nomeCandidato\", \"value\": \"%John%\", \"operator\": \"LIKE\"}], \"orderByField\": \"idCandidato\", \"orderByDirection\": \"ASC\"}','Find candidates with John in their name','2024-10-31 15:00:00','2024-11-01 01:30:58'),(4,'{\"from\": \"fatec.bytelabss.api.models.DimCandidato\", \"limit\": 10, \"fields\": [\"idCandidato\", \"nomeCandidato\"], \"groupBy\": [\"nomeCandidato\"], \"conditions\": [{\"field\": \"idCandidato\", \"value\": \"0\", \"operator\": \">=\"}], \"orderByField\": \"idCandidato\", \"orderByDirection\": \"ASC\"}','Find candidates',NULL,'2024-11-01 01:32:29');
/*!40000 ALTER TABLE `custom_queries` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-01 21:10:22
