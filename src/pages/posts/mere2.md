---
layout: ../../components/MarkdownPost.astro
title: "Taller MER 2"
categoria: "modelado"
author: 
  name: "Isabella"
  url: "/Transporte.png"
image:
  url: "/Transporte.png"
  alt: "xx"
tags: [""]
pubDate: 'Oct 15, 2025'
likes: '6.3k'
comments: '49'
---

Ejercicio de modelado entidad-relación 24 de Febrero
--
Realizado por: Luna Calderon, Lina Patiño, Daniela Serrato e Isabella Rodríguez
--

--
***Transporte***
--
Se desea informatizar la gestión de una empresa de transportes que reparte paquetes por
toda Colombia. Los encargados de llevar los paquetes son los Conductores, de los que se
quiere guardar el número de cédula de ciudadanía, nombre, teléfono, dirección, salario y
ciudad en la que vive. De los paquetes transportados interesa conocer el código de paquete,
descripción, destinatario y dirección del destinatario. Un conductor distribuye muchos
paquetes, y un paquete sólo puede ser distribuido por un conductor. De las ciudades a las
que llegan los paquetes interesa guardar el código de ciudad y el nombre. Un paquete sólo
puede llegar a una ciudad. Sin embargo, a una ciudad pueden llegar varios paquetes. De los
camiones que llevan los Conductores, interesa conocer la matrícula, modelo, tipo y potencia.
Un conductor puede conducir diferentes camiones en fechas diferentes, y un camión puede
ser conducido por varios Conductores.
--
Constrúyase un diagrama E-R. Indique cuáles son las entidades identificadas con los
atributos, llaves primarias y llaves foráneas de cada una. Realice la reducción a tablas
respectiva y documente todas las decisiones que se hagan acerca de restricciones de
correspondencia
--
![Transporte](/Transporte.png)
--
***Bienes Raíces***
--
Una empresa de bienes raíces realiza un seguimiento de las casas en venta y de los clientes
que buscan comprar casas. Una casa en venta puede estar listada con esta firma o con otra
diferente. Estar “listado” con una firma significa que el dueño de la casa tiene un contrato
con un agente que trabaja para esa firma. Un agente de bienes raíces de la empresa se
caracteriza por tener un nombre (compuesto por Primer nombre, Segundo Nombre, Primer
Apellido y Segundo Apellido), cédula de ciudadanía, género, fecha de nacimiento (sobre la
cual se obtiene la edad), una cantidad de ventas realizadas en el último mes y un código de
agente único. 
--
Cada casa en el mercado tiene precio, dirección, propietario y una lista de
características, como el número de dormitorios, baños, tipo de calefacción,
electrodomésticos, tamaño del garaje, etc. Esta lista puede ser diferente para diferentes
casas, y algunas características pueden estar presentes en algunas casas, pero faltar en otras.
Asimismo, cada cliente tiene preferencias que se expresan en los mismos términos (el
número de dormitorios, baños, etc.). Aparte de estas preferencias, los clientes especifican el
rango de precios de las casas que les interesan.
Constrúyase un diagrama E-R. Indique cuáles son las entidades identificadas con los
atributos, llaves primarias y llaves foráneas de cada una
--
![BienesRaices](/BienesRaices.png)
--
--
***Proveedor***
--
Considere el siguiente esquema de base de datos (estructura de tablas y relaciones):
--
• *Proveedor*(SName, ItemName, Price): el proveedor SName vende el artículo
ItemName al precio Price
--
• *Cliente* (CName, Address): el CName del cliente vive en Address.
--
• *Pedido* (CName, SName, ItemName, Qty): el cliente CName ha pedido la
cantidad del artículo ItemName al proveedor SName
--
• *Elemento* (ItemName, Description): información sobre los elementos.
--
Dibuje el diagrama E-R del que podría haberse derivado el esquema anterior. Especifique las
llaves primarias y foráneas por entidad y los atributos que las componen. Realice la
reducción a tablas respectiva y documente todas las decisiones que se hagan acerca de
restricciones de correspondencia
--
![Proovedor](/Proveedor.png)

--
***Biblioteca***
--
Realizar el diseño conceptual (mediante un diagrama E-R) de las operaciones de una
biblioteca comunitaria local. La biblioteca tiene libros, CD, cintas, etc., que se prestan a
diferentes usuarios. Estos últimos cuentan con un número de cuenta único, direcciones,
números telefónicos, fecha de nacimiento, entre otros. Si un artículo prestado está vencido
(por fuera de la fecha límite de entrega), acumula penalización. Algunos usuarios son
menores de edad (menores a 18 años), por lo que deben tener patrocinadores que sean
responsables de pagar las multas (o reemplazar un libro en caso de pérdida)
--
![Biblioteca](/Biblioteca2.png)
--
***Supermercado***
--
Una cadena de supermercados está interesada en construir un sistema de apoyo a la decisión
con el que pueda analizar las ventas de diferentes productos en diferentes supermercados
en diferentes momentos. Cada supermercado está ubicado en área geográfica: una ciudad,
que está en un estado, que está en una región. El tiempo en el que realizó una o más ventas
se puede medir en días, meses y años. Los productos tienen nombres y categorías
(productos, productos enlatados, etc.). 
--
![Supermercado](/Supermercado.png)
--
***Banco***
--
Describa con sus propias palabras el contexto que describe el diagrama proveído,
indicando claramente atributos, llaves primarias y llaves foráneas de cada una de
las entidades allí descritas
--
![Banco](/Cliente.png)
El diagrama de la imagen muestra como la entidad sucursal tiene los atributos ciudad, activo y 
nombre la cual es el atributo clave; la entidad prestamos posee los atributos importe y el número 
de préstamo el cual es el atributo clave; la entidad cliente posee la información general como ciudad, 
calle, nombre, nombre y el atributo clave el id; la entidad empleado contiene nombre, numero de teléfono, 
fecha de comienzo, id como el atributo clave, antigüedad como atributos derivados, nombre del subordinado 
como atributo multivaluados; la entidad cuenta contiene saldo, número de cuenta como el atributo clave; 
la entidad cuenta de ahorro contiene tipo de interés y la entidad cuenta corriente contiene 
descubierto; la entidad débil pago contiene fecha de pago, importe pagado, y la clave parcial número de pago.

La entidad sucursal se relaciona con el préstamo y a su vez el préstamo se relaciona con cliente 
por medio del prestatario, la relación entre cliente y préstamo es prestar, además, cliente 
se relaciona con empleado por medio de banquero y consejero, esta relación tiene como 
atributo tipo; en empleado existen los roles de jefe y trabajador; cliente también está 
relacionado con cuenta por medio de impositor, así mismo impositor tiene como atributo fecha 
de acceso, cuenta es exclusiva de las entidades cuenta de ahorros y cuenta corriente.
--
***Oficina***
--
Una oficina de registro de una universidad mantiene datos acerca de las siguientes entidades:
(a) asignaturas, incluyendo el número, título, programa, y prerrequisitos; 
--
(b) ofertas de
asignaturas, incluyendo número de asignatura, año, semestre, número de sección,
profesor(es), horarios y aulas; 
--
(c) estudiantes, incluyendo id-estudiante, nombre y programa;
y 
--
(d) profesores, incluyendo número de identificación, nombre, departamento y título.
Además, la matrícula de los estudiantes en asignaturas y las notas concedidas a estudiantes
en cada asignatura en la que están matriculados se deben modelar adecuadamente.
--
Constrúyase un diagrama E-R para la oficina de registro. Indique cuáles son las entidades
identificadas con los atributos, llaves primarias y llaves foráneas de cada una. Realice la
reducción a tablas respectiva y documente todas las decisiones que se hagan acerca de
restricciones de correspondencia.
--
![Oficina](/Oficina.png)




