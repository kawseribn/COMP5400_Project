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
-- Table structure for table `concept`
--

DROP TABLE IF EXISTS `concept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `concept` (
  `concept_id` int NOT NULL,
  `concept_name` varchar(255) NOT NULL,
  `domain_id` varchar(20) NOT NULL,
  `vocabulary_id` varchar(20) NOT NULL,
  `concept_class_id` varchar(20) NOT NULL,
  `standard_concept` varchar(1) DEFAULT NULL,
  `concept_code` varchar(50) NOT NULL,
  `valid_start_date` date NOT NULL,
  `valid_end_date` date NOT NULL,
  `invalid_reason` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`concept_id`),
  KEY `idx_concept_code` (`concept_code`),
  KEY `idx_concept_vocabluary_id` (`vocabulary_id`),
  KEY `idx_concept_domain_id` (`domain_id`),
  KEY `idx_concept_class_id` (`concept_class_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `concept`
--

LOCK TABLES `concept` WRITE;
/*!40000 ALTER TABLE `concept` DISABLE KEYS */;
INSERT INTO `concept` VALUES (9202,'Outpatient Visit','Visit','Visit','Visit','S','OP','1970-01-01','2099-12-31',NULL),(903096,'PMI: Skip','Observation','PPI','Answer','S','PMI_Skip','2017-04-24','2099-12-31',NULL),(3041473,'Sodium [Moles/volume] in Venous blood','Measurement','LOINC','Lab Test','S','39791-9','2005-03-14','2099-12-31',NULL),(4119499,'Not for resuscitation','Observation','SNOMED','Clinical Finding','S','304253006','2002-01-31','2099-12-31',NULL),(42708201,'budesonide 3 MG Delayed Release Oral Capsule','Drug','RxNorm','Clinical Drug','S','1244214','2012-05-07','2099-12-31',NULL),(44908056,'CONTOUR NEXT STRIPS','Device','NDC','Device','S','193731221','2013-08-05','2099-12-31',NULL);
/*!40000 ALTER TABLE `concept` ENABLE KEYS */;
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
