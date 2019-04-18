CREATE PROCEDURE sp_inserta_publicacion @nombre varchar(25),@ideditorial char(5),frecuencia int
AS
BEGIN
DECLARE @id char(5)
SELECT @id = select 'edi' + convert(varchar(2),count(id_publicacion)) FROM Publicaciones
INSERT INTO Publicaciones (id_publicacion),id_editorial,nombre_publicacion,frecuencia) VALUES (@id,@ideditorial,@nombre,@frecuencia)
END