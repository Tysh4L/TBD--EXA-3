CREATE DEFINER=`root`@`localhost` TRIGGER `borrado_en_cascada_cuartos` AFTER DELETE ON `pacientes` FOR EACH ROW BEGIN
    DELETE FROM cuartos WHERE paciente_id = OLD.paciente_id;
END