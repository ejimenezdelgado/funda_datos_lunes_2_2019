--• Inserte el tipo de servicio OCIO.
INSERT INTO tipo_servicio 
            (nombre_servicio) 
VALUES      ( 'Ocio' ); 

SELECT * 
FROM   tipo_servicio;


--• Inserte una reserva de la 
--habitación 101 para el cliente 12345
-- para las noches del 2 al 4 de julio 
--de 2009. El código de la reserva es
-- autonumérico.
INSERT INTO reserva_habitacion 
            (fecha_entrada, 
             fecha_salida, 
             iva, 
             id_habitacion, 
             id_cliente) 
VALUES      ( '02-07-2009', 
              '04-07-2009', 
              0.13, 
              1, 
              1);


SELECT * 
FROM   reserva_habitacion;


 --Actualizaciones 
--• Actualice el teléfono del cliente 
--12345. Su nuevo número es 123456789.
SELECT * 
FROM   cliente
	


UPDATE cliente
SET    telefono='123456789' 
WHERE  identificacion='12345';

--• Actualice el precio de los servicios incrementándolos en un 2%.
UPDATE servicio 
SET    precio=precio+precio*0.02; 

SELECT *,precio::NUMERIC(10,5) 
FROM   servicio;


--Borrados 
--• Borre la reserva de la habitación 101 realizada anteriormente.
DELETE
FROM   reserva_habitacion
WHERE  id=8

SELECT * 
FROM reserva_habitacion

DELETE 
FROM   reserva_habitacion 
WHERE  id_cliente=1
AND    fecha_entrada='02-07-2009' 
AND    id_habitacion=1

--• Borre los tipos de servicio que no 
--tienen servicios definidos.
DELETE
FROM   tipo_servicio 
WHERE  id NOT IN 
       ( 
              SELECT id_tipo_servicio 
              FROM   servicio
        );
        
SELECT * 
FROM   tipo_servicio 


-- CONSULTAS 
-- • Crea una vista que devuelva los clientes cuyo apellido 
incluya la sílaba “le” ordenados por su identificador.
SELECT   *
FROM     cliente 
WHERE    apellido1 LIKE '%le%' OR apellido2 LIKE '%le%'
ORDER BY identificacion;

-- • Crea una consulta que devuelva los clientes, ordenados por su primer apellido, que tengan alguna 
--observación anotada.
SELECT   *
FROM     cliente 
WHERE    observaciones IS NOT NULL    
ORDER BY apellido1;       

--• Crea una consulta que devuelva los servicios cuyo precio supere los 5 dolares ordenados por su código de servicio.
SELECT   *
FROM     servicio 
WHERE    (precio::NUMERIC>5) 
ORDER BY id; 

-- • Cree una consulta que devuelva las 
---habitaciones reservadas para el día 24 de 
--marzo de 2009.
SELECT id,fecha_entrada,fecha_salida
FROM   reserva_habitacion 
WHERE  '24/03/2009' BETWEEN 
fecha_entrada AND fecha_salida;

-- • Cree una consulta que devuelva
-- los clientes procedentes de España y
-- Francia.
SELECT * 
FROM   cliente 
WHERE  id_pais IN (2, 
                3);

--•	Cree una consulta que devuelva los
-- distintos clientes que han utilizado 
-- el servicio de comedor.

SELECT DISTINCT (c.id),c.nombre 
FROM   cliente c JOIN reserva_habitacion rh
		  ON c.id=rh.id_cliente
		 JOIN gastos g
		  ON rh.id=g.id_reserva
		 JOIN servicio s
		  ON g.id_servicio=s.id	
		 JOIN tipo_servicio ts
		  ON s.id_tipo_servicio=ts.id
WHERE 	id_tipo_servicio=1

--Cree una consulta que devuelva las características de cada
-- habitación reservada. 
SELECT r.id_habitacion,t.categoria,t.camas,t.exterior,t.salon,t.terraza
FROM tipo_habitacion t JOIN habitacion h ON
h.id_tipo_habitacion=t.id JOIN reserva_habitacion r ON 
r.id_habitacion=h.id
		

--Cree una consulta que devuelva el
 --nº de habitaciones por categoría de 
 --habitación.

SELECT COUNT(h.num_habitacion),
       th.categoria,
       camas
FROM habitacion h JOIN tipo_habitacion th
		  ON h.id_tipo_habitacion=
		      th.id
GROUP BY th.categoria,camas

-- Cree una consulta que devuelva los precios de los 
--distintos tipos de habitación por temporada. 
SELECT t.tipo,p.id_tipo_habitacion,p.precio,
t.fecha_inicio, t.fecha_final
FROM precio_habitacion p INNER JOIN 
temporada t ON p.id_temporada = t.id


-- •	Cree una consulta que devuelva los clientes con el mismo 
-- primer apellido.
SELECT 
  COUNT(apellido1),apellido1
FROM 
  cliente
GROUP BY apellido1
 HAVING COUNT(apellido1) > 1

--•	Cree una consulta que devuelva el nº de clientes por nacionalidad.
SELECT 
  COUNT(cliente.id_pais),pais
FROM 
  cliente, 
  pais
WHERE 
  cliente.id_pais = pais.id
GROUP BY pais

--•	Cree una consulta que devuelva el nº de habitaciones por categoría de habitación.
SELECT 
  COUNT(tipo_habitacion.categoria), 
  tipo_habitacion.categoria
FROM 
  tipo_habitacion, 
  habitacion
WHERE 
  tipo_habitacion.id = habitacion.id_tipo_habitacion
GROUP BY tipo_habitacion.categoria;


--•	Cree una consulta que devuelva el nº de servicios que se ofrecen por tipo de servicio. Restrinja la salida para aquellos tipos de servicio que ofrezcan más de un servicio
SELECT 
  COUNT(servicio.id),nombre_servicio
FROM 
  servicio, 
  tipo_servicio
WHERE 
  servicio.id_tipo_servicio = tipo_servicio.id
GROUP BY tipo_servicio.id,nombre_servicio
HAVING COUNT(servicio.id) =1

--•	Cree una consulta que devuelva el gasto en servicios realizado por cada reserva.


SELECT 
  reserva_habitacion.id, 
  SUM(gastos.precio)
FROM 
  reserva_habitacion, 
  gastos
WHERE 
  reserva_habitacion.id = gastos.id_reserva
GROUP BY  reserva_habitacion.id;


--•	Cree una consulta que devuelva el precio del servicio más caro y del más barato. 
  SELECT 
    MAX(servicio.precio),
    MIN(servicio.precio)
  FROM 
    servicio;