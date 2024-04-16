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
-- Table structure for table `condition_occurrence`
--

DROP TABLE IF EXISTS `condition_occurrence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `condition_occurrence` (
  `condition_occurrence_id` bigint NOT NULL,
  `person_id` int NOT NULL,
  `condition_concept_id` int NOT NULL,
  `condition_start_date` date NOT NULL,
  `condition_start_datetime` datetime DEFAULT NULL,
  `condition_end_date` date DEFAULT NULL,
  `condition_end_datetime` datetime DEFAULT NULL,
  `condition_type_concept_id` int NOT NULL,
  `condition_status_concept_id` int DEFAULT NULL,
  `stop_reason` varchar(20) DEFAULT NULL,
  `provider_id` int DEFAULT NULL,
  `visit_occurrence_id` bigint DEFAULT NULL,
  `visit_detail_id` int DEFAULT NULL,
  `condition_source_value` varchar(50) DEFAULT NULL,
  `condition_source_concept_id` int DEFAULT NULL,
  `condition_status_source_value` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`condition_occurrence_id`),
  KEY `idx_condition_concept_id_1` (`condition_concept_id`),
  KEY `idx_condition_visit_id_1` (`visit_occurrence_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `condition_occurrence`
--

LOCK TABLES `condition_occurrence` WRITE;
/*!40000 ALTER TABLE `condition_occurrence` DISABLE KEYS */;
INSERT INTO `condition_occurrence` VALUES (12000000000000000,1962086,319835,'2018-12-03','2018-12-03 15:32:00',NULL,NULL,44786629,4230359,NULL,NULL,12000000067006497,NULL,'I50.21',45543182,'89100005'),(12000000000170174,1962086,4043371,'2018-12-03','2018-12-03 15:32:00',NULL,NULL,44786629,4230359,NULL,NULL,12000000067006497,NULL,'K52.1',35208271,'89100005'),(12000000000177224,1962086,196152,'2018-12-03','2018-12-03 15:32:00',NULL,NULL,44786629,4230359,NULL,NULL,12000000067006497,NULL,'K65.8',35208323,'89100005'),(12000000000197606,1962086,37110250,'2018-12-03','2018-12-03 15:32:00',NULL,NULL,44786627,4230359,NULL,NULL,12000000067006497,NULL,'I70.245',45548060,'89100005'),(12000000000197610,1962086,317577,'2018-12-03','2018-12-03 15:32:00',NULL,NULL,44786629,4230359,NULL,NULL,12000000067006497,NULL,'I70.268',45567210,'89100005'),(12000000000206700,1962086,197596,'2018-12-03','2018-12-03 15:32:00',NULL,NULL,44786629,4230359,NULL,NULL,12000000067006497,NULL,'K52.1',35208271,'89100005'),(12000000000206702,1962086,193782,'2018-12-03','2018-12-03 15:32:00',NULL,NULL,44786629,4230359,NULL,NULL,12000000067006497,NULL,'N18.6',45548653,'89100005'),(12000000000215368,1962086,4000609,'2018-12-03','2018-12-03 15:32:00',NULL,NULL,44786629,4230359,NULL,NULL,12000000067006497,NULL,'K31.9',35208246,'89100005'),(12000000000218808,1962086,4281826,'2018-12-03','2018-12-03 15:32:00',NULL,NULL,44786629,4230359,NULL,NULL,12000000067006497,NULL,'D72.820',45605380,'89100005'),(12000000000227666,1962086,434004,'2018-12-03','2018-12-03 15:32:00',NULL,NULL,44786629,4230359,NULL,NULL,12000000067006497,NULL,'E87.70',45576480,'89100005');
/*!40000 ALTER TABLE `condition_occurrence` ENABLE KEYS */;
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
