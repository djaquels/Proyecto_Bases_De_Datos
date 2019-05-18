-- Algunas Reglas de Negocio y Constraints
ALTER TABLE Publicaciones
ADD CHECK ( frecuencia in (1,2,3,4))
-- Validar fechas validas para los campos Date y DateTime
ALTER TABLE Suscripciones
ADD CHECK ( fecha_inicial BETWEEN '1990/01/01'AND GETDATE())
-- 
ALTER TABLE Escribe_En
ADD CHECK  ( fecha_inicio BETWEEN '1990/01/01' AND dateadd(dd, 2, getdate()) )
-- 
ALTER TABLE Trabaja_En
ADD CHECK ( fecha_contrato BETWEEN '1990/01/01' AND dateadd(dd, 2, getdate()) )
-- Validacion para numeros de telefono
ALTER TABLE Suscriptores
ADD CHECK (isnumeric(tel_susc) = 1  and (tel_susc > 5 and tel_susc < 11) )
--
ALTER TABLE Editoriales
ADD CHECK (isnumeric(telefono_editorial) = 1  and (telefono_editorial > 5 and telefono_editorial < 11) )
-- Creacion de DEFAULTS 
CREATE DEFAULT 
fecha_inicial as getdate()
-- y lo asociamos a las columnas necesarias con
sp_bindefault fecha_inicial, "Suscripciones.fecha_inicial"
sp_bindefault fecha_inicial, "Trabaja_En.fecha_contrato"