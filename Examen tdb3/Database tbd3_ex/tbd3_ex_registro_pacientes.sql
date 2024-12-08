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
-- Table structure for table `registro_pacientes`
--

DROP TABLE IF EXISTS `registro_pacientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registro_pacientes` (
  `registro_paciente_id` int NOT NULL AUTO_INCREMENT,
  `paciente_id` int DEFAULT NULL,
  `cuentas_pacientes_id` int DEFAULT NULL,
  `registro_por_empleado_id` int DEFAULT NULL,
  `fecha_admision` date NOT NULL,
  `condicion_medica` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `otros` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  PRIMARY KEY (`registro_paciente_id`) USING BTREE,
  KEY `paciente_id` (`paciente_id`) USING BTREE,
  KEY `cuentas_pacientes_id` (`cuentas_pacientes_id`) USING BTREE,
  KEY `registro_por_empleado_id` (`registro_por_empleado_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registro_pacientes`
--

LOCK TABLES `registro_pacientes` WRITE;
/*!40000 ALTER TABLE `registro_pacientes` DISABLE KEYS */;
INSERT INTO `registro_pacientes` VALUES (1,1,1,1,'2017-04-08','Abdominal Aortic Aneurysm',NULL),(2,2,2,2,'2017-04-09','Abdominal Cramps (Heat Cramps)',NULL),(3,3,3,3,'2017-04-10','Abdominal Hernia (Hernia Overview)',NULL),(4,4,4,4,'2017-04-12','Bacterial Vaginosis (Causes, Symptoms, Treatment)',NULL),(5,5,5,5,'2017-04-12','Bad Breath',NULL),(6,6,6,6,'2017-04-14','Bad Cholesterol Test (Cholesterol Test)',NULL),(7,7,7,7,'2017-04-15','Baker Cyst',NULL),(8,8,8,8,'2017-04-15','Farting (Intestinal Gas (Belching, Bloating, Flatulence))',NULL),(9,9,9,9,'2017-04-16','Fast Heart Beat (Palpitations Overview)',NULL),(10,10,10,10,'2017-04-17','Fatigue',NULL),(11,11,11,11,'2017-04-18','Fatigue From Cancer (Cancer Fatigue)',NULL),(12,12,12,12,'2017-04-19','Lambliasis (Giardia Lamblia)',NULL),(13,13,13,13,'2017-04-20','Lambliosis (Giardia Lamblia)',NULL),(14,14,14,14,'2017-04-22','Landau-Kleffner Syndrome',NULL),(15,15,15,15,'2017-04-22','Lap Band Surgery (Gastric Banding)',NULL),(16,16,16,16,'2017-04-24','Laparoscopic Liver Biopsy (Liver Biopsy)',NULL),(17,17,17,17,'2017-04-24','Omega-3 Fatty Acids',NULL),(18,18,18,18,'2017-04-25','Onchocerciasis',NULL),(19,19,19,19,'2017-04-27','Onychocryptosis (Ingrown Toenail)',NULL),(20,20,20,20,'2017-04-28','Scarlatina',NULL),(21,21,21,21,'2017-04-28','Scars',NULL),(22,22,22,22,'2017-04-30','Schatzki Ring',NULL),(23,23,23,23,'2017-05-01','Scheuermann\'s Kyphosis (Kyphosis)',NULL),(24,24,24,24,'2017-05-01','Schistosoma guineensis (Schistosomiasis)',NULL),(25,25,25,25,'2017-05-02','Schistosoma haematobium (Schistosomiasis)',NULL),(26,26,26,26,'2017-05-04','Schistosoma japonicum (Schistosomiasis)',NULL),(27,27,27,27,'2017-05-04','Tachycardia (Heart Rhythm Disorders)',NULL),(28,28,28,28,'2017-05-06','Tachycardia, Paroxysmal Atrial (Paroxysmal Supraventricular Tachycardia (PSVT))',NULL),(29,29,29,29,'2017-05-07','Tachycardia, Paroxysmal Supraventricular (Paroxysmal Supraventricular Tachycardia (PSVT))',NULL),(30,30,30,30,'2017-05-07','Tailbone Pain (Coccydynia)',NULL),(31,31,31,1,'2017-05-09','Tailor\'s Bunion (Bunions)',NULL),(32,32,32,2,'2017-05-10','Takayasu Arteritis (Takayasu Disease)',NULL),(33,33,33,3,'2017-05-10','Takayasu Disease',NULL),(34,34,34,4,'2017-05-11','Taking Dental Medications',NULL),(35,35,35,5,'2017-05-13','Tarry Stools (Stool Color Changes)',NULL),(36,36,36,6,'2017-05-14','Abdominal Aortic Aneurysm',NULL),(37,37,37,7,'2017-05-14','Abdominal Cramps (Heat Cramps)',NULL),(38,38,38,8,'2017-05-15','Abdominal Hernia (Hernia Overview)',NULL),(39,39,39,9,'2017-05-16','Bacterial Vaginosis (Causes, Symptoms, Treatment)',NULL),(40,40,40,10,'2017-05-18','Bad Breath',NULL),(41,41,41,11,'2017-05-18','Bad Cholesterol Test (Cholesterol Test)',NULL),(42,42,42,12,'2017-05-20','Baker Cyst',NULL),(43,43,43,13,'2017-05-21','Farting (Intestinal Gas (Belching, Bloating, Flatulence))',NULL),(44,44,44,14,'2017-05-22','Fast Heart Beat (Palpitations Overview)',NULL),(45,45,45,15,'2017-05-23','Fatigue',NULL),(46,46,46,16,'2017-05-23','Fatigue From Cancer (Cancer Fatigue)',NULL),(47,47,47,17,'2017-05-25','Lambliasis (Giardia Lamblia)',NULL),(48,48,48,18,'2017-05-25','Lambliosis (Giardia Lamblia)',NULL),(49,49,49,19,'2017-05-27','Landau-Kleffner Syndrome',NULL),(50,50,50,20,'2017-05-28','Lap Band Surgery (Gastric Banding)',NULL),(51,51,51,21,'2017-05-29','Laparoscopic Liver Biopsy (Liver Biopsy)',NULL),(52,52,52,22,'2017-05-29','Omega-3 Fatty Acids',NULL),(53,53,53,23,'2017-05-31','Onchocerciasis',NULL),(54,54,54,24,'2017-05-31','Onychocryptosis (Ingrown Toenail)',NULL),(55,55,55,25,'2017-06-01','Scarlatina',NULL),(56,56,56,26,'2017-06-02','Scars',NULL),(57,57,57,27,'2017-06-04','Schatzki Ring',NULL),(58,58,58,28,'2017-06-05','Scheuermann\'s Kyphosis (Kyphosis)',NULL);
/*!40000 ALTER TABLE `registro_pacientes` ENABLE KEYS */;
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
