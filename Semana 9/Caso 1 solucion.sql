CREATE DATABASE empresa;

CREATE TABLE departamento
(
	id_departamento INT NOT NULL PRIMARY KEY,
	nombre_departamento VARCHAR(30) NOT NULL,
	id_administrador INT NOT NULL,
	id_locacion INT NOT NULL
);

CREATE TABLE empleado(
	id_empleado INT NOT NULL PRIMARY KEY,
	nombre VARCHAR(20) NOT NULL,
	apellido VARCHAR(25) NOT NULL,
	email VARCHAR(25) NOT NULL,
	telefono VARCHAR(20) NOT NULL,
	fecha_contrato DATE NOT NULL,
	id_trabajo VARCHAR(20) NOT NULL,
	salario INT NOT NULL,
	porcentaje_comision INT NOT NULL,
	id_administrador INT NOT NULL,
	id_departamento INT NOT NULL
);

CREATE TABLE historia_trabajo(
	id_empleado INT NULL,
	fecha_ingreso DATE NOT NULL,
	fecha_salida DATE NULL,
	id_trabajo VARCHAR(10) NOT NULL,
	id_departamento INT NOT NULL
);

CREATE TABLE locacion(
	id_locacion INT NOT NULL PRIMARY KEY,
	direccion VARCHAR(25) NOT NULL,
	codigo_postal VARCHAR(12) NOT NULL,
	ciudad VARCHAR(30) NOT NULL,
	provincia char(2) NOT NULL,
	id_pais char(2) NOT NULL
);

CREATE TABLE pais(
	id_pais char(2) NOT NULL PRIMARY KEY,
	nombre_pais VARCHAR(40) NOT NULL,
	id_region INT NULL
);

CREATE TABLE region(
	id_region INT NOT NULL PRIMARY KEY,
	nombre_region VARCHAR(25) NULL
);

CREATE TABLE trabajo(
	id_trabajo INT NOT NULL,
	titulo_trabajo VARCHAR(35) NOT NULL,
	min_salario NUMERIC NULL,
	max_salario NUMERIC NULL
);

INSERT INTO departamento (id_departamento, nombre_departamento, id_administrador, id_locacion) VALUES (30, 'Ventas', 201, 89);
INSERT INTO departamento (id_departamento, nombre_departamento, id_administrador, id_locacion) VALUES (50, 'Ventas', 201, 89);
INSERT INTO departamento (id_departamento, nombre_departamento, id_administrador, id_locacion) VALUES (60, 'Ventas', 201, 89);
INSERT INTO departamento (id_departamento, nombre_departamento, id_administrador, id_locacion) VALUES (61, 'Contaduría', 201, 89);
INSERT INTO departamento (id_departamento, nombre_departamento, id_administrador, id_locacion) VALUES (80, 'Finanzas', 211, 90);

INSERT INTO empleado (id_empleado, nombre, apellido, email, telefono, fecha_contrato, id_trabajo, salario, porcentaje_comision, id_administrador, id_departamento) VALUES (100, 'Steven', 'King', 'SKING', '515-123-4567', '1987-06-17', '1001', 24000, 0, 0, 90);
INSERT INTO empleado (id_empleado, nombre, apellido, email, telefono, fecha_contrato, id_trabajo, salario, porcentaje_comision, id_administrador, id_departamento) VALUES (101, 'Neena', 'Kochhar', 'NKOCHHAR', '515.123.4568', '1987-06-18', '1001', 17000, 0, 100, 90);
INSERT INTO empleado (id_empleado, nombre, apellido, email, telefono, fecha_contrato, id_trabajo, salario, porcentaje_comision, id_administrador, id_departamento) VALUES (102, 'Lex', 'De Haan', 'LDEHAA', '515.123.4569', '1987-06-19', ' 1001', 17000, 0, 100, 90);
INSERT INTO empleado (id_empleado, nombre, apellido, email, telefono, fecha_contrato, id_trabajo, salario, porcentaje_comision, id_administrador, id_departamento) VALUES (103, 'Alexander', 'Hunold', 'AHUNOLD', '590.423.4567', '1987-06-20', '1002', 9000, 0, 102, 60);
INSERT INTO empleado (id_empleado, nombre, apellido, email, telefono, fecha_contrato, id_trabajo, salario, porcentaje_comision, id_administrador, id_departamento) VALUES (104, 'Bruce', 'Ernst', 'BERNST', '590.423.4568 ', '1987-06-21', '1002', 6000, 0, 103, 60);
INSERT INTO empleado (id_empleado, nombre, apellido, email, telefono, fecha_contrato, id_trabajo, salario, porcentaje_comision, id_administrador, id_departamento) VALUES (105, 'David', 'Austin', 'DAUSTI', '590.423.4569  ', '1987-06-22', '1002', 4800, 0, 103, 60);
INSERT INTO empleado (id_empleado, nombre, apellido, email, telefono, fecha_contrato, id_trabajo, salario, porcentaje_comision, id_administrador, id_departamento) VALUES (106, 'Valli', 'Pataballa', 'VPATABAL', '590.423.4560  ', '1987-06-23', '1002', 4800, 0, 103, 60);
INSERT INTO empleado (id_empleado, nombre, apellido, email, telefono, fecha_contrato, id_trabajo, salario, porcentaje_comision, id_administrador, id_departamento) VALUES (107, 'Diana', 'Lorentz', 'DLORENTZ', '590.423.5567  ', '1987-06-24', '1002', 4200, 0, 103, 60);
INSERT INTO empleado (id_empleado, nombre, apellido, email, telefono, fecha_contrato, id_trabajo, salario, porcentaje_comision, id_administrador, id_departamento) VALUES (108, 'Nancy', 'Greenberg', 'NGREENBE', '515.124.4569', '1987-06-25', '1002  ', 12000, 0, 101, 100);
INSERT INTO empleado (id_empleado, nombre, apellido, email, telefono, fecha_contrato, id_trabajo, salario, porcentaje_comision, id_administrador, id_departamento) VALUES (109, 'Daniel', 'Faviet', 'DFAVIET', '515.124.4169  ', '1987-06-26', '1001', 9000, 0, 108, 100);
INSERT INTO empleado (id_empleado, nombre, apellido, email, telefono, fecha_contrato, id_trabajo, salario, porcentaje_comision, id_administrador, id_departamento) VALUES (110, 'John', 'Chen', 'JCHE', '515.124.4269  ', '1987-06-27', '1001', 8200, 0, 108, 100);
INSERT INTO empleado (id_empleado, nombre, apellido, email, telefono, fecha_contrato, id_trabajo, salario, porcentaje_comision, id_administrador, id_departamento) VALUES (111, 'Ismael', 'Sciarra', 'ISCIARRA', '515.124.4369', '1987-06-28', '1001', 7700, 0, 108, 100);
INSERT INTO empleado (id_empleado, nombre, apellido, email, telefono, fecha_contrato, id_trabajo, salario, porcentaje_comision, id_administrador, id_departamento) VALUES (112, 'Jose Manuel', 'Urman', 'JMURMA', '515.124.4469', '1987-06-29', '1001', 7800, 0, 108, 100);
INSERT INTO empleado (id_empleado, nombre, apellido, email, telefono, fecha_contrato, id_trabajo, salario, porcentaje_comision, id_administrador, id_departamento) VALUES (113, 'Luis', 'Popp', 'LPOPP', '515.124.4567', '1987-06-30', '1001', 6900, 0, 108, 100);
INSERT INTO empleado (id_empleado, nombre, apellido, email, telefono, fecha_contrato, id_trabajo, salario, porcentaje_comision, id_administrador, id_departamento) VALUES (114, 'Den', 'Raphaely', 'DRAPHEAL', '515.127.4561  ', '1987-07-01', '1001 ', 11000, 0, 100, 30);
INSERT INTO empleado (id_empleado, nombre, apellido, email, telefono, fecha_contrato, id_trabajo, salario, porcentaje_comision, id_administrador, id_departamento) VALUES (115, 'Alexander', 'Khoo', 'AKHOO ', '515.127.4562  ', '1987-07-02', '1002 ', 3100, 0, 114, 30);
INSERT INTO empleado (id_empleado, nombre, apellido, email, telefono, fecha_contrato, id_trabajo, salario, porcentaje_comision, id_administrador, id_departamento) VALUES (116, 'Shelli', 'Baida', 'SBAIDA ', '515.127.4563  ', '1987-07-03', '1002 ', 2900, 0, 114, 30);
INSERT INTO empleado (id_empleado, nombre, apellido, email, telefono, fecha_contrato, id_trabajo, salario, porcentaje_comision, id_administrador, id_departamento) VALUES (117, 'Sigal', 'Tobias', 'STOBIAS', '515.127.4564  ', '1987-07-04', '1002 ', 2800, 0, 114, 30);
INSERT INTO empleado (id_empleado, nombre, apellido, email, telefono, fecha_contrato, id_trabajo, salario, porcentaje_comision, id_administrador, id_departamento) VALUES (118, 'Guy', 'Himuro', 'GHIMURO', '515.127.4565  ', '1987-07-05', '1002 ', 2600, 0, 114, 30);
INSERT INTO empleado (id_empleado, nombre, apellido, email, telefono, fecha_contrato, id_trabajo, salario, porcentaje_comision, id_administrador, id_departamento) VALUES (119, 'Karen', 'Colmenares', 'KCOLMENA', '515.127.4566  ', '1987-07-06', '1002 ', 2500, 0, 114, 30);
INSERT INTO empleado (id_empleado, nombre, apellido, email, telefono, fecha_contrato, id_trabajo, salario, porcentaje_comision, id_administrador, id_departamento) VALUES (120, 'Matthew', 'Weiss', 'MWEISS', '650.123.1234  ', '1987-07-07', '1002', 8000, 0, 100, 50);
INSERT INTO empleado (id_empleado, nombre, apellido, email, telefono, fecha_contrato, id_trabajo, salario, porcentaje_comision, id_administrador, id_departamento) VALUES (121, 'Adam', 'Fripp', 'AFRIPP', '650.123.2234  ', '1987-07-08', '1002', 8200, 0, 100, 50);
INSERT INTO empleado (id_empleado, nombre, apellido, email, telefono, fecha_contrato, id_trabajo, salario, porcentaje_comision, id_administrador, id_departamento) VALUES (122, 'Payam', 'Kaufling', 'PKAUFLI', '650.123.3234  ', '1987-07-09', '1002', 7900, 0, 100, 50);
INSERT INTO empleado (id_empleado, nombre, apellido, email, telefono, fecha_contrato, id_trabajo, salario, porcentaje_comision, id_administrador, id_departamento) VALUES (123, 'Shanta', 'Vollman', 'SVOLLMA', '650.123.4234  ', '1987-07-10', '1002 ', 6500, 0, 100, 50);
INSERT INTO empleado (id_empleado, nombre, apellido, email, telefono, fecha_contrato, id_trabajo, salario, porcentaje_comision, id_administrador, id_departamento) VALUES (124, 'Kevin', 'Mourgos', 'KMOURS', '650.123.5234  ', '1987-07-11', '1002', 5800, 0, 100, 50);
INSERT INTO empleado (id_empleado, nombre, apellido, email, telefono, fecha_contrato, id_trabajo, salario, porcentaje_comision, id_administrador, id_departamento) VALUES (125, 'Julia', 'Nayer', 'JNAYER ', '650.124.1214  ', '1987-07-12', '1001 ', 3200, 0, 120, 50);
INSERT INTO empleado (id_empleado, nombre, apellido, email, telefono, fecha_contrato, id_trabajo, salario, porcentaje_comision, id_administrador, id_departamento) VALUES (126, 'Irene', 'Mikkilineni', 'IMIKKILI', '650.124.1224  ', '1987-07-13', '1001 ', 2700, 0, 120, 50);
INSERT INTO empleado (id_empleado, nombre, apellido, email, telefono, fecha_contrato, id_trabajo, salario, porcentaje_comision, id_administrador, id_departamento) VALUES (127, 'James', 'Landry', 'JLANDRY', '650.124.1334  ', '1987-07-14', '1001 ', 2400, 0, 120, 50);
INSERT INTO empleado (id_empleado, nombre, apellido, email, telefono, fecha_contrato, id_trabajo, salario, porcentaje_comision, id_administrador, id_departamento) VALUES (128, 'Steven', 'Markle', 'SMARKLE', '650.124.1434  ', '1987-07-15', '1001', 2200, 0, 120, 50);
INSERT INTO empleado (id_empleado, nombre, apellido, email, telefono, fecha_contrato, id_trabajo, salario, porcentaje_comision, id_administrador, id_departamento) VALUES (129, 'Laura', 'Bissot', 'LBISSOT', '650.124.5234  ', '1987-07-16', '1001', 3300, 0, 121, 50);
INSERT INTO empleado (id_empleado, nombre, apellido, email, telefono, fecha_contrato, id_trabajo, salario, porcentaje_comision, id_administrador, id_departamento) VALUES (130, 'Mozhe', 'Atkinson', 'MATKINSO', '650.124.6234  ', '1987-07-17', '1001', 2800, 0, 121, 50);
INSERT INTO empleado (id_empleado, nombre, apellido, email, telefono, fecha_contrato, id_trabajo, salario, porcentaje_comision, id_administrador, id_departamento) VALUES (131, 'James', 'Marlow', 'JAMRLOW', '650.124.7234  ', '1987-07-18', '1001', 2500, 0, 121, 50);
INSERT INTO empleado (id_empleado, nombre, apellido, email, telefono, fecha_contrato, id_trabajo, salario, porcentaje_comision, id_administrador, id_departamento) VALUES (132, 'TJ', 'Olson', 'TJOLSO', '650.124.8234 ', '1987-07-19', '1001', 2100, 0, 121, 50);
INSERT INTO empleado (id_empleado, nombre, apellido, email, telefono, fecha_contrato, id_trabajo, salario, porcentaje_comision, id_administrador, id_departamento) VALUES (133, 'Jason', 'Mallin', 'JMALLI', '650.127.1934  ', '1987-07-20', '1001', 3300, 0, 122, 50);
INSERT INTO empleado (id_empleado, nombre, apellido, email, telefono, fecha_contrato, id_trabajo, salario, porcentaje_comision, id_administrador, id_departamento) VALUES (134, 'Michael', 'Rogers', 'MROGERS', '650.127.1834 ', '1987-07-21', '1001', 2900, 0, 122, 50);
INSERT INTO empleado (id_empleado, nombre, apellido, email, telefono, fecha_contrato, id_trabajo, salario, porcentaje_comision, id_administrador, id_departamento) VALUES (135, 'Ki', 'Gee', 'KGEE', '650.127.1734 ', '1987-07-22', '1001', 2400, 0, 122, 50);
INSERT INTO empleado (id_empleado, nombre, apellido, email, telefono, fecha_contrato, id_trabajo, salario, porcentaje_comision, id_administrador, id_departamento) VALUES (136, 'Hazel', 'Philtanker', 'HPHILTA', '650.127.1634 ', '1987-07-23', '1001', 2200, 0, 122, 50);
INSERT INTO empleado (id_empleado, nombre, apellido, email, telefono, fecha_contrato, id_trabajo, salario, porcentaje_comision, id_administrador, id_departamento) VALUES (137, 'Renske', 'Ladwig', 'RLADWIG ', '650.121.1234 ', '1987-07-24', '1001', 3600, 0, 123, 50);
INSERT INTO empleado (id_empleado, nombre, apellido, email, telefono, fecha_contrato, id_trabajo, salario, porcentaje_comision, id_administrador, id_departamento) VALUES (138, 'Stephen', 'Stiles', 'SSTILES', '650.121.2034 ', '1987-07-25', '1001', 3200, 0, 123, 50);
INSERT INTO empleado (id_empleado, nombre, apellido, email, telefono, fecha_contrato, id_trabajo, salario, porcentaje_comision, id_administrador, id_departamento) VALUES (139, 'John', 'Seo ', 'JSEO ', '650.121.2019 ', '1987-07-26', '1001', 2700, 0, 123, 50);
INSERT INTO empleado (id_empleado, nombre, apellido, email, telefono, fecha_contrato, id_trabajo, salario, porcentaje_comision, id_administrador, id_departamento) VALUES (140, 'Joshua', 'Patel', 'JPATEL', '650.121.1834  ', '1987-07-27', '1001', 2500, 0, 123, 50);
INSERT INTO empleado (id_empleado, nombre, apellido, email, telefono, fecha_contrato, id_trabajo, salario, porcentaje_comision, id_administrador, id_departamento) VALUES (141, 'Trenna', 'Rajs ', 'TRAJS ', '650.121.8009 ', '1987-07-28', '1001', 3500, 0, 124, 50);
INSERT INTO empleado (id_empleado, nombre, apellido, email, telefono, fecha_contrato, id_trabajo, salario, porcentaje_comision, id_administrador, id_departamento) VALUES (142, 'Curtis', 'Davies', 'CDAVIES', '650.121.2994 ', '1987-07-29', '1001', 3100, 0, 124, 50);
INSERT INTO empleado (id_empleado, nombre, apellido, email, telefono, fecha_contrato, id_trabajo, salario, porcentaje_comision, id_administrador, id_departamento) VALUES (143, 'Randall', 'Matos ', 'RMATOS', '650.121.2874 ', '1987-07-30', '1001', 2600, 0, 124, 50);
INSERT INTO empleado (id_empleado, nombre, apellido, email, telefono, fecha_contrato, id_trabajo, salario, porcentaje_comision, id_administrador, id_departamento) VALUES (144, 'Peter', 'Vargas', 'PVARGAS', '650.121.2004', '1987-07-31', '1001', 2500, 0, 124, 50);
INSERT INTO empleado (id_empleado, nombre, apellido, email, telefono, fecha_contrato, id_trabajo, salario, porcentaje_comision, id_administrador, id_departamento) VALUES (145, 'John', 'Russell', 'JRUSSEL', '011.44.1344.429268', '1987-08-01', '1002', 14000, 0, 100, 80);

INSERT INTO historia_trabajo (id_empleado, fecha_ingreso, fecha_salida, id_trabajo, id_departamento) VALUES (100, '1987-12-01', NULL, '1001', 61);
INSERT INTO historia_trabajo (id_empleado, fecha_ingreso, fecha_salida, id_trabajo, id_departamento) VALUES (100, '1987-12-01', NULL, '1001', 61);
INSERT INTO historia_trabajo (id_empleado, fecha_ingreso, fecha_salida, id_trabajo, id_departamento) VALUES (100, '1987-12-01', NULL, '1001', 61);

INSERT INTO locacion (id_locacion, direccion, codigo_postal, ciudad, provincia, id_pais) VALUES (89, 'Frente al Parque', '21001', 'Quesada', 'Al', 'C2');
INSERT INTO locacion (id_locacion, direccion, codigo_postal, ciudad, provincia, id_pais) VALUES (90, 'A un costado de la Plaza', '21009', 'Palmera', 'Al', 'C2');
INSERT INTO locacion (id_locacion, direccion, codigo_postal, ciudad, provincia, id_pais) VALUES (91, 'Frente al Cementerio', '322540', 'San Francisco', 'SJ', 'C2');

INSERT INTO pais (id_pais, nombre_pais, id_region) VALUES ('C1', 'Indiana', 1002);
INSERT INTO pais (id_pais, nombre_pais, id_region) VALUES ('C2', 'USA', NULL);
INSERT INTO pais (id_pais, nombre_pais, id_region) VALUES ('C3', 'UK', NULL);
INSERT INTO pais (id_pais, nombre_pais, id_region) VALUES ('C4', 'India', 1001);
INSERT INTO pais (id_pais, nombre_pais, id_region) VALUES ('C5', 'USA', 1007);
INSERT INTO pais (id_pais, nombre_pais, id_region) VALUES ('C6', 'UK', 1003);
INSERT INTO pais (id_pais, nombre_pais, id_region) VALUES ('C7', 'Costa Rica', 1009);

INSERT INTO region (id_region, nombre_region) VALUES (1001, 'Sur de Asia');
INSERT INTO region (id_region, nombre_region) VALUES (1002, 'Medio Oeste');
INSERT INTO region (id_region, nombre_region) VALUES (1003, 'Noreste de Europa');
INSERT INTO region (id_region, nombre_region) VALUES (1007, 'América del Norte');
INSERT INTO region (id_region, nombre_region) VALUES (1009, 'América del Norte');

INSERT INTO trabajo (id_trabajo, titulo_trabajo, min_salario, max_salario) VALUES (101, 'Oficial', 210000, 400000);
INSERT INTO trabajo (id_trabajo, titulo_trabajo, min_salario, max_salario) VALUES (102, 'Recepcionista', 250000, 425000);

ALTER TABLE departamento ADD CONSTRAINT FK_departamento_locacion FOREIGN KEY(id_locacion)
REFERENCES locacion (id_locacion);

ALTER TABLE historia_trabajo ADD  CONSTRAINT FK_historia_trabajo_departamento FOREIGN KEY(id_departamento)
REFERENCES departamento (id_departamento);

ALTER TABLE historia_trabajo ADD  CONSTRAINT FK_historia_trabajo_empleado FOREIGN KEY(id_empleado)
REFERENCES empleado (id_empleado);

ALTER TABLE locacion ADD  CONSTRAINT FK_locacion_pais FOREIGN KEY(id_pais)
REFERENCES pais (id_pais);

ALTER TABLE pais ADD  CONSTRAINT FK_pais_region FOREIGN KEY(id_region)
REFERENCES region (id_region);

ALTER TABLE trabajo ADD  CONSTRAINT FK_trabajo_empleado FOREIGN KEY(id_trabajo)
REFERENCES empleado (id_empleado);


