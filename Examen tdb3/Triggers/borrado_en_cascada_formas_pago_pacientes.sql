CREATE DEFINER=`root`@`localhost` TRIGGER `borrado_en_cascada_formas_pago_pacientes` AFTER DELETE ON `pacientes` FOR EACH ROW BEGIN
    DELETE FROM formas_pago_pacientes WHERE paciente_id = OLD.paciente_id;
END