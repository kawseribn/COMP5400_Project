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
-- Table structure for table `procedure_occurrence`
--

DROP TABLE IF EXISTS `procedure_occurrence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `procedure_occurrence` (
  `procedure_occurrence_id` bigint NOT NULL,
  `person_id` int NOT NULL,
  `procedure_concept_id` int NOT NULL,
  `procedure_date` date NOT NULL,
  `procedure_datetime` datetime DEFAULT NULL,
  `procedure_end_date` date DEFAULT NULL,
  `procedure_end_datetime` datetime DEFAULT NULL,
  `procedure_type_concept_id` int NOT NULL,
  `modifier_concept_id` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `provider_id` int DEFAULT NULL,
  `visit_occurrence_id` bigint DEFAULT NULL,
  `visit_detail_id` int DEFAULT NULL,
  `procedure_source_value` varchar(50) DEFAULT NULL,
  `procedure_source_concept_id` int DEFAULT NULL,
  `modifier_source_value` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`procedure_occurrence_id`),
  KEY `idx_procedure_concept_id_1` (`procedure_concept_id`),
  KEY `idx_procedure_visit_id_1` (`visit_occurrence_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `procedure_occurrence`
--

LOCK TABLES `procedure_occurrence` WRITE;
/*!40000 ALTER TABLE `procedure_occurrence` DISABLE KEYS */;
INSERT INTO `procedure_occurrence` VALUES (12000000000010823,1962086,2746773,'2018-11-17','2018-11-16 18:00:00',NULL,NULL,42865905,0,NULL,NULL,12000000067006497,NULL,'0DB68ZX',2746773,'No matching concept'),(12000000000011294,1962086,2746520,'2018-11-17','2018-11-16 18:00:00',NULL,NULL,42865905,0,NULL,NULL,12000000067006497,NULL,'0DB18ZX',2746520,'No matching concept'),(12000000000024589,1962086,2747274,'2018-11-17','2018-11-16 18:00:00',NULL,NULL,42865905,0,NULL,NULL,12000000067006497,NULL,'0DBK8ZX',2747274,'No matching concept'),(12000000000026569,1962086,2747017,'2018-11-17','2018-11-16 18:00:00',NULL,NULL,42865905,0,NULL,NULL,12000000067006497,NULL,'0DBB8ZX',2747017,'No matching concept'),(12000000000030568,1962086,2732505,'2018-11-28','2018-11-27 18:00:00',NULL,NULL,42865905,0,NULL,NULL,12000000067006497,NULL,'047Q3ZZ',2732505,'No matching concept'),(12000000000033870,1962086,4302381,'2018-12-03','2018-12-03 15:32:00',NULL,NULL,44786629,0,NULL,NULL,12000000067006497,NULL,'Z78.1',45581073,'No matching concept'),(12000000000033924,1962086,2746803,'2018-11-17','2018-11-16 18:00:00',NULL,NULL,42865905,0,NULL,NULL,12000000067006497,NULL,'0DB98ZX',2746803,'No matching concept'),(12000000000037872,1962086,2788126,'2018-11-28','2018-11-27 18:00:00',NULL,NULL,42865905,0,NULL,NULL,12000000067006497,NULL,'B41FYZZ',2788126,'No matching concept'),(12000000000043552,1962086,2788717,'2018-11-30','2018-11-29 18:00:00',NULL,NULL,42865905,0,NULL,NULL,12000000067006497,NULL,'30233N1',2788717,'No matching concept'),(12000000000058054,1962086,2749338,'2018-12-03','2018-12-02 18:00:00',NULL,NULL,42865905,0,NULL,NULL,12000000067006497,NULL,'0DJW4ZZ',2749338,'No matching concept');
/*!40000 ALTER TABLE `procedure_occurrence` ENABLE KEYS */;
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