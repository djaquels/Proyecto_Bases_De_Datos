-- Se guarda la integridad referencia al borrar datos de un Suscriptor se borra tambien en Suscripciones
CREATE TRIGGER ON Suscriptor
FOR DELETE
BEGIN
 DELETE 
 FROM Suscripciones WHERE id_suscriptor = deleted.id_suscriptor 
END