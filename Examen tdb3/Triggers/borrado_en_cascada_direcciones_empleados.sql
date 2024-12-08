CREATE DEFINER=`root`@`localhost` TRIGGER `borrado_en_cascada_direcciones_empleados` AFTER DELETE ON `empleados` FOR EACH ROW BEGIN
    DELETE FROM direcciones_empleados WHERE empleados_id = OLD.empleados_id;
END