CREATE DEFINER=`root`@`localhost` TRIGGER `borrado_en_cascada_cuentas_pacientes` AFTER DELETE ON `pacientes` FOR EACH ROW BEGIN
    DELETE FROM cuentas_pacientes WHERE paciente_id = OLD.paciente_id;
END