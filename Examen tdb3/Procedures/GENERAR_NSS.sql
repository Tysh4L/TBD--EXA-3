CREATE DEFINER=`root`@`localhost` PROCEDURE `generar_nss`(
    IN paciente_id INT,
    IN año_nacimiento INT,
    IN fecha_nacimiento DATE,
    OUT nss_completo VARCHAR(20)
)
BEGIN
    DECLARE num_oficina VARCHAR(2);
    DECLARE año_inscripcion VARCHAR(2);
    DECLARE año_nac VARCHAR(2);
    DECLARE num_imss VARCHAR(4);
    DECLARE digito_verif INT;
    DECLARE ultimo_consecutivo INT;
    DECLARE rango_min INT;
    DECLARE rango_max INT;
    DECLARE nss_base VARCHAR(10);

	-- Generar número de oficina (entre 00 y 100)
    SET num_oficina = LPAD(FLOOR(RAND() * 101), 2, '0');
    
    SET rango_min = año_nacimiento + 15;
    SET rango_max = YEAR(CURDATE());
    
    SET año_inscripcion = SUBSTRING(LPAD(FLOOR(RAND() * (rango_max - rango_min + 1)) + rango_min, 4, '0'), 3, 2);
    
    -- Obtener los últimos dos dígitos del año de nacimiento
    SET año_nac = SUBSTRING(LPAD(año_nacimiento, 4, '0'), 3, 2);
    
    SELECT consecutivo INTO ultimo_consecutivo FROM consecutivos ORDER BY consecutivo DESC LIMIT 1;

	-- Registrar el nuevo número consecutivo en la tabla "consecutivos"
    SET num_imss = ultimo_consecutivo + 1;
    INSERT INTO consecutivos (consecutivo) VALUES (num_imss);
    
    -- Concatenar las partes del NSS base
    SET nss_base = CONCAT(num_oficina, año_inscripcion, año_nac, LPAD(num_imss, 4, '0'));
	SET digito_verif = digito_verificador(nss_base);
    
    -- Construccipon del NSS completo
    SET nss_completo = CONCAT(SUBSTRING(nss_base, 1, 2), '-', 
    SUBSTRING(nss_base, 3, 2), '-', SUBSTRING(nss_base, 5, 2), '-', 
    (nss_base, 7, 4), '-', digito_verif);
END;
