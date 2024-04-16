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
-- Table structure for table `cost`
--

DROP TABLE IF EXISTS `cost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cost` (
  `cost_id` int NOT NULL,
  `cost_event_id` int NOT NULL,
  `cost_domain_id` varchar(20) NOT NULL,
  `cost_type_concept_id` int NOT NULL,
  `currency_concept_id` int DEFAULT NULL,
  `total_charge` float DEFAULT NULL,
  `total_cost` float DEFAULT NULL,
  `total_paid` float DEFAULT NULL,
  `paid_by_payer` float DEFAULT NULL,
  `paid_by_patient` float DEFAULT NULL,
  `paid_patient_copay` float DEFAULT NULL,
  `paid_patient_coinsurance` float DEFAULT NULL,
  `paid_patient_deductible` float DEFAULT NULL,
  `paid_by_primary` float DEFAULT NULL,
  `paid_ingredient_cost` float DEFAULT NULL,
  `paid_dispensing_fee` float DEFAULT NULL,
  `payer_plan_period_id` int DEFAULT NULL,
  `amount_allowed` float DEFAULT NULL,
  `revenue_code_concept_id` int DEFAULT NULL,
  `revenue_code_source_value` varchar(50) DEFAULT NULL,
  `drg_concept_id` int DEFAULT NULL,
  `drg_source_value` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`cost_id`),
  KEY `idx_cost_event_id` (`cost_event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cost`
--

LOCK TABLES `cost` WRITE;
/*!40000 ALTER TABLE `cost` DISABLE KEYS */;
/*!40000 ALTER TABLE `cost` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-16  1:26:50
