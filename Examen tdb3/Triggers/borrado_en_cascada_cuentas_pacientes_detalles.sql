CREATE DEFINER=`root`@`localhost` TRIGGER `borrado_en_cascada_cuentas_pacientes_detalles` AFTER DELETE ON `cuentas_pacientes` FOR EACH ROW BEGIN
    DELETE FROM cuentas_pacientes_detalles WHERE cuentas_pacientes_id = OLD.cuentas_pacientes_id;
END