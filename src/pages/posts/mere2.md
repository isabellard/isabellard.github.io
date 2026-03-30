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




