CREATE DEFINER=`root`@`localhost` TRIGGER `actualizacion_en_cascada_direcciones_empleados` AFTER UPDATE ON `empleados` FOR EACH ROW BEGIN
    UPDATE direcciones_empleados SET empleados_id = NEW.empleados_id WHERE empleados_id = OLD.empleados_id;
END