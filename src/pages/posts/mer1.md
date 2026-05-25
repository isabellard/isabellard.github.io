---
layout: ../../components/MarkdownPost.astro
title: "Taller MER 1"
categoria: "modelado"
author: 
  name: "Isabella"
  url: "/Aviacion.png"
image:
  url: "/Aviacion.png"
  alt: "xx"
tags: [""]
pubDate: 'Feb 09, 2025'
likes: '12.3k'
comments: '119'
---
Ejercicio de modelado entidad-relación 19 de Febrero
--
Realizado por: Luna Calderon e Isabella Rodríguez


--
--
***Aviación:***
--
Una aerolínea requiere una base de datos relacional para registrar sus
operaciones. Las características del negocio son las siguientes:
--
• La aerolínea tiene tres recursos principales: Aviones, pilotos y tripulación.
--
• Los aviones tienen un código (número de cola), un tipo de avión y una base
a donde pertenece y debe regresar cada número de horas.
--
• Los pilotos tienen un código, nombre y horas de vuelo.
--
• Los miembros de la tripulación tienen un código, nombre y teléfonos.
--
• Pilotos y tripulación tienen una base a la que regresan después de cada
jornada.
--
• Los vuelos van desde un origen a un destino a una hora concreta y tiene un
número de vuelo.
--
![Aviacion](/Aviacion.png)

--
***Biblioteca***
--
Crear un diseño E/R que permita gestionar los datos de una
biblioteca de modo que:
--
• Las personas socias de la biblioteca disponen de un código de
socio y además necesitar almacenar su cédula, dirección,
teléfono, nombre y apellidos.
--
• La biblioteca almacena libros que presta a los socios, de ellos
se almacena su título, año en el que se escribió el libro,
nombre completo del autor (o autores), año en que se editó,
en qué editorial fue y el ISBN.
--
• Necesitamos poder indicar si un libro en la biblioteca está
dañado o no
--
![Biblioteca](/Biblioteca.png)

--
***Streaming***
--
La Universidad El Bosque desea lanzar una plataforma
de streaming, en la cual cada estudiante tenga acceso a
contenido como; series, películas, documentales, video ,
entre otros. El sistema de información debe almacenar
los datos de cada uno de los tipos de contenido,
productor, año de lanzamiento, categoría a la que
pertenecen, usuarios de la plataforma, gustos,
categorías más vistas, información personal del usuario,
historial de búsquedas, historial de videos vistos. Etc.
Diseñe un modelo Entidad – Relación que cumpla con el
mínimo de esta solicitud.
--
![Plataforma](/Plataforma.png)

