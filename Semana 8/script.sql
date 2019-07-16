CREATE TABLE persona
( 
  --si la llave es compuesta se indica así primary key (atributo1, atributo 2)  
  cedula     CHAR(11) NOT NULL PRIMARY KEY, 
  nombre     VARCHAR(50) NOT NULL, 
  apellido1  VARCHAR(50) NOT NULL, 
  apellido2  VARCHAR(50) NOT NULL,  
  correo     VARCHAR(100) NOT NULL, 
  telefono   CHAR(9) NULL, 
  direccion VARCHAR(200) NOT NULL 
);


CREATE TABLE estudiante 
  ( 
     cedula CHAR (11) NOT NULL, 
     carnet INT NOT NULL, 
     nombre VARCHAR (50) 
  );

ALTER TABLE estudiante 
  ADD COLUMN persona_id INT; 

ALTER TABLE estudiante 
  ADD CONSTRAINT pk_cedula_estudiante PRIMARY KEY (cedula); 

ALTER TABLE estudiante 
ADD CONSTRAINT fk_cedula FOREIGN KEY (persona_id) REFERENCES persona(id);

ALTER TABLE estudiante 
  ADD CONSTRAINT unique_carnet UNIQUE (carnet);

CREATE TABLE profesores 
  ( 
     cedula       CHAR (11) NOT NULL, 
     especialidad VARCHAR (50) NOT NULL 
  ); 

ALTER TABLE carrera 
  ADD CONSTRAINT pk_carrera PRIMARY KEY (id_carrera);
