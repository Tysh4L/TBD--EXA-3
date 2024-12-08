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
END