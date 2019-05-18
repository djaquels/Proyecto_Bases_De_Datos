-- Se guarda la integridad referencia al borrar datos de un Suscriptor se borra tambien en Suscripciones
CREATE TRIGGER SuscInt ON Suscriptores
FOR DELETE
AS
BEGIN
 DELETE 
 FROM Suscripciones  
 FROM deleted
 WHERE Suscripciones.id_susc = deleted.id_susc
END
-- Se guarda la integridad al borrar datos de una Publicacion
CREATE TRIGGER BorraPublicacion ON Publicaciones
FOR DELETE
AS
BEGIN
 DELETE 
 FROM Suscripciones  
 FROM deleted
 WHERE Suscripciones.id_publicacion = deleted.id_publicacion
 DELETE
 FROM Escribe_En
 FROM deleted
 WHERE Escribe_En.id_publicacion = deleted.id_publicacion 
END 
-- Cuando se borra un escritor se tiene que borrar en Trabaja_En
CREATE TRIGGER BorraEscritor ON Escritores
FOR DELETE 
AS
BEGIN
 DELETE
 FROM Trabaja_En
 FROM deleted
 WHERE deleted.id_escritor = Trabaja_En.id_escritor
END
-- 
CREATE TRIGGER BorraEditorial ON Editoriales
FOR DELETE
AS
BEGIN
DELETE
FROM Trabaja_En
FROM deleted
WHERE Trabaja_En.id_editorial = deleted.id_editorial
DELETE 
FROM Publicaciones
FROM deleted
WHERE Publicaciones.id_editorial = deleted.id_editorial
END