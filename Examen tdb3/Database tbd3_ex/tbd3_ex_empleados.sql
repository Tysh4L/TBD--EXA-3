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
-- Table structure for table `empleados`
--

DROP TABLE IF EXISTS `empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleados` (
  `empleados_id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `apellido_pat` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `apellido_mat` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `titulo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `fecha_nacimiento` date NOT NULL,
  `otros` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  PRIMARY KEY (`empleados_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleados`
--

LOCK TABLES `empleados` WRITE;
/*!40000 ALTER TABLE `empleados` DISABLE KEYS */;
INSERT INTO `empleados` VALUES (1,'Alejandro','McAlpine','McAlpine','Senior Engineer','1953-09-19',NULL),(2,'Breannda','Billingsley','Billingsley','Staff','1961-10-15',NULL),(3,'Tse','Herber','Herber','Senior Engineer','1962-10-19',NULL),(4,'Anoosh','Peyn','Peyn','Engineer','1961-11-02',NULL),(5,'Gino','Leonhardt','Leonhardt','Senior Engineer','1952-08-06',NULL),(6,'Udi','Jansch','Jansch','Senior Staff','1959-04-07',NULL),(7,'Satosi','Awdeh','Awdeh','Staff','1963-04-14',NULL),(8,'Kwee','Schusler','Schusler','Senior Engineer','1952-11-13',NULL),(9,'Claudi','Stavenow','Stavenow','Senior Staff','1953-01-07',NULL),(10,'Charlene','Brattka','Brattka','Staff','1962-11-26',NULL),(11,'Margareta','Bierman','Bierman','Assistant Engineer','1960-09-06',NULL),(12,'Reuven','Garigliano','Garigliano','Assistant Engineer','1955-08-20',NULL),(13,'Hisao','Lipner','Lipner','Engineer','1958-01-21',NULL),(14,'Hironoby','Sidou','Sidou','Senior Engineer','1952-05-15',NULL),(15,'Shir','McClurg','McClurg','Engineer','1954-02-23',NULL),(16,'Mokhtar','Bernatsky','Bernatsky','Staff','1955-08-28',NULL),(17,'Gao','Dolinsky','Dolinsky','Engineer','1960-03-09',NULL),(18,'Erez','Ritzmann','Ritzmann','Senior Engineer','1952-06-13',NULL),(19,'Mona','Azuma','Azuma','Senior Staff','1964-04-18',NULL),(20,'Danel','Mondadori','Mondadori','Engineer','1959-12-25',NULL),(21,'Kshitij','Gils','Gils','Senior Staff','1961-10-05',NULL),(22,'Premal','Baek','Baek','Staff','1957-12-03',NULL),(23,'Zhongwei','Rosen','Rosen','Senior Staff','1960-12-17',NULL),(24,'Parviz','Lortz','Lortz','Staff','1963-09-09',NULL),(25,'Vishv','Zockler','Zockler','Engineer','1959-07-23',NULL),(26,'Tuval','Kalloufi','Kalloufi','Senior Engineer','1960-05-25',NULL),(27,'Kenroku','Malabarba','Malabarba','Staff','1962-11-07',NULL),(28,'Somnath','Foote','Foote','Engineer','1962-11-19',NULL),(29,'Xinglin','Eugenio','Eugenio','Technique Leader','1959-07-23',NULL),(30,'Jungsoon','Syrzycki','Syrzycki','Engineer','1954-02-25',NULL),(31,'Prueba','Ficticio','Gomez','Prueba','2003-09-06',NULL);
/*!40000 ALTER TABLE `empleados` ENABLE KEYS */;
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
