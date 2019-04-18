CREATE PROCEDURE sp_actualiza_publicacion @id char(5) , @nombre varchar(25), @frecuencia int
AS
BEGIN
UPDATE Publicaciones
SET nombre_publicacion = @nombre , frecuencia = @frecuencia
WHERE id_publicacion = @id
END