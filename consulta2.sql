SELECT nombre_publicacion,DATEDIFF(yy,fecha_inicio,convert(date,getdate())) as tiempo_trabajando_años,genero FROM Escribe_En EN, Publicaciones P, Escritores E, Generos_Lit G
WHERE EN.id_escritor = (SELECT id_escritor  FROM Escritores WHERE nombre_escritor = 'Bernardo Esquinca')
AND P.id_publicacion = EN.id_publicacion
AND G.id_genero = E.id_genero
AND E.id_escritor = EN.id_escritor
