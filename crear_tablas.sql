-- Suscriptores
create table Suscriptores(id_susc char(5),nombre_susc varchar(25),tel_susc varchar(12), id_domicilio char(5),
 primary key(id_susc),
 foreign key(id_domicilio) references 	Domicilio_Suscriptores(id_domicilio)
)
create table Domicilio_Suscriptores(id_domicilio char(5),calle varchar(25),colonia varchar(25),cp char(5),no_ext int,
 primary key(id_domicilio)
)
-- Publicaciones
create table Publicaciones()
-- Editoriales
create table Editoriales()
-- Escritores
create table Escritores()
create table generos()