-- MySQL dump 10.13  Distrib 8.3.0, for macos14.2 (arm64)
--
-- Host: localhost    Database: test
-- ------------------------------------------------------
-- Server version	8.3.0

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
-- Table structure for table `CARE_SITE`
--

DROP TABLE IF EXISTS `CARE_SITE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CARE_SITE` (
  `care_site_id` int NOT NULL,
  `care_site_name` varchar(255) DEFAULT NULL,
  `place_of_service_concept_id` int DEFAULT NULL,
  `location_id` int DEFAULT NULL,
  `care_site_source_value` varchar(50) DEFAULT NULL,
  `place_of_service_source_value` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`care_site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CARE_SITE`
--

LOCK TABLES `CARE_SITE` WRITE;
/*!40000 ALTER TABLE `CARE_SITE` DISABLE KEYS */;
/*!40000 ALTER TABLE `CARE_SITE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CDM_SOURCE`
--

DROP TABLE IF EXISTS `CDM_SOURCE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CDM_SOURCE` (
  `cdm_source_name` varchar(255) NOT NULL,
  `cdm_source_abbreviation` varchar(25) NOT NULL,
  `cdm_holder` varchar(255) NOT NULL,
  `source_description` varchar(255) DEFAULT NULL,
  `source_documentation_reference` varchar(255) DEFAULT NULL,
  `cdm_etl_reference` varchar(255) DEFAULT NULL,
  `source_release_date` date NOT NULL,
  `cdm_release_date` date NOT NULL,
  `cdm_version` varchar(10) DEFAULT NULL,
  `cdm_version_concept_id` int NOT NULL,
  `vocabulary_version` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CDM_SOURCE`
--

LOCK TABLES `CDM_SOURCE` WRITE;
/*!40000 ALTER TABLE `CDM_SOURCE` DISABLE KEYS */;
/*!40000 ALTER TABLE `CDM_SOURCE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `COHORT`
--

DROP TABLE IF EXISTS `COHORT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `COHORT` (
  `cohort_definition_id` int NOT NULL,
  `subject_id` int NOT NULL,
  `cohort_start_date` date NOT NULL,
  `cohort_end_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `COHORT`
--

LOCK TABLES `COHORT` WRITE;
/*!40000 ALTER TABLE `COHORT` DISABLE KEYS */;
/*!40000 ALTER TABLE `COHORT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `COHORT_DEFINITION`
--

DROP TABLE IF EXISTS `COHORT_DEFINITION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `COHORT_DEFINITION` (
  `cohort_definition_id` int NOT NULL,
  `cohort_definition_name` varchar(255) NOT NULL,
  `cohort_definition_description` varchar(255) DEFAULT NULL,
  `definition_type_concept_id` int NOT NULL,
  `cohort_definition_syntax` varchar(255) DEFAULT NULL,
  `subject_concept_id` int NOT NULL,
  `cohort_initiation_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `COHORT_DEFINITION`
--

LOCK TABLES `COHORT_DEFINITION` WRITE;
/*!40000 ALTER TABLE `COHORT_DEFINITION` DISABLE KEYS */;
/*!40000 ALTER TABLE `COHORT_DEFINITION` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `concept_ancestor`
--

DROP TABLE IF EXISTS `concept_ancestor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `concept_ancestor` (
  `ancestor_concept_id` int NOT NULL,
  `descendant_concept_id` int NOT NULL,
  `min_levels_of_separation` int NOT NULL,
  `max_levels_of_separation` int NOT NULL,
  KEY `idx_concept_ancestor_id_2` (`descendant_concept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `concept_ancestor`
--

LOCK TABLES `concept_ancestor` WRITE;
/*!40000 ALTER TABLE `concept_ancestor` DISABLE KEYS */;
/*!40000 ALTER TABLE `concept_ancestor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CONCEPT_CLASS`
--

DROP TABLE IF EXISTS `CONCEPT_CLASS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CONCEPT_CLASS` (
  `concept_class_id` varchar(20) NOT NULL,
  `concept_class_name` varchar(255) NOT NULL,
  `concept_class_concept_id` int NOT NULL,
  PRIMARY KEY (`concept_class_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CONCEPT_CLASS`
--

LOCK TABLES `CONCEPT_CLASS` WRITE;
/*!40000 ALTER TABLE `CONCEPT_CLASS` DISABLE KEYS */;
/*!40000 ALTER TABLE `CONCEPT_CLASS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `concept_relationship`
--

DROP TABLE IF EXISTS `concept_relationship`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `concept_relationship` (
  `concept_id_1` int NOT NULL,
  `concept_id_2` int NOT NULL,
  `relationship_id` varchar(20) NOT NULL,
  `valid_start_date` date NOT NULL,
  `valid_end_date` date NOT NULL,
  `invalid_reason` varchar(1) DEFAULT NULL,
  KEY `idx_concept_relationship_id_2` (`concept_id_2`),
  KEY `idx_concept_relationship_id_3` (`relationship_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `concept_relationship`
--

LOCK TABLES `concept_relationship` WRITE;
/*!40000 ALTER TABLE `concept_relationship` DISABLE KEYS */;
/*!40000 ALTER TABLE `concept_relationship` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CONCEPT_SYNONYM`
--

DROP TABLE IF EXISTS `CONCEPT_SYNONYM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CONCEPT_SYNONYM` (
  `concept_id` int NOT NULL,
  `concept_synonym_name` varchar(1000) NOT NULL,
  `language_concept_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CONCEPT_SYNONYM`
--

LOCK TABLES `CONCEPT_SYNONYM` WRITE;
/*!40000 ALTER TABLE `CONCEPT_SYNONYM` DISABLE KEYS */;
/*!40000 ALTER TABLE `CONCEPT_SYNONYM` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `condition_era`
--

DROP TABLE IF EXISTS `condition_era`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `condition_era` (
  `condition_era_id` int NOT NULL,
  `person_id` int NOT NULL,
  `condition_concept_id` int NOT NULL,
  `condition_era_start_date` datetime NOT NULL,
  `condition_era_end_date` datetime NOT NULL,
  `condition_occurrence_count` int DEFAULT NULL,
  PRIMARY KEY (`condition_era_id`),
  KEY `idx_condition_era_concept_id_1` (`condition_concept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `condition_era`
--

LOCK TABLES `condition_era` WRITE;
/*!40000 ALTER TABLE `condition_era` DISABLE KEYS */;
/*!40000 ALTER TABLE `condition_era` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `DEATH`
--

DROP TABLE IF EXISTS `DEATH`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DEATH` (
  `person_id` int NOT NULL,
  `death_date` date NOT NULL,
  `death_datetime` datetime DEFAULT NULL,
  `death_type_concept_id` int DEFAULT NULL,
  `cause_concept_id` int DEFAULT NULL,
  `cause_source_value` varchar(50) DEFAULT NULL,
  `cause_source_concept_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DEATH`
--

LOCK TABLES `DEATH` WRITE;
/*!40000 ALTER TABLE `DEATH` DISABLE KEYS */;
/*!40000 ALTER TABLE `DEATH` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `device_exposure`
--

DROP TABLE IF EXISTS `device_exposure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `device_exposure` (
  `device_exposure_id` bigint NOT NULL,
  `person_id` int NOT NULL,
  `device_concept_id` int NOT NULL,
  `device_exposure_start_date` date NOT NULL,
  `device_exposure_start_datetime` datetime DEFAULT NULL,
  `device_exposure_end_date` date DEFAULT NULL,
  `device_exposure_end_datetime` datetime DEFAULT NULL,
  `device_type_concept_id` int NOT NULL,
  `unique_device_id` varchar(255) DEFAULT NULL,
  `production_id` varchar(255) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `provider_id` int DEFAULT NULL,
  `visit_occurrence_id` bigint DEFAULT NULL,
  `visit_detail_id` int DEFAULT NULL,
  `device_source_value` varchar(50) DEFAULT NULL,
  `device_source_concept_id` int DEFAULT NULL,
  `unit_concept_id` int DEFAULT NULL,
  `unit_source_value` varchar(50) DEFAULT NULL,
  `unit_source_concept_id` int DEFAULT NULL,
  PRIMARY KEY (`device_exposure_id`),
  KEY `idx_device_concept_id_1` (`device_concept_id`),
  KEY `idx_device_visit_id_1` (`visit_occurrence_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `device_exposure`
--

LOCK TABLES `device_exposure` WRITE;
/*!40000 ALTER TABLE `device_exposure` DISABLE KEYS */;
INSERT INTO `device_exposure` VALUES (33000000000189640,1061241,4224038,'2021-04-06','2021-04-06 04:00:00','2021-04-11','2021-04-11 18:39:00',32817,NULL,NULL,NULL,NULL,33000000053446476,NULL,'336623009.0',4224038,NULL,NULL,NULL),(33000000000240287,1061241,4224038,'2021-06-29','2021-06-29 12:25:00',NULL,NULL,32817,NULL,NULL,NULL,NULL,NULL,NULL,'336623009.0',4224038,NULL,NULL,NULL),(33000000000428231,1061241,4224038,'2021-06-29','2021-06-29 13:20:00',NULL,NULL,32817,NULL,NULL,NULL,NULL,33000000052281040,NULL,'336623009.0',4224038,NULL,NULL,NULL),(33000000000490287,1061241,4097216,'2021-04-05','2021-04-05 15:18:00','2021-04-05','2021-04-04 21:04:00',32817,NULL,NULL,NULL,NULL,33000000053446476,NULL,NULL,NULL,NULL,NULL,NULL),(52000000000005144,3483034,44844102,'2020-04-11','2020-04-10 23:00:00','2021-08-08','2021-08-08 16:16:00',0,NULL,NULL,NULL,NULL,NULL,NULL,'11917013417.0',44844102,NULL,NULL,NULL),(52000000000005145,3483034,44844102,'2021-09-18','2021-09-18 00:00:00',NULL,NULL,0,NULL,NULL,100,NULL,NULL,NULL,'11917013417.0',44844102,NULL,NULL,NULL),(52000000000012375,3483034,44908056,'2016-07-14','2016-07-14 05:34:21','2016-10-12','2016-10-12 05:34:21',0,NULL,NULL,100,NULL,33000000014132612,NULL,'193731221.0',44908056,NULL,NULL,NULL),(52000000000012376,3483034,44908056,'2016-07-14','2016-07-14 19:15:25','2016-10-12','2016-10-12 19:15:25',0,NULL,NULL,100,NULL,33000000014132612,NULL,'193731221.0',44908056,NULL,NULL,NULL);
/*!40000 ALTER TABLE `device_exposure` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DOMAIN`
--

DROP TABLE IF EXISTS `DOMAIN`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DOMAIN` (
  `domain_id` varchar(20) NOT NULL,
  `domain_name` varchar(255) NOT NULL,
  `domain_concept_id` int NOT NULL,
  PRIMARY KEY (`domain_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DOMAIN`
--

LOCK TABLES `DOMAIN` WRITE;
/*!40000 ALTER TABLE `DOMAIN` DISABLE KEYS */;
/*!40000 ALTER TABLE `DOMAIN` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dose_era`
--

DROP TABLE IF EXISTS `dose_era`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dose_era` (
  `dose_era_id` int NOT NULL,
  `person_id` int NOT NULL,
  `drug_concept_id` int NOT NULL,
  `unit_concept_id` int NOT NULL,
  `dose_value` float NOT NULL,
  `dose_era_start_date` datetime NOT NULL,
  `dose_era_end_date` datetime NOT NULL,
  PRIMARY KEY (`dose_era_id`),
  KEY `idx_dose_era_concept_id_1` (`drug_concept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dose_era`
--

LOCK TABLES `dose_era` WRITE;
/*!40000 ALTER TABLE `dose_era` DISABLE KEYS */;
/*!40000 ALTER TABLE `dose_era` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `drug_era`
--

DROP TABLE IF EXISTS `drug_era`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drug_era` (
  `drug_era_id` int NOT NULL,
  `person_id` int NOT NULL,
  `drug_concept_id` int NOT NULL,
  `drug_era_start_date` datetime NOT NULL,
  `drug_era_end_date` datetime NOT NULL,
  `drug_exposure_count` int DEFAULT NULL,
  `gap_days` int DEFAULT NULL,
  PRIMARY KEY (`drug_era_id`),
  KEY `idx_drug_era_concept_id_1` (`drug_concept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drug_era`
--

LOCK TABLES `drug_era` WRITE;
/*!40000 ALTER TABLE `drug_era` DISABLE KEYS */;
/*!40000 ALTER TABLE `drug_era` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `drug_exposure`
--

DROP TABLE IF EXISTS `drug_exposure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drug_exposure` (
  `drug_exposure_id` bigint NOT NULL,
  `person_id` int NOT NULL,
  `drug_concept_id` int NOT NULL,
  `drug_exposure_start_date` date NOT NULL,
  `drug_exposure_start_datetime` datetime DEFAULT NULL,
  `drug_exposure_end_date` date DEFAULT NULL,
  `drug_exposure_end_datetime` datetime DEFAULT NULL,
  `verbatim_end_date` date DEFAULT NULL,
  `drug_type_concept_id` int NOT NULL,
  `stop_reason` varchar(20) DEFAULT NULL,
  `refills` int DEFAULT NULL,
  `quantity` float DEFAULT NULL,
  `days_supply` int DEFAULT NULL,
  `sig` varchar(255) DEFAULT NULL,
  `route_concept_id` int DEFAULT NULL,
  `lot_number` varchar(50) DEFAULT NULL,
  `provider_id` int DEFAULT NULL,
  `visit_occurrence_id` bigint DEFAULT NULL,
  `visit_detail_id` int DEFAULT NULL,
  `drug_source_value` varchar(50) DEFAULT NULL,
  `drug_source_concept_id` int DEFAULT NULL,
  `route_source_value` varchar(50) DEFAULT NULL,
  `dose_unit_source_value` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`drug_exposure_id`),
  KEY `idx_drug_concept_id_1` (`drug_concept_id`),
  KEY `idx_drug_visit_id_1` (`visit_occurrence_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drug_exposure`
--

LOCK TABLES `drug_exposure` WRITE;
/*!40000 ALTER TABLE `drug_exposure` DISABLE KEYS */;
INSERT INTO `drug_exposure` VALUES (12000000000156714,1962086,19072176,'2018-11-13','2018-11-12 18:00:00',NULL,NULL,NULL,38000180,NULL,NULL,40.6,NULL,NULL,4132161,NULL,NULL,12000000067006497,NULL,'307675',19072176,'26643006',NULL),(12000000000156731,1962086,19079524,'2018-11-14','2018-11-13 18:00:00',NULL,NULL,NULL,38000180,NULL,NULL,306,NULL,NULL,4171047,NULL,NULL,12000000067006497,NULL,'313002',19079524,'47625008',NULL),(12000000000156742,1962086,19049106,'2018-11-16','2018-11-15 18:00:00',NULL,NULL,NULL,38000180,NULL,NULL,6,NULL,NULL,4132161,NULL,NULL,12000000067006497,NULL,'198116',19049106,'26643006',NULL),(12000000000156757,1962086,19127952,'2018-11-17','2018-11-16 18:00:00',NULL,NULL,NULL,38000180,NULL,NULL,4,NULL,NULL,4132161,NULL,NULL,12000000067006497,NULL,'749206',19127952,'26643006',NULL),(12000000000156766,1962086,19130823,'2018-11-18','2018-11-17 18:00:00',NULL,NULL,NULL,38000180,NULL,NULL,20000,NULL,NULL,4243022,NULL,NULL,12000000067006497,NULL,'800472',19130823,'38239002',NULL),(12000000000156786,1962086,1127433,'2018-11-19','2018-11-18 18:00:00',NULL,NULL,NULL,38000180,NULL,NULL,4,NULL,NULL,4132161,NULL,NULL,12000000067006497,NULL,'313782',1127433,'26643006',NULL),(12000000000156828,1962086,40167259,'2018-11-23','2018-11-22 18:00:00',NULL,NULL,NULL,38000180,NULL,NULL,1,NULL,NULL,4132161,NULL,NULL,12000000067006497,NULL,'876193',40167259,'26643006',NULL),(12000000000156881,1962086,19073526,'2018-11-27','2018-11-26 18:00:00',NULL,NULL,NULL,38000180,NULL,NULL,2.5,NULL,NULL,4171047,NULL,NULL,12000000067006497,NULL,'308351',19073526,'47625008',NULL),(12000000000156940,1962086,42708201,'2018-12-01','2018-11-30 18:00:00',NULL,NULL,NULL,38000180,NULL,NULL,6,NULL,NULL,4132161,NULL,NULL,12000000067006497,NULL,'1244214',42708201,'26643006',NULL),(12000000000157016,1962086,1707348,'2018-12-03','2018-12-02 18:00:00',NULL,NULL,NULL,38000180,NULL,NULL,400,NULL,NULL,4171047,NULL,NULL,12000000067006497,NULL,'311683',1707348,'47625008',NULL);
/*!40000 ALTER TABLE `drug_exposure` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `drug_strength`
--

DROP TABLE IF EXISTS `drug_strength`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drug_strength` (
  `drug_concept_id` int NOT NULL,
  `ingredient_concept_id` int NOT NULL,
  `amount_value` float DEFAULT NULL,
  `amount_unit_concept_id` int DEFAULT NULL,
  `numerator_value` float DEFAULT NULL,
  `numerator_unit_concept_id` int DEFAULT NULL,
  `denominator_value` float DEFAULT NULL,
  `denominator_unit_concept_id` int DEFAULT NULL,
  `box_size` int DEFAULT NULL,
  `valid_start_date` date NOT NULL,
  `valid_end_date` date NOT NULL,
  `invalid_reason` varchar(1) DEFAULT NULL,
  KEY `idx_drug_strength_id_2` (`ingredient_concept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drug_strength`
--

LOCK TABLES `drug_strength` WRITE;
/*!40000 ALTER TABLE `drug_strength` DISABLE KEYS */;
/*!40000 ALTER TABLE `drug_strength` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EPISODE`
--

DROP TABLE IF EXISTS `EPISODE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `EPISODE` (
  `episode_id` bigint NOT NULL,
  `person_id` bigint NOT NULL,
  `episode_concept_id` int NOT NULL,
  `episode_start_date` date NOT NULL,
  `episode_start_datetime` datetime DEFAULT NULL,
  `episode_end_date` date DEFAULT NULL,
  `episode_end_datetime` datetime DEFAULT NULL,
  `episode_parent_id` bigint DEFAULT NULL,
  `episode_number` int DEFAULT NULL,
  `episode_object_concept_id` int NOT NULL,
  `episode_type_concept_id` int NOT NULL,
  `episode_source_value` varchar(50) DEFAULT NULL,
  `episode_source_concept_id` int DEFAULT NULL,
  PRIMARY KEY (`episode_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EPISODE`
--

LOCK TABLES `EPISODE` WRITE;
/*!40000 ALTER TABLE `EPISODE` DISABLE KEYS */;
/*!40000 ALTER TABLE `EPISODE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EPISODE_EVENT`
--

DROP TABLE IF EXISTS `EPISODE_EVENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `EPISODE_EVENT` (
  `episode_id` bigint NOT NULL,
  `event_id` bigint NOT NULL,
  `episode_event_field_concept_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EPISODE_EVENT`
--

LOCK TABLES `EPISODE_EVENT` WRITE;
/*!40000 ALTER TABLE `EPISODE_EVENT` DISABLE KEYS */;
/*!40000 ALTER TABLE `EPISODE_EVENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fact_relationship`
--

DROP TABLE IF EXISTS `fact_relationship`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fact_relationship` (
  `domain_concept_id_1` int NOT NULL,
  `fact_id_1` int NOT NULL,
  `domain_concept_id_2` int NOT NULL,
  `fact_id_2` int NOT NULL,
  `relationship_concept_id` int NOT NULL,
  KEY `idx_fact_relationship_id1` (`domain_concept_id_1`),
  KEY `idx_fact_relationship_id2` (`domain_concept_id_2`),
  KEY `idx_fact_relationship_id3` (`relationship_concept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fact_relationship`
--

LOCK TABLES `fact_relationship` WRITE;
/*!40000 ALTER TABLE `fact_relationship` DISABLE KEYS */;
/*!40000 ALTER TABLE `fact_relationship` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LOCATION`
--

DROP TABLE IF EXISTS `LOCATION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `LOCATION` (
  `location_id` int NOT NULL,
  `address_1` varchar(50) DEFAULT NULL,
  `address_2` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` varchar(2) DEFAULT NULL,
  `zip` varchar(9) DEFAULT NULL,
  `county` varchar(20) DEFAULT NULL,
  `location_source_value` varchar(50) DEFAULT NULL,
  `country_concept_id` int DEFAULT NULL,
  `country_source_value` varchar(80) DEFAULT NULL,
  `latitude` float DEFAULT NULL,
  `longitude` float DEFAULT NULL,
  PRIMARY KEY (`location_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LOCATION`
--

LOCK TABLES `LOCATION` WRITE;
/*!40000 ALTER TABLE `LOCATION` DISABLE KEYS */;
/*!40000 ALTER TABLE `LOCATION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `measurement`
--

DROP TABLE IF EXISTS `measurement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `measurement` (
  `measurement_id` bigint NOT NULL,
  `person_id` int NOT NULL,
  `measurement_concept_id` int NOT NULL,
  `measurement_date` date NOT NULL,
  `measurement_datetime` datetime DEFAULT NULL,
  `measurement_time` varchar(10) DEFAULT NULL,
  `measurement_type_concept_id` int NOT NULL,
  `operator_concept_id` int DEFAULT NULL,
  `value_as_number` float DEFAULT NULL,
  `value_as_concept_id` int DEFAULT NULL,
  `unit_concept_id` int DEFAULT NULL,
  `range_low` float DEFAULT NULL,
  `range_high` float DEFAULT NULL,
  `provider_id` int DEFAULT NULL,
  `visit_occurrence_id` bigint DEFAULT NULL,
  `visit_detail_id` int DEFAULT NULL,
  `measurement_source_value` varchar(50) DEFAULT NULL,
  `measurement_source_concept_id` int DEFAULT NULL,
  `unit_source_value` varchar(50) DEFAULT NULL,
  `unit_source_concept_id` int DEFAULT NULL,
  `value_source_value` varchar(50) DEFAULT NULL,
  `measurement_event_id` bigint DEFAULT NULL,
  `meas_event_field_concept_id` int DEFAULT NULL,
  PRIMARY KEY (`measurement_id`),
  KEY `idx_measurement_concept_id_1` (`measurement_concept_id`),
  KEY `idx_measurement_visit_id_1` (`visit_occurrence_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `measurement`
--

LOCK TABLES `measurement` WRITE;
/*!40000 ALTER TABLE `measurement` DISABLE KEYS */;
INSERT INTO `measurement` VALUES (9000000001248897,1583645,3027172,'2020-09-01','2020-09-01 06:20:00',NULL,3027172,NULL,20,NULL,8554,NULL,NULL,NULL,9000000000000000,NULL,'10230-1',3027172,'%',NULL,NULL,NULL,NULL),(9000000006940564,1249930,3027172,'2021-02-09','2021-02-09 07:10:00',NULL,3027172,NULL,0,NULL,8554,NULL,NULL,NULL,9000000000000000,NULL,'10230-1',3027172,'%',NULL,NULL,NULL,NULL),(9000000008087223,1338687,3027172,'2017-05-15','2017-05-15 06:57:05',NULL,3027172,NULL,64.8,NULL,8554,NULL,NULL,NULL,9000000006052333,NULL,'10230-1',3027172,'%',NULL,NULL,NULL,NULL),(9000000008555075,1425778,3027172,'2021-07-30','2021-07-30 11:42:00',NULL,44818702,4172703,46,NULL,8554,NULL,NULL,NULL,9000000154992125,NULL,'10230-1',3027172,'%',NULL,NULL,NULL,NULL),(9000000009861403,2968472,3027172,'2022-04-13','2022-04-13 05:39:00',NULL,3027172,NULL,66,NULL,8554,NULL,NULL,NULL,9000000156347989,NULL,'10230-1',3027172,'%',NULL,NULL,NULL,NULL),(9000000011967592,4006664,3027172,'2021-03-16','2021-03-16 07:53:00',NULL,3027172,NULL,0,NULL,8554,NULL,NULL,NULL,9000000150386816,NULL,'10230-1',3027172,'%',NULL,NULL,NULL,NULL),(9000000015336945,1946804,3027172,'2019-11-23','2019-11-23 11:46:00',NULL,3027172,NULL,55,NULL,8554,NULL,NULL,NULL,9000000120068913,NULL,'10230-1',3027172,'%',NULL,NULL,NULL,NULL),(9000000016735166,3257211,3027172,'2020-08-26','2020-08-26 04:38:00',NULL,3027172,NULL,71,NULL,8554,NULL,NULL,NULL,9000000122898385,NULL,'10230-1',3027172,'%',NULL,NULL,NULL,NULL),(9000000017556558,2304536,3027172,'2019-05-15','2019-05-15 09:21:00',NULL,3027172,NULL,67,NULL,8554,NULL,NULL,NULL,9000000100840411,NULL,'10230-1',3027172,'%',NULL,NULL,NULL,NULL),(12000000000691613,8249431,3027172,'2018-05-08','2018-05-08 06:43:00',NULL,44818702,0,60,NULL,8554,NULL,NULL,NULL,12000000049946872,NULL,'10230-1',3027172,'%',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `measurement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `METADATA`
--

DROP TABLE IF EXISTS `METADATA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `METADATA` (
  `metadata_id` int NOT NULL,
  `metadata_concept_id` int NOT NULL,
  `metadata_type_concept_id` int NOT NULL,
  `name` varchar(250) NOT NULL,
  `value_as_string` varchar(250) DEFAULT NULL,
  `value_as_concept_id` int DEFAULT NULL,
  `value_as_number` float DEFAULT NULL,
  `metadata_date` date DEFAULT NULL,
  `metadata_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`metadata_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `METADATA`
--

LOCK TABLES `METADATA` WRITE;
/*!40000 ALTER TABLE `METADATA` DISABLE KEYS */;
/*!40000 ALTER TABLE `METADATA` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `note`
--

DROP TABLE IF EXISTS `note`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `note` (
  `note_id` int NOT NULL,
  `person_id` int NOT NULL,
  `note_date` date NOT NULL,
  `note_datetime` datetime DEFAULT NULL,
  `note_type_concept_id` int NOT NULL,
  `note_class_concept_id` int NOT NULL,
  `note_title` varchar(250) DEFAULT NULL,
  `note_text` varchar(255) NOT NULL,
  `encoding_concept_id` int NOT NULL,
  `language_concept_id` int NOT NULL,
  `provider_id` int DEFAULT NULL,
  `visit_occurrence_id` int DEFAULT NULL,
  `visit_detail_id` int DEFAULT NULL,
  `note_source_value` varchar(50) DEFAULT NULL,
  `note_event_id` bigint DEFAULT NULL,
  `note_event_field_concept_id` int DEFAULT NULL,
  PRIMARY KEY (`note_id`),
  KEY `idx_note_concept_id_1` (`note_type_concept_id`),
  KEY `idx_note_visit_id_1` (`visit_occurrence_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `note`
--

LOCK TABLES `note` WRITE;
/*!40000 ALTER TABLE `note` DISABLE KEYS */;
/*!40000 ALTER TABLE `note` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `note_nlp`
--

DROP TABLE IF EXISTS `note_nlp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `note_nlp` (
  `note_nlp_id` int NOT NULL,
  `note_id` int NOT NULL,
  `section_concept_id` int DEFAULT NULL,
  `snippet` varchar(250) DEFAULT NULL,
  `offset` varchar(50) DEFAULT NULL,
  `lexical_variant` varchar(250) NOT NULL,
  `note_nlp_concept_id` int DEFAULT NULL,
  `note_nlp_source_concept_id` int DEFAULT NULL,
  `nlp_system` varchar(250) DEFAULT NULL,
  `nlp_date` date NOT NULL,
  `nlp_datetime` datetime DEFAULT NULL,
  `term_exists` varchar(1) DEFAULT NULL,
  `term_temporal` varchar(50) DEFAULT NULL,
  `term_modifiers` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`note_nlp_id`),
  KEY `idx_note_nlp_concept_id_1` (`note_nlp_concept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `note_nlp`
--

LOCK TABLES `note_nlp` WRITE;
/*!40000 ALTER TABLE `note_nlp` DISABLE KEYS */;
/*!40000 ALTER TABLE `note_nlp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `observation`
--

DROP TABLE IF EXISTS `observation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `observation` (
  `observation_id` bigint NOT NULL,
  `person_id` int NOT NULL,
  `observation_concept_id` int NOT NULL,
  `observation_date` date NOT NULL,
  `observation_datetime` datetime DEFAULT NULL,
  `observation_type_concept_id` int NOT NULL,
  `value_as_number` float DEFAULT NULL,
  `value_as_string` varchar(60) DEFAULT NULL,
  `value_as_concept_id` int DEFAULT NULL,
  `qualifier_concept_id` int DEFAULT NULL,
  `unit_concept_id` int DEFAULT NULL,
  `provider_id` int DEFAULT NULL,
  `visit_occurrence_id` bigint DEFAULT NULL,
  `visit_detail_id` int DEFAULT NULL,
  `observation_source_value` varchar(50) DEFAULT NULL,
  `observation_source_concept_id` int DEFAULT NULL,
  `unit_source_value` varchar(50) DEFAULT NULL,
  `qualifier_source_value` varchar(50) DEFAULT NULL,
  `value_source_value` varchar(50) DEFAULT NULL,
  `observation_event_id` bigint DEFAULT NULL,
  `obs_event_field_concept_id` int DEFAULT NULL,
  PRIMARY KEY (`observation_id`),
  KEY `idx_observation_concept_id_1` (`observation_concept_id`),
  KEY `idx_observation_visit_id_1` (`visit_occurrence_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `observation`
--

LOCK TABLES `observation` WRITE;
/*!40000 ALTER TABLE `observation` DISABLE KEYS */;
/*!40000 ALTER TABLE `observation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OBSERVATION_PERIOD`
--

DROP TABLE IF EXISTS `OBSERVATION_PERIOD`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `OBSERVATION_PERIOD` (
  `observation_period_id` int NOT NULL,
  `person_id` int NOT NULL,
  `observation_period_start_date` date NOT NULL,
  `observation_period_end_date` date NOT NULL,
  `period_type_concept_id` int NOT NULL,
  PRIMARY KEY (`observation_period_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OBSERVATION_PERIOD`
--

LOCK TABLES `OBSERVATION_PERIOD` WRITE;
/*!40000 ALTER TABLE `OBSERVATION_PERIOD` DISABLE KEYS */;
/*!40000 ALTER TABLE `OBSERVATION_PERIOD` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `person`
--

DROP TABLE IF EXISTS `person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `person` (
  `person_id` int NOT NULL,
  `gender_concept_id` int NOT NULL,
  `year_of_birth` int NOT NULL,
  `month_of_birth` int DEFAULT NULL,
  `day_of_birth` int DEFAULT NULL,
  `birth_datetime` datetime DEFAULT NULL,
  `race_concept_id` int NOT NULL,
  `ethnicity_concept_id` int NOT NULL,
  `location_id` int DEFAULT NULL,
  `provider_id` int DEFAULT NULL,
  `care_site_id` int DEFAULT NULL,
  `person_source_value` varchar(50) DEFAULT NULL,
  `gender_source_value` varchar(50) DEFAULT NULL,
  `gender_source_concept_id` int DEFAULT NULL,
  `race_source_value` varchar(50) DEFAULT NULL,
  `race_source_concept_id` int DEFAULT NULL,
  `ethnicity_source_value` varchar(50) DEFAULT NULL,
  `ethnicity_source_concept_id` int DEFAULT NULL,
  PRIMARY KEY (`person_id`),
  KEY `idx_gender` (`gender_concept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person`
--

LOCK TABLES `person` WRITE;
/*!40000 ALTER TABLE `person` DISABLE KEYS */;
/*!40000 ALTER TABLE `person` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `PROVIDER`
--

DROP TABLE IF EXISTS `PROVIDER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PROVIDER` (
  `provider_id` int NOT NULL,
  `provider_name` varchar(255) DEFAULT NULL,
  `npi` varchar(20) DEFAULT NULL,
  `dea` varchar(20) DEFAULT NULL,
  `specialty_concept_id` int DEFAULT NULL,
  `care_site_id` int DEFAULT NULL,
  `year_of_birth` int DEFAULT NULL,
  `gender_concept_id` int DEFAULT NULL,
  `provider_source_value` varchar(50) DEFAULT NULL,
  `specialty_source_value` varchar(50) DEFAULT NULL,
  `specialty_source_concept_id` int DEFAULT NULL,
  `gender_source_value` varchar(50) DEFAULT NULL,
  `gender_source_concept_id` int DEFAULT NULL,
  PRIMARY KEY (`provider_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PROVIDER`
--

LOCK TABLES `PROVIDER` WRITE;
/*!40000 ALTER TABLE `PROVIDER` DISABLE KEYS */;
/*!40000 ALTER TABLE `PROVIDER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RELATIONSHIP`
--

DROP TABLE IF EXISTS `RELATIONSHIP`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `RELATIONSHIP` (
  `relationship_id` varchar(20) NOT NULL,
  `relationship_name` varchar(255) NOT NULL,
  `is_hierarchical` varchar(1) NOT NULL,
  `defines_ancestry` varchar(1) NOT NULL,
  `reverse_relationship_id` varchar(20) NOT NULL,
  `relationship_concept_id` int NOT NULL,
  PRIMARY KEY (`relationship_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RELATIONSHIP`
--

LOCK TABLES `RELATIONSHIP` WRITE;
/*!40000 ALTER TABLE `RELATIONSHIP` DISABLE KEYS */;
/*!40000 ALTER TABLE `RELATIONSHIP` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `source_to_concept_map`
--

DROP TABLE IF EXISTS `source_to_concept_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `source_to_concept_map` (
  `source_code` varchar(50) NOT NULL,
  `source_concept_id` int NOT NULL,
  `source_vocabulary_id` varchar(20) NOT NULL,
  `source_code_description` varchar(255) DEFAULT NULL,
  `target_concept_id` int NOT NULL,
  `target_vocabulary_id` varchar(20) NOT NULL,
  `valid_start_date` date NOT NULL,
  `valid_end_date` date NOT NULL,
  `invalid_reason` varchar(1) DEFAULT NULL,
  KEY `idx_source_to_concept_map_1` (`source_vocabulary_id`),
  KEY `idx_source_to_concept_map_2` (`target_vocabulary_id`),
  KEY `idx_source_to_concept_map_c` (`source_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `source_to_concept_map`
--

LOCK TABLES `source_to_concept_map` WRITE;
/*!40000 ALTER TABLE `source_to_concept_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `source_to_concept_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `specimen`
--

DROP TABLE IF EXISTS `specimen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `specimen` (
  `specimen_id` int NOT NULL,
  `person_id` int NOT NULL,
  `specimen_concept_id` int NOT NULL,
  `specimen_type_concept_id` int NOT NULL,
  `specimen_date` date NOT NULL,
  `specimen_datetime` datetime DEFAULT NULL,
  `quantity` float DEFAULT NULL,
  `unit_concept_id` int DEFAULT NULL,
  `anatomic_site_concept_id` int DEFAULT NULL,
  `disease_status_concept_id` int DEFAULT NULL,
  `specimen_source_id` varchar(50) DEFAULT NULL,
  `specimen_source_value` varchar(50) DEFAULT NULL,
  `unit_source_value` varchar(50) DEFAULT NULL,
  `anatomic_site_source_value` varchar(50) DEFAULT NULL,
  `disease_status_source_value` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`specimen_id`),
  KEY `idx_specimen_concept_id_1` (`specimen_concept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `specimen`
--

LOCK TABLES `specimen` WRITE;
/*!40000 ALTER TABLE `specimen` DISABLE KEYS */;
/*!40000 ALTER TABLE `specimen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visit_detail`
--

DROP TABLE IF EXISTS `visit_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `visit_detail` (
  `visit_detail_id` int NOT NULL,
  `person_id` int NOT NULL,
  `visit_detail_concept_id` int NOT NULL,
  `visit_detail_start_date` date NOT NULL,
  `visit_detail_start_datetime` datetime DEFAULT NULL,
  `visit_detail_end_date` date NOT NULL,
  `visit_detail_end_datetime` datetime DEFAULT NULL,
  `visit_detail_type_concept_id` int NOT NULL,
  `provider_id` int DEFAULT NULL,
  `care_site_id` int DEFAULT NULL,
  `visit_detail_source_value` varchar(50) DEFAULT NULL,
  `visit_detail_source_concept_id` int DEFAULT NULL,
  `admitted_from_concept_id` int DEFAULT NULL,
  `admitted_from_source_value` varchar(50) DEFAULT NULL,
  `discharged_to_source_value` varchar(50) DEFAULT NULL,
  `discharged_to_concept_id` int DEFAULT NULL,
  `preceding_visit_detail_id` int DEFAULT NULL,
  `parent_visit_detail_id` int DEFAULT NULL,
  `visit_occurrence_id` int NOT NULL,
  PRIMARY KEY (`visit_detail_id`),
  KEY `idx_visit_det_concept_id_1` (`visit_detail_concept_id`),
  KEY `idx_visit_det_occ_id` (`visit_occurrence_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visit_detail`
--

LOCK TABLES `visit_detail` WRITE;
/*!40000 ALTER TABLE `visit_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `visit_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visit_occurrence`
--

DROP TABLE IF EXISTS `visit_occurrence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `visit_occurrence` (
  `visit_occurrence_id` bigint NOT NULL,
  `person_id` int NOT NULL,
  `visit_concept_id` int NOT NULL,
  `visit_start_date` date NOT NULL,
  `visit_start_datetime` datetime DEFAULT NULL,
  `visit_end_date` date NOT NULL,
  `visit_end_datetime` datetime DEFAULT NULL,
  `visit_type_concept_id` int NOT NULL,
  `provider_id` int DEFAULT NULL,
  `care_site_id` int DEFAULT NULL,
  `visit_source_value` varchar(50) DEFAULT NULL,
  `visit_source_concept_id` int DEFAULT NULL,
  `admitted_from_concept_id` int DEFAULT NULL,
  `admitted_from_source_value` varchar(50) DEFAULT NULL,
  `discharged_to_concept_id` int DEFAULT NULL,
  `discharged_to_source_value` varchar(50) DEFAULT NULL,
  `preceding_visit_occurrence_id` int DEFAULT NULL,
  PRIMARY KEY (`visit_occurrence_id`),
  KEY `idx_visit_concept_id_1` (`visit_concept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visit_occurrence`
--

LOCK TABLES `visit_occurrence` WRITE;
/*!40000 ALTER TABLE `visit_occurrence` DISABLE KEYS */;
INSERT INTO `visit_occurrence` VALUES (12000000009579745,2608345,9202,'2016-11-06','2016-11-05 19:00:00','2016-11-06','2016-11-05 19:00:00',44818518,NULL,NULL,'21',8717,8940,'11',8536,'12',NULL),(12000000010341014,1666573,9202,'2016-03-23','2016-03-22 19:00:00','2016-03-23','2016-03-22 19:00:00',44818518,NULL,NULL,'21',8717,8940,'11',8536,'12',NULL),(12000000040416418,1914891,9202,'2015-03-12','2015-03-11 19:00:00','2015-03-12','2015-03-11 19:00:00',44818518,NULL,NULL,'21',8717,8940,'11',8536,'12',NULL),(12000000041637604,2802860,9202,'2015-12-25','2015-12-24 18:00:00','2015-12-25','2015-12-24 18:00:00',44818518,NULL,NULL,'21',8717,8940,'11',8536,'12',NULL),(12000000043569168,1074017,9202,'2015-11-30','2015-11-29 18:00:00','2015-11-30','2015-11-29 18:00:00',44818518,NULL,NULL,'21',8717,8940,'11',8536,'12',NULL),(12000000043826633,2564900,9202,'2016-07-18','2016-07-17 19:00:00','2016-07-18','2016-07-17 19:00:00',44818518,NULL,NULL,'21',8717,8940,'11',8536,'12',NULL),(12000000043929548,2489476,9202,'2016-08-08','2016-08-07 19:00:00','2016-08-08','2016-08-07 19:00:00',44818518,NULL,NULL,'21',8717,8940,'11',8536,'12',NULL),(12000000044035255,1191336,9202,'2016-07-15','2016-07-14 19:00:00','2016-07-15','2016-07-14 19:00:00',44818518,NULL,NULL,'21',8717,8940,'11',8536,'12',NULL),(12000000044341626,2673884,9202,'2016-08-02','2016-08-01 19:00:00','2016-08-02','2016-08-01 19:00:00',44818518,NULL,NULL,'21',8717,8940,'11',8536,'12',NULL),(12000000067006497,1962086,262,'2018-11-13','2018-11-12 18:00:00','2018-12-03','2018-12-02 18:00:00',44818518,NULL,NULL,'21',8717,8940,'11',44814686,'Discharge Disposition-E',NULL);
/*!40000 ALTER TABLE `visit_occurrence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `VOCABULARY`
--

DROP TABLE IF EXISTS `VOCABULARY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `VOCABULARY` (
  `vocabulary_id` varchar(20) NOT NULL,
  `vocabulary_name` varchar(255) NOT NULL,
  `vocabulary_reference` varchar(255) DEFAULT NULL,
  `vocabulary_version` varchar(255) DEFAULT NULL,
  `vocabulary_concept_id` int NOT NULL,
  PRIMARY KEY (`vocabulary_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `VOCABULARY`
--

LOCK TABLES `VOCABULARY` WRITE;
/*!40000 ALTER TABLE `VOCABULARY` DISABLE KEYS */;
/*!40000 ALTER TABLE `VOCABULARY` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-16  1:16:22
