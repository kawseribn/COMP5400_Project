-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: localhost    Database: test
-- ------------------------------------------------------
-- Server version	8.3.0

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
-- Table structure for table `PAYER_PLAN_PERIOD`
--

DROP TABLE IF EXISTS `PAYER_PLAN_PERIOD`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PAYER_PLAN_PERIOD` (
  `payer_plan_period_id` int NOT NULL,
  `person_id` int NOT NULL,
  `payer_plan_period_start_date` date NOT NULL,
  `payer_plan_period_end_date` date NOT NULL,
  `payer_concept_id` int DEFAULT NULL,
  `payer_source_value` varchar(50) DEFAULT NULL,
  `payer_source_concept_id` int DEFAULT NULL,
  `plan_concept_id` int DEFAULT NULL,
  `plan_source_value` varchar(50) DEFAULT NULL,
  `plan_source_concept_id` int DEFAULT NULL,
  `sponsor_concept_id` int DEFAULT NULL,
  `sponsor_source_value` varchar(50) DEFAULT NULL,
  `sponsor_source_concept_id` int DEFAULT NULL,
  `family_source_value` varchar(50) DEFAULT NULL,
  `stop_reason_concept_id` int DEFAULT NULL,
  `stop_reason_source_value` varchar(50) DEFAULT NULL,
  `stop_reason_source_concept_id` int DEFAULT NULL,
  PRIMARY KEY (`payer_plan_period_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PAYER_PLAN_PERIOD`
--

LOCK TABLES `PAYER_PLAN_PERIOD` WRITE;
/*!40000 ALTER TABLE `PAYER_PLAN_PERIOD` DISABLE KEYS */;
/*!40000 ALTER TABLE `PAYER_PLAN_PERIOD` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-16  1:26:49
