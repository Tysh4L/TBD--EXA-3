CREATE DEFINER=`root`@`localhost` TRIGGER `actualizacion_en_cascada_cuentas_pacientes` AFTER UPDATE ON `pacientes` FOR EACH ROW BEGIN
    UPDATE cuentas_pacientes SET paciente_id = NEW.paciente_id WHERE paciente_id = OLD.paciente_id;
END