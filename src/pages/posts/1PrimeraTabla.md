---
layout: ../../components/MarkdownPost.astro
title: "Primera tabla SQL"
categoria: "sql"
author: 
  name: "Isabella"
  url: "/PrimeraTabla.png"
image:
  url: "/PrimeraTabla.png"
  alt: "xx"
tags: [""]
pubDate: 'May 16, 2025'
likes: '6.3k'
comments: '99'
---
Primera tabla SQl
---
Realizado por: Isabella Rodríguez Mendoza
---

```sql
-- Script para crear una base de datos y tablas relacionadas con estudiantes, películas y juegos.
CREATE DATABASE isabellaRodriguez;
USE isabellaRodriguez;
CREATE TABLE estudiante (
    id INT,
    nombre VARCHAR(120),
    edad INT,
    fechadenacimiento TIMESTAMP,
    tienepareja BOOLEAN
);
SELECT * FROM estudiante;
INSERT INTO estudiante VALUES (010, 'Isabella Rodriguez Mendoza', 18, '2006-12-24', false ); 
DROP TABLE estudiante; 
DELETE FROM estudiante WHERE id =001; 

UPDATE estudiante
SET nombre = 'Tatiana', edad = 34, tienepareja = true
WHERE fechadenacimiento = '2006-12-24 00:00:00';


CREATE TABLE pelicula (
    id INT,
    nombre VARCHAR(120),
    anio YEAR,
    director VARCHAR(120),
    actorprincipal VARCHAR (120),
    genero BOOLEAN
);

CREATE TABLE juego (
    id INT,
    nombre VARCHAR(120),
    plataforma VARCHAR(120),
    genero VARCHAR(120),
    anio VARCHAR (120),
    cantjugador INT,
    esmultijugador BOOLEAN, 
    esfreetoplay BOOLEAN
); 	

SELECT * FROM pelicula;
INSERT INTO pelicula VALUES (001, 'Kung Fu Panda', 2008, 'Jennifer Yuh Nelson', 'Po', false ); 
 
```



