CREATE DATABASE aerolinea; 

CREATE TABLE piloto 
( 
  id 	      SERIAL NOT NULL,
  licencia    VARCHAR(20) NOT NULL, 
  nombre      VARCHAR(100) NOT NULL, 
  horas_vuelo NUMERIC(10) NOT NULL 
); 

CREATE TABLE vuelo 
(
  id     SERIAL NOT NULL,
  vuelo  NUMERIC(10) NOT NULL, 
  inicio INTEGER NOT NULL, 
  final  INTEGER NOT NULL
); 

CREATE TABLE programacion 
( 
  id           SERIAL NOT NULL,
  id_vuelo     INTEGER NOT NULL, 
  fecha        TIMESTAMP WITHOUT TIME ZONE NOT NULL, 
  hora_salida  VARCHAR(10) NOT NULL, 
  hora_llegada VARCHAR(10) NOT NULL, 
  id_piloto    INTEGER NOT NULL 
); 

CREATE TABLE destino 
( 
  id          SERIAL NOT NULL,
  destino     VARCHAR(50) NOT NULL, 
  descripcion VARCHAR(100) NOT NULL
); 