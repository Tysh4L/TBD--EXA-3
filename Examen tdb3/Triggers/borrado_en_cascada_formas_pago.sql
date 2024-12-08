CREATE DEFINER=`root`@`localhost` TRIGGER `borrado_en_cascada_formas_pago` AFTER DELETE ON `formas_pago` FOR EACH ROW BEGIN
    DELETE FROM formas_pago_pacientes WHERE forma_pago_id = OLD.forma_pago_id;
END