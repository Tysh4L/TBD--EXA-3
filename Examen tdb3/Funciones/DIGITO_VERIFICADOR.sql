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
END