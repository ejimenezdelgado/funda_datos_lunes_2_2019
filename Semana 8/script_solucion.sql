CREATE DATABASE taller_clase_8;

CREATE TABLE persona
( 
  id serial NOT NULL PRIMARY KEY,
  --si la llave es compuesta se indica así primary key (atributo1, atributo 2)  
  cedula     CHAR(11) NOT NULL, 
  nombre     VARCHAR(50) NOT NULL, 
  apellido1  VARCHAR(50) NOT NULL, 
  apellido2  VARCHAR(50) NOT NULL,  
  correo     VARCHAR(100) NOT NULL, 
  telefono   CHAR(9) NULL, 
  direccion VARCHAR(200) NOT NULL 
);


CREATE TABLE estudiante 
( 
  id serial NOT NULL PRIMARY KEY,
  id_persona INTEGER NOT NULL, 
  carnet INT NOT NULL, 
  nombre VARCHAR (50) 
);

DROP TABLE estudiante;

ALTER TABLE estudiante 
  ADD CONSTRAINT fk_estudiante_persona FOREIGN KEY (id_persona) REFERENCES persona(id); 

ALTER TABLE estudiante 
ADD CONSTRAINT unique_carnet UNIQUE (carnet);


CREATE TABLE profesores 
( 
  id serial NOT NULL PRIMARY KEY,
  cedula       CHAR (11) NOT NULL, 
  especialidad VARCHAR (50) NOT NULL 
); 


CREATE TABLE programa (
  id serial NOT NULL PRIMARY KEY,
  fecha timestamp without time zone,
  estado CHAR(1) DEFAULT 'C'
);
ALTER TABLE programa ADD CONSTRAINT chk_estado CHECK (estado in('A','C'));


CREATE TABLE curso (
  id               serial NOT NULL PRIMARY KEY,
  cedula           CHAR(11) NOT NULL, 
  id_programa      INTEGER NOT NULL, 
  nombre           VARCHAR(50) NOT NULL,
  creditos         INTEGER NOT NULL DEFAULT 0, 
  tipo             CHAR(1) DEFAULT 'T',
  periodo          INTEGER NOT NULL DEFAULT 1, 
  fecha            timestamp without time zone,
  estado           CHAR(1) DEFAULT 'C'
);
ALTER TABLE curso ADD CONSTRAINT chk_estado CHECK (estado in('A','C'));
ALTER TABLE curso ADD CONSTRAINT chk_tipo CHECK (tipo in('T','P'));
ALTER TABLE curso ADD CONSTRAINT chk_periodo CHECK (periodo in(1,2,3));

CREATE TABLE contenido (
  id INTEGER NOT NULL, 
  id_curso     INTEGER NOT NULL,
  contenido    VARCHAR(50) NOT NULL,
 PRIMARY KEY (id,id_curso),
 FOREIGN KEY (id_curso) REFERENCES curso(id)
);

CREATE TABLE grupo (
  id INTEGER NOT NULL PRIMARY KEY, 
  id_curso INTEGER NOT NULL, 
  numero_grupo INTEGER NOT NULL,
  FOREIGN KEY (id_curso) REFERENCES curso(id) 
);

CREATE TABLE grupo_estudiante (
id_grupo INTEGER NOT NULL,
id_estudiante INTEGER NOT NULL, 
nota INTEGER NOT NULL CHECK (nota > 0 and nota <=100),
estado CHAR(1) DEFAULT 'R' CHECK (estado in('A','R')),
PRIMARY KEY (id_grupo,id_estudiante),
FOREIGN KEY (id_grupo) REFERENCES grupo(id),
FOREIGN KEY (id_estudiante) REFERENCES estudiante(id)
);

