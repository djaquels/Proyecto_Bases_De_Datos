SELECT nombre_susc,calle,colonia,cp,no_ext,folio,fecha_inicial,duracion FROM Suscriptores SC,Suscripciones S, Domicilio_Suscriptores D WHERE
id_publicacion = (SELECT id_publicacion FROM Publicaciones WHERE nombre_publicacion = 'Playboy')
AND SC.id_susc = S.id_susc AND D.id_domicilio = SC.id_domicilio