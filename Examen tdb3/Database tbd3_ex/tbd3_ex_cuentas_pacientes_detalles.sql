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
-- Table structure for table `cuentas_pacientes_detalles`
--

DROP TABLE IF EXISTS `cuentas_pacientes_detalles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cuentas_pacientes_detalles` (
  `cuentas_pacientes_det_id` int NOT NULL AUTO_INCREMENT,
  `cuentas_pacientes_id` int DEFAULT NULL,
  `detalle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT 'Diagnostico',
  `cantidad` double NOT NULL,
  `costo_total` double NOT NULL,
  PRIMARY KEY (`cuentas_pacientes_det_id`) USING BTREE,
  KEY `cuentas_pacientes_id` (`cuentas_pacientes_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuentas_pacientes_detalles`
--

LOCK TABLES `cuentas_pacientes_detalles` WRITE;
/*!40000 ALTER TABLE `cuentas_pacientes_detalles` DISABLE KEYS */;
INSERT INTO `cuentas_pacientes_detalles` VALUES (2,2,'Tratamiento',5,420352),(3,3,'Tratamiento',4,803455),(4,4,'Tratamiento',6,863833),(5,5,'Tratamiento',2,835504),(6,6,'Tratamiento',4,845256),(7,7,'Tratamiento',3,553474),(8,8,'Tratamiento',3,1299575),(9,9,'Tratamiento',2,1144618),(10,10,'Tratamiento',2,1033289),(11,11,'Tratamiento',5,775124),(12,12,'Tratamiento',5,666403),(13,13,'Tratamiento',4,527460),(14,14,'Tratamiento',6,528996),(15,15,'Tratamiento',4,909453),(16,16,'Tratamiento',3,555734),(17,17,'Tratamiento',4,1318496),(18,18,'Tratamiento',5,903422),(19,19,'Tratamiento',3,584977),(20,20,'Tratamiento',4,968731),(21,21,'Tratamiento',2,721764),(22,22,'Tratamiento',3,1254654),(23,23,'Tratamiento',6,1536903),(24,24,'Tratamiento',3,422753),(25,25,'Tratamiento',4,942310),(26,26,'Tratamiento',3,805018),(27,27,'Tratamiento',6,405645),(28,28,'Tratamiento',6,951084),(29,29,'Tratamiento',6,275126),(30,30,'Tratamiento',3,1113848),(31,31,'Tratamiento',4,824572),(32,32,'Tratamiento',2,844650),(33,33,'Tratamiento',4,1120223),(34,34,'Tratamiento',3,693371),(35,35,'Tratamiento',3,833046),(36,36,'Tratamiento',3,553070),(37,37,'Tratamiento',2,1000135),(38,38,'Tratamiento',2,432208),(39,39,'Tratamiento',3,861206),(40,40,'Tratamiento',3,909114),(41,41,'Tratamiento',4,499014),(42,42,'Tratamiento',5,1186783),(43,43,'Tratamiento',4,401743),(44,44,'Tratamiento',4,716403),(45,45,'Tratamiento',4,606941),(46,46,'Tratamiento',3,1644520),(47,47,'Tratamiento',2,929980),(48,48,'Tratamiento',2,228805),(49,49,'Tratamiento',2,714654),(50,50,'Tratamiento',5,1310219),(51,51,'Tratamiento',3,1274462),(52,52,'Tratamiento',2,155327),(53,53,'Tratamiento',6,1172596),(54,54,'Tratamiento',3,813048),(55,55,'Tratamiento',4,713204),(56,56,'Tratamiento',6,1690560),(57,57,'Tratamiento',2,529090);
/*!40000 ALTER TABLE `cuentas_pacientes_detalles` ENABLE KEYS */;
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
