SELECT frecuencia,nombre_editorial,telefono_editorial,calle,colonia,cp FROM Publicaciones P , Editoriales E , Domicilio_Editoriales D WHERE nombre_publicacion = 'Futbol Total'
AND E.id_editorial = P.id_editorial
AND D.id_domicilio = E.id_domicilio