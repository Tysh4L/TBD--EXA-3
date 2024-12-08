CREATE DEFINER=`root`@`localhost` TRIGGER `borrado_en_cascada_direcciones_pacientes` AFTER DELETE ON `pacientes` FOR EACH ROW BEGIN
    DELETE FROM direcciones_pacientes WHERE paciente_id = OLD.paciente_id;
END