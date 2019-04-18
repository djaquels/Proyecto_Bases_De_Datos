CREATE PROCEDURE sp_borra_publicacion @id char(5)
AS
BEGIN
DELETE FROM Publicaciones WHERE id_publicacion = @id
END