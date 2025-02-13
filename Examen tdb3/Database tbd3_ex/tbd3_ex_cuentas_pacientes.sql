-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: tbd3_ex
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Table structure for table `cuentas_pacientes`
--

DROP TABLE IF EXISTS `cuentas_pacientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cuentas_pacientes` (
  `cuentas_pacientes_id` int NOT NULL AUTO_INCREMENT,
  `paciente_id` int DEFAULT NULL,
  `forma_pago_pac_id` int DEFAULT NULL,
  `fecha_emision` date NOT NULL,
  `otros` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  PRIMARY KEY (`cuentas_pacientes_id`) USING BTREE,
  KEY `paciente_id` (`paciente_id`) USING BTREE,
  KEY `forma_pago_pac_id` (`forma_pago_pac_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuentas_pacientes`
--

LOCK TABLES `cuentas_pacientes` WRITE;
/*!40000 ALTER TABLE `cuentas_pacientes` DISABLE KEYS */;
INSERT INTO `cuentas_pacientes` VALUES (2,2,NULL,'2017-04-17',NULL),(3,3,1,'2017-04-20',NULL),(4,4,2,'2017-04-22',NULL),(5,5,3,'2017-04-21',NULL),(6,6,4,'2017-04-18',NULL),(7,7,5,'2017-04-24',NULL),(8,8,1,'2017-04-27',NULL),(9,9,2,'2017-04-28',NULL),(10,10,3,'2017-04-27',NULL),(11,11,4,'2017-04-28',NULL),(12,12,5,'2017-04-28',NULL),(13,13,NULL,'2017-04-29',NULL),(14,14,NULL,'2017-04-26',NULL),(15,15,NULL,'2017-05-05',NULL),(16,16,NULL,'2017-05-02',NULL),(17,17,1,'2017-05-01',NULL),(18,18,2,'2017-05-12',NULL),(19,19,3,'2017-05-03',NULL),(20,20,4,'2017-05-09',NULL),(21,21,5,'2017-05-08',NULL),(22,22,NULL,'2017-05-14',NULL),(23,23,NULL,'2017-05-12',NULL),(24,24,NULL,'2017-05-05',NULL),(25,25,NULL,'2017-05-19',NULL),(26,26,1,'2017-05-14',NULL),(27,27,2,'2017-05-12',NULL),(28,28,3,'2017-05-15',NULL),(29,29,4,'2017-05-13',NULL),(30,30,5,'2017-05-18',NULL),(31,31,NULL,'2017-05-20',NULL),(32,32,NULL,'2017-05-26',NULL),(33,33,NULL,'2017-05-22',NULL),(34,34,NULL,'2017-05-21',NULL),(35,35,NULL,'2017-05-16',NULL),(36,36,NULL,'2017-05-20',NULL),(37,37,1,'2017-05-27',NULL),(38,38,2,'2017-05-21',NULL),(39,39,3,'2017-05-26',NULL),(40,40,4,'2017-05-31',NULL),(41,41,5,'2017-05-31',NULL),(42,42,NULL,'2017-06-01',NULL),(43,43,NULL,'2017-05-27',NULL),(44,44,NULL,'2017-06-07',NULL),(45,45,NULL,'2017-06-04',NULL),(46,46,1,'2017-06-07',NULL),(47,47,2,'2017-05-31',NULL),(48,48,3,'2017-06-07',NULL),(49,49,4,'2017-05-31',NULL),(50,50,5,'2017-06-03',NULL),(51,51,NULL,'2017-06-03',NULL),(52,52,NULL,'2017-06-10',NULL),(53,53,1,'2017-06-14',NULL),(54,54,2,'2017-06-09',NULL),(55,55,3,'2017-06-14',NULL),(56,56,4,'2017-06-17',NULL),(57,58,5,'2017-06-16',NULL);
/*!40000 ALTER TABLE `cuentas_pacientes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-07 23:08:06
