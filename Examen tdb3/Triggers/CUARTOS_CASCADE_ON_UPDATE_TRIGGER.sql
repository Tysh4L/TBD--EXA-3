CREATE DEFINER=`root`@`localhost` TRIGGER `cuartos_BEFORE_UPDATE` BEFORE UPDATE ON `cuartos` FOR EACH ROW BEGIN
   UPDATE `pacientes` SET `paciente_id` = NEW.paciente_id WHERE `paciente_id` = OLD.paciente_id;
END