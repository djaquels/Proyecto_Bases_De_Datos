-- Suscriptores
create table Suscriptores(id_susc char(5),nombre_susc varchar(25),tel_susc varchar(12), id_domicilio char(5),
 primary key(id_susc),
 foreign key(id_domicilio) references 	Domicilio_Suscriptores(id_domicilio)
)
create table Domicilio_Suscriptores(id_domicilio char(5),calle varchar(25),colonia varchar(25),cp char(5),no_ext int,
 primary key(id_domicilio)
)
-- Publicaciones
create table Publicaciones(id_publicacion char(5),id_editorial char(5),nombre_publicacion varchar(25), frecuencia int,
 primary key(id_publicacion),
 foreign key(id_editorial) references Editoriales(id_editorial)
)
-- Editoriales
create table Editoriales(id_editorial char(5), id_domicilio char(5), nombre_editorial varchar(25), telefono_editorial varchar(15),
 primary key (id_editorial)
 foreign key (id_domicilio) references Domicilio_Editoriales(id_domicilio)
)
create table Domicilio_Editoriales(id_domicilio char(5), calle varchar(20), colonia varchar(20), cp varchar(5),
 primary key(id_domicilio)
)
-- Escritores
create table Escritores(id_escritor char(5),id_domicilio char(5), id_genero char(5), nombre_escritor varchar(25),
 primary key(id_escritor),
 foreign key(id_domicilio) references Domicilio_Escritores(id_domicilio) 
 foreign key(id_genero) references Generos_Lit(id_genero) 

)
create table Generos_Lit(id_genero char(5), genero varchar(15),
 primary key(id_genero)
)
create table Domicilio_Escritores(id_domicilio char(5), calle_esc varchar(25), colonia_esc varchar(25), cp_esc varchar(25),
 primary key(id_domicilio)
)
-- Relaciones Entre Entidades (del Modelo Conceptual) 
create table Trabaja_En(id_editorial char(5), id_escritor char(5), fecha_contrato Date,
 primary key(id_editorial,id_escritor)
 foreign key(id_editorial) references Editoriales(id_editorial),
 foreign key (id_escritor) references Escritores(id_escritor)
)

create table Suscripciones(id_susc char(5), id_publicacion char(5), folio int , fecha_inicial Date, duracion int,
 primary key(id_susc,id_publicacion,folio),
 foreign key (id_susc) references Suscriptores(id_susc),
 foreign key (id_publicacion) references Publicaciones(id_publicacion)
)
create table Escribe_En(id_escritor char(5), id_publicacion char(5), fecha_inicio Date ,
 primary key(id_escritor, id_publicacion),
 foreign key(id_escritor) references Escritores(id_escritor),
 foreign key(id_publicacion) references Publicaciones(id_publicacion)
)
-- Catalogos Auxiliares