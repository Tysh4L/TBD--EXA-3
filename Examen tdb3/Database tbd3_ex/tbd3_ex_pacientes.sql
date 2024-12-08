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
-- Table structure for table `pacientes`
--

DROP TABLE IF EXISTS `pacientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pacientes` (
  `paciente_id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `apellido_pat` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `apellido_mat` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `peso` double NOT NULL,
  `altura` double NOT NULL,
  `numero_seguro_social` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `genero` enum('masculino','femenino') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `telefono_casa` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `telefono_trabajo` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `telefono_movil` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `otros` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `nss` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`paciente_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pacientes`
--

LOCK TABLES `pacientes` WRITE;
/*!40000 ALTER TABLE `pacientes` DISABLE KEYS */;
INSERT INTO `pacientes` VALUES (2,'Bezalel','Simmel','Simmel','1952-07-08',88,1.69,'10002','femenino',NULL,NULL,NULL,NULL,NULL),(3,'Parto','Bamford','Bamford','1953-09-29',62,1.88,'10003','masculino',NULL,NULL,NULL,NULL,NULL),(4,'Chirstian','Koblick','Koblick','1958-09-05',93,1.84,'10004','masculino',NULL,NULL,NULL,NULL,NULL),(5,'Kyoichi','Maliniak','Maliniak','1958-10-31',86,1.89,'10005','masculino',NULL,NULL,NULL,NULL,NULL),(6,'Anneke','Preusig','Preusig','1953-04-03',86,1.54,'10006','femenino',NULL,NULL,NULL,NULL,NULL),(7,'Tzvetan','Zielinski','Zielinski','1962-07-10',56,1.77,'10007','femenino',NULL,NULL,NULL,NULL,NULL),(8,'Saniya','Kalloufi','Kalloufi','1963-11-26',78,1.82,'10008','masculino',NULL,NULL,NULL,NULL,NULL),(9,'Sumant','Peac','Peac','1956-12-13',85,1.64,'10009','femenino',NULL,NULL,NULL,NULL,NULL),(10,'Duangkaew','Piveteau','Piveteau','1958-07-14',92,1.71,'10010','femenino',NULL,NULL,NULL,NULL,NULL),(11,'Mary','Sluis','Sluis','1959-01-27',96,1.96,'10011','femenino',NULL,NULL,NULL,NULL,NULL),(12,'Patricio','Bridgland','Bridgland','1960-08-09',63,1.9,'10012','masculino',NULL,NULL,NULL,NULL,NULL),(13,'Eberhardt','Terkki','Terkki','1956-11-14',81,1.64,'10013','masculino',NULL,NULL,NULL,NULL,NULL),(14,'Berni','Genin','Genin','1962-12-29',67,1.74,'10014','masculino',NULL,NULL,NULL,NULL,NULL),(15,'Guoxiang','Nooteboom','Nooteboom','1953-02-08',60,1.55,'10015','masculino',NULL,NULL,NULL,NULL,NULL),(16,'Kazuhito','Cappelletti','Cappelletti','1959-08-10',97,1.71,'10016','masculino',NULL,NULL,NULL,NULL,NULL),(17,'Cristinel','Bouloucos','Bouloucos','1963-07-22',66,1.91,'10017','femenino',NULL,NULL,NULL,NULL,NULL),(18,'Kazuhide','Peha','Peha','1960-07-20',88,1.51,'10018','femenino',NULL,NULL,NULL,NULL,NULL),(19,'Lillian','Haddadi','Haddadi','1959-10-01',85,1.61,'10019','masculino',NULL,NULL,NULL,NULL,NULL),(20,'Mayuko','Warwick','Warwick','1959-09-13',96,1.78,'10020','masculino',NULL,NULL,NULL,NULL,NULL),(21,'Ramzi','Erde','Erde','1959-08-27',91,1.61,'10021','masculino',NULL,NULL,NULL,NULL,NULL),(22,'Shahaf','Famili','Famili','1956-02-26',70,1.81,'10022','masculino',NULL,NULL,NULL,NULL,NULL),(23,'Bojan','Montemayor','Montemayor','1960-09-19',86,1.8,'10023','femenino',NULL,NULL,NULL,NULL,NULL),(24,'Suzette','Pettey','Pettey','1961-09-21',79,1.74,'10024','femenino',NULL,NULL,NULL,NULL,NULL),(25,'Prasadram','Heyers','Heyers','1957-08-14',91,1.95,'10025','masculino',NULL,NULL,NULL,NULL,NULL),(26,'Yongqiao','Berztiss','Berztiss','1960-07-23',75,1.91,'10026','masculino',NULL,NULL,NULL,NULL,NULL),(27,'Divier','Reistad','Reistad','1952-06-29',57,1.6,'10027','femenino',NULL,NULL,NULL,NULL,NULL),(28,'Domenick','Tempesti','Tempesti','1963-07-11',62,1.72,'10028','masculino',NULL,NULL,NULL,NULL,NULL),(29,'Otmar','Herbst','Herbst','1961-04-24',77,1.6,'10029','masculino',NULL,NULL,NULL,NULL,NULL),(30,'Elvis','Demeyer','Demeyer','1958-05-21',93,1.64,'10030','masculino',NULL,NULL,NULL,NULL,NULL),(31,'Karsten','Joslin','Joslin','1953-07-28',95,1.52,'10031','masculino',NULL,NULL,NULL,NULL,NULL),(32,'Jeong','Reistad','Reistad','1961-02-26',84,1.6,'10032','femenino',NULL,NULL,NULL,NULL,NULL),(33,'Arif','Merlo','Merlo','1954-09-13',92,1.77,'10033','masculino',NULL,NULL,NULL,NULL,NULL),(34,'Bader','Swan','Swan','1957-04-04',69,1.56,'10034','masculino',NULL,NULL,NULL,NULL,NULL),(35,'Alain','Chappelet','Chappelet','1956-06-06',57,1.55,'10035','masculino',NULL,NULL,NULL,NULL,NULL),(36,'Adamantios','Portugali','Portugali','1961-09-01',62,1.99,'10036','masculino',NULL,NULL,NULL,NULL,NULL),(37,'Pradeep','Makrucki','Makrucki','1954-05-30',60,1.75,'10037','masculino',NULL,NULL,NULL,NULL,NULL),(38,'Huan','Lortz','Lortz','1954-10-01',97,1.88,'10038','masculino',NULL,NULL,NULL,NULL,NULL),(39,'Alejandro','Brender','Brender','1959-10-01',92,1.78,'10039','masculino',NULL,NULL,NULL,NULL,NULL),(40,'Weiyi','Meriste','Meriste','1959-09-13',97,1.84,'10040','femenino',NULL,NULL,NULL,NULL,NULL),(41,'Uri','Lenart','Lenart','1959-08-27',80,1.9,'10041','femenino',NULL,NULL,NULL,NULL,NULL),(42,'Magy','Stamatiou','Stamatiou','1956-02-26',69,1.91,'10042','femenino',NULL,NULL,NULL,NULL,NULL),(43,'Yishay','Tzvieli','Tzvieli','1960-09-19',65,1.95,'10043','masculino',NULL,NULL,NULL,NULL,NULL),(44,'Mingsen','Casley','Casley','1961-09-21',90,1.8,'10044','femenino',NULL,NULL,NULL,NULL,NULL),(45,'Moss','Shanbhogue','Shanbhogue','1957-08-14',90,1.97,'10045','masculino',NULL,NULL,NULL,NULL,NULL),(46,'Lucien','Rosenbaum','Rosenbaum','1960-07-23',85,1.53,'10046','masculino',NULL,NULL,NULL,NULL,NULL),(47,'Zvonko','Nyanchama','Nyanchama','1952-06-29',78,1.65,'10047','masculino',NULL,NULL,NULL,NULL,NULL),(48,'Florian','Syrotiuk','Syrotiuk','1963-07-11',76,1.58,'10048','masculino',NULL,NULL,NULL,NULL,NULL),(49,'Basil','Tramer','Tramer','1961-04-24',99,1.55,'10049','femenino',NULL,NULL,NULL,NULL,NULL),(50,'Yinghua','Dredge','Dredge','1958-05-21',78,1.54,'10050','masculino',NULL,NULL,NULL,NULL,NULL),(51,'Hidefumi','Caine','Caine','1953-07-28',54,1.84,'10051','masculino',NULL,NULL,NULL,NULL,NULL),(52,'Heping','Nitsch','Nitsch','1961-02-26',85,1.59,'10052','masculino',NULL,NULL,NULL,NULL,NULL),(53,'Sanjiv','Zschoche','Zschoche','1954-09-13',52,1.53,'10053','femenino',NULL,NULL,NULL,NULL,NULL),(54,'Mayumi','Schueller','Schueller','1957-04-04',75,1.72,'10054','masculino',NULL,NULL,NULL,NULL,NULL),(55,'Georgy','Dredge','Dredge','1956-06-06',97,1.61,'10055','masculino',NULL,NULL,NULL,NULL,NULL),(56,'Brendon','Bernini','Bernini','1961-09-01',91,1.63,'10056','femenino',NULL,NULL,NULL,NULL,NULL),(58,'Ebbe','Callaway','Callaway','1954-05-30',91,1.96,'10057','femenino',NULL,NULL,NULL,NULL,NULL),(103,'Danna','Flores','Lopez','1955-02-24',65,1.89,'101111','femenino',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `pacientes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-07 23:08:05
