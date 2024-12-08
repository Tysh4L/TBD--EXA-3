CREATE DEFINER=`root`@`localhost` TRIGGER `cuartos_BEFORE_DELETE` BEFORE DELETE ON `cuartos` FOR EACH ROW BEGIN
   DELETE FROM `pacientes` WHERE `paciente_id` = OLD.paciente_id;
END