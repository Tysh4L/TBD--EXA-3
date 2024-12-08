CREATE DEFINER=`root`@`localhost` TRIGGER `actualizacion_en_cascada_formas_pago` AFTER UPDATE ON `formas_pago` FOR EACH ROW BEGIN
    UPDATE formas_pago_pacientes SET forma_pago_id = NEW.forma_pago_id WHERE forma_pago_id = OLD.forma_pago_id;
END