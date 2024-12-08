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
-- Dumping routines for database 'tbd3_ex'
--
/*!50003 DROP FUNCTION IF EXISTS `DIGITO_VERIFICADOR` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `DIGITO_VERIFICADOR`(NSS VARCHAR(10)) RETURNS int
    DETERMINISTIC
BEGIN
    DECLARE SUMA INT DEFAULT 0;
    DECLARE MULTIPLICADOR INT;
    DECLARE DIGITO INT;
    DECLARE TEMP INT;
    DECLARE I INT DEFAULT 1;
    
    -- Secuencia de multiplicadores
    SET MULTIPLICADOR = 1;
    
    WHILE I <= CHAR_LENGTH(NSS) DO
        SET DIGITO = CAST(SUBSTRING(NSS, I, 1) AS UNSIGNED);
        SET TEMP = DIGITO * MULTIPLICADOR;
        
        -- Si el resultado es mayor o igual a 10, sumar sus dígitos
        IF TEMP >= 10 THEN
            SET TEMP = (TEMP DIV 10) + (TEMP MOD 10);
        END IF;
        
        SET SUMA = SUMA + TEMP;
        
        -- Alternar multiplicador entre 1 y 2
        SET MULTIPLICADOR = CASE WHEN MULTIPLICADOR = 1 THEN 2 ELSE 1 END;
        
        SET I = I + 1;
    END WHILE;
    
    -- Calcular lo que falta para la siguiente decena
    RETURN (CEIL(SUMA / 10) * 10) - SUMA;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ACTUALIZAR_PAGOS` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ACTUALIZAR_PAGOS`(IN paciente_id INT)
BEGIN
    SELECT 
        tipo_pago, 
        COALESCE(SUM(monto), 0) AS monto
    FROM pagos
    WHERE paciente_id = paciente_id
    GROUP BY tipo_pago
    UNION ALL
    SELECT 
        'SIN PAGO' AS tipo_pago, 
        COALESCE(SUM(monto), 0) AS monto
    FROM pagos
    WHERE paciente_id = paciente_id AND tipo_pago IS NULL;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GENERAR_NSS` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GENERAR_NSS`(
    IN PACIENTE_ID INT,
    IN AÑO_NACIMIENTO INT,
    IN FECHA_NACIMIENTO DATE,
    OUT NSS_COMPLETO VARCHAR(20)
)
BEGIN
    DECLARE NUM_OFICINA VARCHAR(2);
    DECLARE AÑO_INSCRIPCION VARCHAR(2);
    DECLARE AÑO_NAC VARCHAR(2);
    DECLARE NUM_IMSS VARCHAR(4);
    DECLARE DIGITO_VERIF INT;
    DECLARE ULTIMO_CONSECUTIVO INT;
    DECLARE RANGO_MIN INT;
    DECLARE RANGO_MAX INT;
    DECLARE NSS_BASE VARCHAR(10);

    -- Generar número de oficina aleatorio
    SET NUM_OFICINA = LPAD(FLOOR(RAND() * 101), 2, '0');
    
    -- Calcular rango de inscripción
    SET RANGO_MIN = AÑO_NACIMIENTO + 15;
    SET RANGO_MAX = YEAR(CURDATE());
    
    -- Generar año de inscripción aleatorio dentro del rango
    SET AÑO_INSCRIPCION = SUBSTRING(LPAD(FLOOR(RAND() * (RANGO_MAX - RANGO_MIN + 1)) + RANGO_MIN, 4, '0'), 3, 2);
    
    -- Año de nacimiento (últimos dos dígitos)
    SET AÑO_NAC = SUBSTRING(LPAD(AÑO_NACIMIENTO, 4, '0'), 3, 2);
    
    -- Obtener el último consecutivo
    SELECT CONSECUTIVO INTO ULTIMO_CONSECUTIVO FROM CONSECUTIVOS ORDER BY CONSECUTIVO DESC LIMIT 1;

    -- Generar número IMSS y actualizar el consecutivo
    SET NUM_IMSS = ULTIMO_CONSECUTIVO + 1;
    INSERT INTO CONSECUTIVOS (CONSECUTIVO) VALUES (NUM_IMSS);
    
    -- Construir NSS base
    SET NSS_BASE = CONCAT(NUM_OFICINA, AÑO_INSCRIPCION, AÑO_NAC, LPAD(NUM_IMSS, 4, '0'));
    
    -- Calcular dígito verificador
    SET DIGITO_VERIF = DIGITO_VERIFICADOR(NSS_BASE);
    
    -- Completar NSS
    SET NSS_COMPLETO = CONCAT(SUBSTRING(NSS_BASE, 1, 2), '-', SUBSTRING(NSS_BASE, 3, 2), '-', SUBSTRING(NSS_BASE, 5, 2), '-', SUBSTRING(NSS_BASE, 7, 4), '-', DIGITO_VERIF);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-07 23:08:06
