---
layout: ../../components/MarkdownPost.astro
title: "Documentación Fase 2"
categoria: "proyecto"
author: 
  name: "Isabella"
  url: "/geoquestt.png"
image:
  url: "/geoquestt.png"
  alt: "xx"
tags: [""]
pubDate: 'Mar 17, 2025'
likes: '6.3k'
comments: '99'
---
Documentación Fase 2
---
Realizado por: Luna Calderon, Isabella Rodríguez y Nataly Manrique

---


**Análisis de selección de RDBMS**

<iframe 
  src="/Documento de Análisis de selección de RDBMS Geoquest.pdf" 
  width="100%" 
  height="600px"
  style="border: none;"
>
</iframe>

**Implementación de RBMS**
<iframe 
  src="/Implemantacion RBMS Geoquest.pdf" 
  width="100%" 
  height="600px"
  style="border: none;"
>
</iframe>

**Análisis de selección de Sistema Operativo Geoquest**
<iframe 
  src="/Análisis de selección de Sistema Operativo Geoquest.pdf" 
  width="100%" 
  height="600px"
  style="border: none;"
>
</iframe>

**Implementacion de VM**

<iframe 
  src="/Documento de implementación de la VM Geoquest.pdf" 
  width="100%" 
  height="600px"
  style="border: none;"
>
</iframe>

**Script Geoquest**


```sql
/*

GeoQuest Database  

Base de datos del juego GeoQuest. El proyecto almacena información de países, continentes, categorías y plantillas de preguntas para generar dinámicamente retos relacionados con cultura general y geografía. 

Características 
-Gestión de continentes y países. 
-Información detallada de cada país: 
-Capital 
-Idioma 
-Moneda 
-Código telefónico 
-Bandera 
-Población 
-Popularidad 

Requisitos 
MySQL Workbench 

Instalación 

1. Clonar el repositorio 
git clone https://github.com/isabellard/Geoquest 
cd geoquest 
 
2. Importar la base de datos 
Desde MySQL Workbench 
Abrir MySQL Workbench. 
Crear una nueva conexión si es necesario. 
Abrir el archivo geoquest_data.sql. 
Ejecutar el script completo. 


Ejemplo de consulta SQL 

Obtener todos los países de Europa 

SELECT p.nombre, p.capital 
FROM pais p 
JOIN continente c ON p.id_continente = c.id_continente 
WHERE c.nombre = 'Europe'; 
 

<img src="https://flagcdn.com/w320/co.png" alt="Bandera Colombia"> 
 

Desarrollado por Isabella Rodríguez. 

Este proyecto puede utilizarse con fines educativos y de aprendizaje. 
*/

CREATE DATABASE geoquest_db;
USE geoquest_db;


CREATE TABLE continente (
    id_continente TINYINT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL UNIQUE 
);


CREATE TABLE pais (
    id_pais  INT PRIMARY KEY AUTO_INCREMENT,
    id_continente TINYINT NOT NULL,
    nombre VARCHAR(100) NOT NULL UNIQUE,
    capital VARCHAR(100),
    idioma VARCHAR(80),
    moneda VARCHAR(80),
    codigo_telefonico VARCHAR(10),
    bandera_url VARCHAR(255),
    poblacion BIGINT UNSIGNED,
    popularidad TINYINT UNSIGNED
);


CREATE TABLE categoria (
    id_categoria TINYINT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL UNIQUE

);

CREATE TABLE plantilla (
    id_plantilla TINYINT PRIMARY KEY AUTO_INCREMENT,
    id_categoria TINYINT NOT NULL,
    enunciado VARCHAR(255) NOT NULL,
    tipo_respuesta ENUM('text', 'image') NOT NULL,
    dificultad_base TINYINT UNSIGNED NOT NULL

);




-- ─── REGIONES (continentes) ─────────────────────────────────
INSERT INTO continente (id_continente, nombre) VALUES (1, 'North America');
INSERT INTO continente (id_continente, nombre) VALUES (2, 'Africa');
INSERT INTO continente (id_continente, nombre) VALUES (3, 'Oceania');
INSERT INTO continente (id_continente, nombre) VALUES (4, 'South America');
INSERT INTO continente (id_continente, nombre) VALUES (5, 'Europe');
INSERT INTO continente (id_continente, nombre) VALUES (6, 'Asia');
INSERT INTO continente (id_continente, nombre) VALUES (7, 'Antarctica');

-- ─── PAÍSES ──────────────────────────────────────────────────
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (1, 1, 'Anguilla', 'The Valley', 'English', 'Eastern Caribbean dollar', '+1264', 'https://flagcdn.com/w320/ai.png', 16010, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (2, 1, 'Guatemala', 'Guatemala City', 'Spanish', 'Guatemalan quetzal', '+502', 'https://flagcdn.com/w320/gt.png', 18079810, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (3, 2, 'Gambia', 'Banjul', 'English', 'dalasi', '+220', 'https://flagcdn.com/w320/gm.png', 2422712, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (4, 1, 'Mexico', 'Mexico City', 'Spanish', 'Mexican peso', '+52', 'https://flagcdn.com/w320/mx.png', 130575786, 5);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (5, 2, 'Malawi', 'Lilongwe', 'Chewa', 'Malawian kwacha', '+265', 'https://flagcdn.com/w320/mw.png', 20734262, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (6, 3, 'Pitcairn Islands', 'Adamstown', 'English', 'New Zealand dollar', '+64', 'https://flagcdn.com/w320/pn.png', 35, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (7, 4, 'Argentina', 'Buenos Aires', 'Guaraní', 'Argentine peso', '+54', 'https://flagcdn.com/w320/ar.png', 46735004, 5);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (8, 3, 'Guam', 'Hagåtña', 'Spanish', 'United States dollar', '+1671', 'https://flagcdn.com/w320/gu.png', 153836, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (9, 5, 'Bulgaria', 'Sofia', 'Bulgarian', 'Bulgarian lev', '+359', 'https://flagcdn.com/w320/bg.png', 6437360, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (10, 1, 'Dominica', 'Roseau', 'English', 'Eastern Caribbean dollar', '+1767', 'https://flagcdn.com/w320/dm.png', 67408, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (11, 5, 'United Kingdom', 'London', 'English', 'British pound', '+44', 'https://flagcdn.com/w320/gb.png', 69281437, 5);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (12, 3, 'Micronesia', 'Palikir', 'English', 'United States dollar', '+691', 'https://flagcdn.com/w320/fm.png', 105564, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (13, 6, 'Palestine', 'Ramallah', 'Arabic', 'Israeli new shekel', '+970', 'https://flagcdn.com/w320/ps.png', 5483450, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (14, 1, 'Curaçao', 'Willemstad', 'Dutch', 'Netherlands Antillean guilder', '+599', 'https://flagcdn.com/w320/cw.png', 156115, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (15, 2, 'Rwanda', 'Kigali', 'Kinyarwanda', 'Rwandan franc', '+250', 'https://flagcdn.com/w320/rw.png', 14104969, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (16, 6, 'Hong Kong', 'City of Victoria', 'Chinese', 'Hong Kong dollar', '+852', 'https://flagcdn.com/w320/hk.png', 7527500, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (17, 6, 'Uzbekistan', 'Tashkent', 'Russian', 'Uzbekistani soʻm', '+998', 'https://flagcdn.com/w320/uz.png', 37859698, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (18, 6, 'China', 'Beijing', 'Chinese', 'Chinese yuan', '+86', 'https://flagcdn.com/w320/cn.png', 1408280000, 5);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (19, 5, 'Cyprus', 'Nicosia', 'Turkish', 'euro', '+357', 'https://flagcdn.com/w320/cy.png', 1442614, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (20, 1, 'Aruba', 'Oranjestad', 'Dutch', 'Aruban florin', '+297', 'https://flagcdn.com/w320/aw.png', 107566, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (21, 2, 'Réunion', 'Saint-Denis', 'French', 'euro', '+262', 'https://flagcdn.com/w320/re.png', 896175, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (22, 6, 'South Korea', 'Seoul', 'Korean', 'South Korean won', '+82', 'https://flagcdn.com/w320/kr.png', 51159889, 5);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (23, 7, 'Antarctica', 'Does not have', 'Does not have', 'Does not have', '', 'https://flagcdn.com/w320/aq.png', 1300, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (24, 2, 'Somalia', 'Mogadishu', 'Somali', 'Somali shilling', '+252', 'https://flagcdn.com/w320/so.png', 19655000, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (25, 6, 'Lebanon', 'Beirut', 'Arabic', 'Lebanese pound', '+961', 'https://flagcdn.com/w320/lb.png', 5490000, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (26, 2, 'Guinea', 'Conakry', 'French', 'Guinean franc', '+224', 'https://flagcdn.com/w320/gn.png', 14363931, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (27, 6, 'Tajikistan', 'Dushanbe', 'Russian', 'Tajikistani somoni', '+992', 'https://flagcdn.com/w320/tj.png', 10499000, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (28, 6, 'Malaysia', 'Kuala Lumpur', 'Malay', 'Malaysian ringgit', '+60', 'https://flagcdn.com/w320/my.png', 34231700, 30);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (29, 6, 'North Korea', 'Pyongyang', 'Korean', 'North Korean won', '+850', 'https://flagcdn.com/w320/kp.png', 25950000, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (30, 2, 'Sierra Leone', 'Freetown', 'English', 'Leone', '+232', 'https://flagcdn.com/w320/sl.png', 9077691, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (31, 2, 'Benin', 'Porto-Novo', 'French', 'West African CFA franc', '+229', 'https://flagcdn.com/w320/bj.png', 13224860, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (32, 5, 'Italy', 'Rome', 'Italian', 'euro', '+39', 'https://flagcdn.com/w320/it.png', 58927633, 5);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (33, 1, 'Trinidad and Tobago', 'Port of Spain', 'English', 'Trinidad and Tobago dollar', '+1868', 'https://flagcdn.com/w320/tt.png', 1367764, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (34, 6, 'Saudi Arabia', 'Riyadh', 'Arabic', 'Saudi riyal', '+966', 'https://flagcdn.com/w320/sa.png', 35300280, 5);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (35, 1, 'Costa Rica', 'San José', 'Spanish', 'Costa Rican colón', '+506', 'https://flagcdn.com/w320/cr.png', 5309625, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (36, 5, 'Serbia', 'Belgrade', 'Serbian', 'Serbian dinar', '+381', 'https://flagcdn.com/w320/rs.png', 6567783, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (37, 3, 'Tokelau', 'Fakaofo', 'Samoan', 'New Zealand dollar', '+690', 'https://flagcdn.com/w320/tk.png', 2608, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (38, 6, 'Mongolia', 'Ulan Bator', 'Mongolian', 'Mongolian tögrög', '+976', 'https://flagcdn.com/w320/mn.png', 3544835, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (39, 6, 'Brunei', 'Bandar Seri Begawan', 'Malay', 'Singapore dollar', '+673', 'https://flagcdn.com/w320/bn.png', 455500, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (40, 5, 'Hungary', 'Budapest', 'Hungarian', 'Hungarian forint', '+36', 'https://flagcdn.com/w320/hu.png', 9539502, 30);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (41, 2, 'Mozambique', 'Maputo', 'Portuguese', 'Mozambican metical', '+258', 'https://flagcdn.com/w320/mz.png', 34090466, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (42, 3, 'Kiribati', 'South Tarawa', 'Gilbertese', 'Australian dollar', '+686', 'https://flagcdn.com/w320/ki.png', 120740, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (43, 1, 'Haiti', 'Port-au-Prince', 'French', 'Haitian gourde', '+509', 'https://flagcdn.com/w320/ht.png', 11867032, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (44, 6, 'Cambodia', 'Phnom Penh', 'Khmer', 'Cambodian riel', '+855', 'https://flagcdn.com/w320/kh.png', 17577760, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (45, 2, 'Egypt', 'Cairo', 'Arabic', 'Egyptian pound', '+20', 'https://flagcdn.com/w320/eg.png', 107271260, 5);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (46, 6, 'Turkmenistan', 'Ashgabat', 'Russian', 'Turkmenistan manat', '+993', 'https://flagcdn.com/w320/tm.png', 7057841, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (47, 6, 'Oman', 'Muscat', 'Arabic', 'Omani rial', '+968', 'https://flagcdn.com/w320/om.png', 5343630, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (48, 1, 'Jamaica', 'Kingston', 'Jamaican Patois', 'Jamaican dollar', '', 'https://flagcdn.com/w320/jm.png', 2825544, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (49, 5, 'Azerbaijan', 'Baku', 'Azerbaijani', 'Azerbaijani manat', '+994', 'https://flagcdn.com/w320/az.png', 10241722, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (50, 5, 'Slovakia', 'Bratislava', 'Slovak', 'euro', '+421', 'https://flagcdn.com/w320/sk.png', 5413813, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (51, 5, 'Belarus', 'Minsk', 'Russian', 'Belarusian ruble', '+375', 'https://flagcdn.com/w320/by.png', 9109280, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (52, 6, 'Vietnam', 'Hanoi', 'Vietnamese', 'Vietnamese đồng', '+84', 'https://flagcdn.com/w320/vn.png', 101343800, 30);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (53, 1, 'United States Virgin Islands', 'Charlotte Amalie', 'English', 'United States dollar', '+1340', 'https://flagcdn.com/w320/vi.png', 87146, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (54, 5, 'Gibraltar', 'Gibraltar', 'English', 'Gibraltar pound', '+350', 'https://flagcdn.com/w320/gi.png', 38000, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (55, 1, 'Sint Maarten', 'Philipsburg', 'French', 'Netherlands Antillean guilder', '+1721', 'https://flagcdn.com/w320/sx.png', 41349, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (56, 5, 'Åland Islands', 'Mariehamn', 'Swedish', 'euro', '+35818', 'https://flagcdn.com/w320/ax.png', 30654, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (57, 6, 'Syria', 'Damascus', 'Arabic', 'Syrian pound', '+963', 'https://flagcdn.com/w320/sy.png', 25620000, 30);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (58, 1, 'Martinique', 'Fort-de-France', 'French', 'euro', '+596', 'https://flagcdn.com/w320/mq.png', 349925, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (59, 1, 'Greenland', 'Nuuk', 'Greenlandic', 'krone', '+299', 'https://flagcdn.com/w320/gl.png', 56542, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (60, 1, 'Honduras', 'Tegucigalpa', 'Spanish', 'Honduran lempira', '+504', 'https://flagcdn.com/w320/hn.png', 9892632, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (61, 2, 'Tunisia', 'Tunis', 'Arabic', 'Tunisian dinar', '+216', 'https://flagcdn.com/w320/tn.png', 11972169, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (62, 2, 'Comoros', 'Moroni', 'Arabic', 'Comorian franc', '+269', 'https://flagcdn.com/w320/km.png', 919901, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (63, 5, 'Slovenia', 'Ljubljana', 'Slovene', 'euro', '+386', 'https://flagcdn.com/w320/si.png', 2130638, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (64, 5, 'Switzerland', 'Bern', 'French', 'Swiss franc', '+41', 'https://flagcdn.com/w320/ch.png', 9082848, 30);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (65, 5, 'Guernsey', 'St. Peter Port', 'French', 'Guernsey pound', '+44', 'https://flagcdn.com/w320/gg.png', 64781, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (66, 6, 'Myanmar', 'Naypyidaw', 'Burmese', 'Burmese kyat', '+95', 'https://flagcdn.com/w320/mm.png', 51316756, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (67, 4, 'Paraguay', 'Asunción', 'Guaraní', 'Paraguayan guaraní', '+595', 'https://flagcdn.com/w320/py.png', 6109644, 30);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (68, 1, 'Caribbean Netherlands', 'Kralendijk', 'Dutch', 'United States dollar', '+599', 'https://flagcdn.com/w320/bq.png', 31980, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (69, 1, 'Barbados', 'Bridgetown', 'English', 'Barbadian dollar', '+1246', 'https://flagcdn.com/w320/bb.png', 267800, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (70, 6, 'Macau', 'Does not have', 'Chinese', 'Macanese pataca', '+853', 'https://flagcdn.com/w320/mo.png', 685900, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (71, 6, 'Jordan', 'Amman', 'Arabic', 'Jordanian dinar', '+962', 'https://flagcdn.com/w320/jo.png', 11734000, 30);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (72, 6, 'Laos', 'Vientiane', 'Lao', 'Lao kip', '+856', 'https://flagcdn.com/w320/la.png', 7647000, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (73, 2, 'Togo', 'Lomé', 'French', 'West African CFA franc', '+228', 'https://flagcdn.com/w320/tg.png', 8095498, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (74, 2, 'Morocco', 'Rabat', 'Arabic', 'Moroccan dirham', '+212', 'https://flagcdn.com/w320/ma.png', 36828330, 30);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (75, 1, 'Puerto Rico', 'San Juan', 'Spanish', 'United States dollar', '', 'https://flagcdn.com/w320/pr.png', 3203295, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (76, 4, 'French Guiana', 'Cayenne', 'French', 'euro', '+594', 'https://flagcdn.com/w320/gf.png', 292354, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (77, 1, 'Saint Pierre and Miquelon', 'Saint-Pierre', 'French', 'euro', '+508', 'https://flagcdn.com/w320/pm.png', 5819, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (78, 1, 'Saint Martin', 'Marigot', 'French', 'euro', '+590', 'https://flagcdn.com/w320/mf.png', 31496, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (79, 5, 'Estonia', 'Tallinn', 'Estonian', 'euro', '+372', 'https://flagcdn.com/w320/ee.png', 1369995, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (80, 6, 'Indonesia', 'Jakarta', 'Indonesian', 'Indonesian rupiah', '+62', 'https://flagcdn.com/w320/id.png', 284438782, 30);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (81, 2, 'Seychelles', 'Victoria', 'French', 'Seychellois rupee', '+248', 'https://flagcdn.com/w320/sc.png', 122729, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (82, 2, 'Mali', 'Bamako', 'French', 'West African CFA franc', '+223', 'https://flagcdn.com/w320/ml.png', 22395489, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (83, 3, 'Timor-Leste', 'Dili', 'Portuguese', 'United States dollar', '+670', 'https://flagcdn.com/w320/tl.png', 1391221, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (84, 4, 'Brazil', 'Brasília', 'Portuguese', 'Brazilian real', '+55', 'https://flagcdn.com/w320/br.png', 213421037, 5);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (85, 2, 'Ghana', 'Accra', 'English', 'Ghanaian cedi', '+233', 'https://flagcdn.com/w320/gh.png', 33742380, 30);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (86, 2, 'Kenya', 'Nairobi', 'Swahili', 'Kenyan shilling', '+254', 'https://flagcdn.com/w320/ke.png', 53330978, 30);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (87, 5, 'Iceland', 'Reykjavik', 'Icelandic', 'Icelandic króna', '+354', 'https://flagcdn.com/w320/is.png', 391810, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (88, 2, 'Madagascar', 'Antananarivo', 'French', 'Malagasy ariary', '+261', 'https://flagcdn.com/w320/mg.png', 31727042, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (89, 6, 'Bangladesh', 'Dhaka', 'Bengali', 'Bangladeshi taka', '+880', 'https://flagcdn.com/w320/bd.png', 169828911, 30);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (90, 2, 'DR Congo', 'Kinshasa', 'Lingala', 'Congolese franc', '+243', 'https://flagcdn.com/w320/cd.png', 112832000, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (91, 2, 'Zimbabwe', 'Harare', 'Shona', 'Zimbabwean dollar', '+263', 'https://flagcdn.com/w320/zw.png', 17073087, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (92, 3, 'French Polynesia', 'Papeetē', 'French', 'CFP franc', '+689', 'https://flagcdn.com/w320/pf.png', 279500, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (93, 5, 'Turkey', 'Ankara', 'Turkish', 'Turkish lira', '+90', 'https://flagcdn.com/w320/tr.png', 85664944, 5);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (94, 2, 'Cape Verde', 'Praia', 'Portuguese', 'Cape Verdean escudo', '+238', 'https://flagcdn.com/w320/cv.png', 491233, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (95, 1, 'Dominican Republic', 'Santo Domingo', 'Spanish', 'Dominican peso', '', 'https://flagcdn.com/w320/do.png', 10771504, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (96, 1, 'Bahamas', 'Nassau', 'English', 'Bahamian dollar', '+1242', 'https://flagcdn.com/w320/bs.png', 398165, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (97, 5, 'Germany', 'Berlin', 'German', 'euro', '+49', 'https://flagcdn.com/w320/de.png', 83491249, 5);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (98, 4, 'Suriname', 'Paramaribo', 'Dutch', 'Surinamese dollar', '+597', 'https://flagcdn.com/w320/sr.png', 616500, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (99, 3, 'Tonga', 'Nuku\'alofa', 'Tongan', 'Tongan paʻanga', '+676', 'https://flagcdn.com/w320/to.png', 100179, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (100, 6, 'British Indian Ocean Territory', 'Diego Garcia', 'English', 'United States dollar', '+246', 'https://flagcdn.com/w320/io.png', 0, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (101, 1, 'Saint Lucia', 'Castries', 'English', 'Eastern Caribbean dollar', '+1758', 'https://flagcdn.com/w320/lc.png', 184100, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (102, 5, 'Ireland', 'Dublin', 'Irish', 'euro', '+353', 'https://flagcdn.com/w320/ie.png', 5458600, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (103, 5, 'Vatican City', 'Vatican City', 'Italian', 'euro', '', 'https://flagcdn.com/w320/va.png', 882, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (104, 4, 'Colombia', 'Bogotá', 'Spanish', 'Colombian peso', '+57', 'https://flagcdn.com/w320/co.png', 53057212, 5);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (105, 5, 'Portugal', 'Lisbon', 'Portuguese', 'euro', '+351', 'https://flagcdn.com/w320/pt.png', 10749635, 30);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (106, 5, 'Faroe Islands', 'Tórshavn', 'Danish', 'Faroese króna', '+298', 'https://flagcdn.com/w320/fo.png', 54885, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (107, 2, 'São Tomé and Príncipe', 'São Tomé', 'Portuguese', 'São Tomé and Príncipe dobra', '+239', 'https://flagcdn.com/w320/st.png', 209607, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (108, 3, 'Northern Mariana Islands', 'Saipan', 'Chamorro', 'United States dollar', '+1670', 'https://flagcdn.com/w320/mp.png', 47329, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (109, 5, 'Jersey', 'Saint Helier', 'Jèrriais', 'British pound', '+44', 'https://flagcdn.com/w320/je.png', 103267, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (110, 2, 'Mayotte', 'Mamoudzou', 'French', 'euro', '+262', 'https://flagcdn.com/w320/yt.png', 320901, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (111, 6, 'Yemen', 'Sana\'a', 'Arabic', 'Yemeni rial', '+967', 'https://flagcdn.com/w320/ye.png', 32684503, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (112, 2, 'Nigeria', 'Abuja', 'English', 'Nigerian naira', '+234', 'https://flagcdn.com/w320/ng.png', 223800000, 5);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (113, 6, 'Afghanistan', 'Kabul', 'Dari', 'Afghan afghani', '+93', 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/5c/Flag_of_the_Taliban.svg/320px-Flag_of_the_Taliban.svg.png', 43844000, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (114, 2, 'Botswana', 'Gaborone', 'Tswana', 'Botswana pula', '+267', 'https://flagcdn.com/w320/bw.png', 2359609, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (115, 5, 'Isle of Man', 'Douglas', 'Manx', 'British pound', '+44', 'https://flagcdn.com/w320/im.png', 84530, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (116, 1, 'El Salvador', 'San Salvador', 'Spanish', 'United States dollar', '+503', 'https://flagcdn.com/w320/sv.png', 6029976, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (117, 2, 'Uganda', 'Kampala', 'Swahili', 'Ugandan shilling', '+256', 'https://flagcdn.com/w320/ug.png', 45905417, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (118, 5, 'Andorra', 'Andorra la Vella', 'Catalan', 'euro', '+376', 'https://flagcdn.com/w320/ad.png', 88406, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (119, 1, 'Turks and Caicos Islands', 'Cockburn Town', 'English', 'United States dollar', '+1649', 'https://flagcdn.com/w320/tc.png', 50828, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (120, 2, 'Chad', 'N\'Djamena', 'Arabic', 'Central African CFA franc', '+235', 'https://flagcdn.com/w320/td.png', 19340757, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (121, 5, 'Finland', 'Helsinki', 'Swedish', 'euro', '+358', 'https://flagcdn.com/w320/fi.png', 5650325, 30);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (122, 5, 'Russia', 'Moscow', 'Russian', 'Russian ruble', '', 'https://flagcdn.com/w320/ru.png', 146028325, 5);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (123, 6, 'Kazakhstan', 'Astana', 'Russian', 'Kazakhstani tenge', '', 'https://flagcdn.com/w320/kz.png', 20426568, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (124, 5, 'Svalbard and Jan Mayen', 'Longyearbyen', 'Norwegian', 'krone', '+4779', 'https://flagcdn.com/w320/sj.png', 2530, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (125, 4, 'Venezuela', 'Caracas', 'Spanish', 'Venezuelan bolívar soberano', '+58', 'https://flagcdn.com/w320/ve.png', 28517000, 5);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (126, 5, 'Monaco', 'Monaco', 'French', 'euro', '+377', 'https://flagcdn.com/w320/mc.png', 38423, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (127, 2, 'Senegal', 'Dakar', 'French', 'West African CFA franc', '+221', 'https://flagcdn.com/w320/sn.png', 18593258, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (128, 6, 'Nepal', 'Kathmandu', 'Nepali', 'Nepalese rupee', '+977', 'https://flagcdn.com/w320/np.png', 29911840, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (129, 6, 'United Arab Emirates', 'Abu Dhabi', 'Arabic', 'United Arab Emirates dirham', '+971', 'https://flagcdn.com/w320/ae.png', 11294243, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (130, 6, 'Taiwan', 'Taipei', 'Chinese', 'New Taiwan dollar', '+886', 'https://flagcdn.com/w320/tw.png', 23317031, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (131, 3, 'New Caledonia', 'Nouméa', 'French', 'CFP franc', '+687', 'https://flagcdn.com/w320/nc.png', 264596, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (132, 4, 'Bolivia', 'Sucre', 'Quechua', 'Bolivian boliviano', '+591', 'https://flagcdn.com/w320/bo.png', 11365333, 30);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (133, 4, 'Chile', 'Santiago', 'Spanish', 'Chilean peso', '+56', 'https://flagcdn.com/w320/cl.png', 20206953, 5);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (134, 2, 'Ivory Coast', 'Yamoussoukro', 'French', 'West African CFA franc', '+225', 'https://flagcdn.com/w320/ci.png', 31719275, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (135, 2, 'Libya', 'Tripoli', 'Arabic', 'Libyan dinar', '+218', 'https://flagcdn.com/w320/ly.png', 7459000, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (136, 4, 'Peru', 'Lima', 'Quechua', 'Peruvian sol', '+51', 'https://flagcdn.com/w320/pe.png', 34350244, 5);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (137, 1, 'Canada', 'Ottawa', 'French', 'Canadian dollar', '+1', 'https://flagcdn.com/w320/ca.png', 41651653, 5);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (138, 5, 'France', 'Paris', 'French', 'euro', '+33', 'https://flagcdn.com/w320/fr.png', 66351959, 5);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (139, 2, 'Djibouti', 'Djibouti', 'Arabic', 'Djiboutian franc', '+253', 'https://flagcdn.com/w320/dj.png', 1066809, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (140, 2, 'Burundi', 'Gitega', 'French', 'Burundian franc', '+257', 'https://flagcdn.com/w320/bi.png', 12332788, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (141, 5, 'Kosovo', 'Pristina', 'Serbian', 'euro', '+383', 'https://flagcdn.com/w320/xk.png', 1585566, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (142, 5, 'Denmark', 'Copenhagen', 'Danish', 'Danish krone', '+45', 'https://flagcdn.com/w320/dk.png', 6011488, 30);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (143, 5, 'Greece', 'Athens', 'Greek', 'euro', '+30', 'https://flagcdn.com/w320/gr.png', 10400720, 30);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (144, 5, 'Czechia', 'Prague', 'Czech', 'Czech koruna', '+420', 'https://flagcdn.com/w320/cz.png', 10882341, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (145, 2, 'Eritrea', 'Asmara', 'Arabic', 'Eritrean nakfa', '+291', 'https://flagcdn.com/w320/er.png', 3607000, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (146, 2, 'Namibia', 'Windhoek', 'Kwangali', 'Namibian dollar', '+264', 'https://flagcdn.com/w320/na.png', 3022401, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (147, 1, 'British Virgin Islands', 'Road Town', 'English', 'United States dollar', '+1284', 'https://flagcdn.com/w320/vg.png', 39471, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (148, 6, 'Iran', 'Tehran', 'Persian (Farsi)', 'Iranian rial', '+98', 'https://flagcdn.com/w320/ir.png', 85961000, 30);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (149, 2, 'Equatorial Guinea', 'Ciudad de la Paz', 'Portuguese', 'Central African CFA franc', '+240', 'https://flagcdn.com/w320/gq.png', 1668768, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (150, 2, 'Mauritania', 'Nouakchott', 'Arabic', 'Mauritanian ouguiya', '+222', 'https://flagcdn.com/w320/mr.png', 4927532, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (151, 6, 'Bahrain', 'Manama', 'Arabic', 'Bahraini dinar', '+973', 'https://flagcdn.com/w320/bh.png', 1594654, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (152, 6, 'Cocos (Keeling) Islands', 'West Island', 'English', 'Australian dollar', '+61', 'https://flagcdn.com/w320/cc.png', 593, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (153, 2, 'Ethiopia', 'Addis Ababa', 'Amharic', 'Ethiopian birr', '+251', 'https://flagcdn.com/w320/et.png', 111652998, 30);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (154, 2, 'Zambia', 'Lusaka', 'English', 'Zambian kwacha', '+260', 'https://flagcdn.com/w320/zm.png', 19693423, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (155, 5, 'Bosnia and Herzegovina', 'Sarajevo', 'Serbian', 'Bosnia and Herzegovina convertible mark', '+387', 'https://flagcdn.com/w320/ba.png', 3422000, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (156, 4, 'Falkland Islands', 'Stanley', 'English', 'Falkland Islands pound', '+500', 'https://flagcdn.com/w320/fk.png', 3662, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (157, 1, 'Grenada', 'St. George\'s', 'English', 'Eastern Caribbean dollar', '+1473', 'https://flagcdn.com/w320/gd.png', 109021, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (158, 6, 'Thailand', 'Bangkok', 'Thai', 'Thai baht', '+66', 'https://flagcdn.com/w320/th.png', 65859640, 30);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (159, 5, 'Romania', 'Bucharest', 'Romanian', 'Romanian leu', '+40', 'https://flagcdn.com/w320/ro.png', 19036031, 30);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (160, 1, 'Saint Vincent and the Grenadines', 'Kingstown', 'English', 'Eastern Caribbean dollar', '+1784', 'https://flagcdn.com/w320/vc.png', 110872, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (161, 2, 'Liberia', 'Monrovia', 'English', 'Liberian dollar', '+231', 'https://flagcdn.com/w320/lr.png', 5248621, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (162, 1, 'United States', 'Washington, D.C.', 'English', 'United States dollar', '', 'https://flagcdn.com/w320/us.png', 340110988, 5);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (163, 2, 'South Sudan', 'Juba', 'English', 'South Sudanese pound', '+211', 'https://flagcdn.com/w320/ss.png', 15786898, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (164, 7, 'Bouvet Island', 'Does not have', 'Norwegian', 'Does not have', '+47', 'https://flagcdn.com/w320/bv.png', 0, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (165, 6, 'Armenia', 'Yerevan', 'Armenian', 'Armenian dram', '+374', 'https://flagcdn.com/w320/am.png', 3076200, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (166, 6, 'Japan', 'Tokyo', 'Japanese', 'Japanese yen', '+81', 'https://flagcdn.com/w320/jp.png', 123210000, 5);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (167, 6, 'Pakistan', 'Islamabad', 'Urdu', 'Pakistani rupee', '+92', 'https://flagcdn.com/w320/pk.png', 241499431, 30);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (168, 2, 'Eswatini', 'Mbabane', 'Swazi', 'Swazi lilangeni', '+268', 'https://flagcdn.com/w320/sz.png', 1235549, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (169, 5, 'Liechtenstein', 'Vaduz', 'German', 'Swiss franc', '+423', 'https://flagcdn.com/w320/li.png', 40900, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (170, 6, 'Israel', 'Jerusalem', 'Arabic', 'Israeli new shekel', '+972', 'https://flagcdn.com/w320/il.png', 10134800, 30);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (171, 3, 'American Samoa', 'Pago Pago', 'Samoan', 'United States dollar', '+1684', 'https://flagcdn.com/w320/as.png', 49710, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (172, 6, 'Sri Lanka', 'Sri Jayawardenepura Kotte', 'Tamil', 'Sri Lankan rupee', '+94', 'https://flagcdn.com/w320/lk.png', 21763170, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (173, 7, 'South Georgia', 'King Edward Point', 'English', 'British pound', '+500', 'https://flagcdn.com/w320/gs.png', 0, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (174, 5, 'Albania', 'Tirana', 'Albanian', 'Albanian lek', '+355', 'https://flagcdn.com/w320/al.png', 2363314, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (175, 2, 'Algeria', 'Algiers', 'Arabic', 'Algerian dinar', '+213', 'https://flagcdn.com/w320/dz.png', 47400000, 30);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (176, 5, 'Ukraine', 'Kyiv', 'Ukrainian', 'Ukrainian hryvnia', '+380', 'https://flagcdn.com/w320/ua.png', 32862000, 30);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (177, 2, 'Saint Helena, Ascension and Tristan da Cunha', 'Jamestown', 'English', 'Pound sterling', '', 'https://flagcdn.com/w320/sh.png', 5651, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (178, 7, 'Heard Island and McDonald Islands', 'Does not have', 'English', 'Does not have', '', 'https://flagcdn.com/w320/hm.png', 0, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (179, 5, 'San Marino', 'City of San Marino', 'Italian', 'euro', '+378', 'https://flagcdn.com/w320/sm.png', 34132, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (180, 1, 'Cuba', 'Havana', 'Spanish', 'Cuban convertible peso', '+53', 'https://flagcdn.com/w320/cu.png', 9748007, 30);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (181, 3, 'Nauru', 'Yaren', 'Nauru', 'Australian dollar', '+674', 'https://flagcdn.com/w320/nr.png', 11680, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (182, 5, 'Spain', 'Madrid', 'Basque', 'euro', '+34', 'https://flagcdn.com/w320/es.png', 49315949, 5);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (183, 6, 'Kuwait', 'Kuwait City', 'Arabic', 'Kuwaiti dinar', '+965', 'https://flagcdn.com/w320/kw.png', 4881254, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (184, 1, 'Montserrat', 'Plymouth', 'English', 'Eastern Caribbean dollar', '+1664', 'https://flagcdn.com/w320/ms.png', 4386, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (185, 2, 'Mauritius', 'Port Louis', 'French', 'Mauritian rupee', '+230', 'https://flagcdn.com/w320/mu.png', 1243741, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (186, 5, 'Sweden', 'Stockholm', 'Swedish', 'Swedish krona', '+46', 'https://flagcdn.com/w320/se.png', 10605098, 30);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (187, 3, 'Australia', 'Canberra', 'English', 'Australian dollar', '+61', 'https://flagcdn.com/w320/au.png', 27536874, 5);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (188, 2, 'Cameroon', 'Yaoundé', 'French', 'Central African CFA franc', '+237', 'https://flagcdn.com/w320/cm.png', 29442327, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (189, 4, 'Ecuador', 'Quito', 'Spanish', 'United States dollar', '+593', 'https://flagcdn.com/w320/ec.png', 18103660, 30);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (190, 6, 'Qatar', 'Doha', 'Arabic', 'Qatari riyal', '+974', 'https://flagcdn.com/w320/qa.png', 3173024, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (191, 3, 'Marshall Islands', 'Majuro', 'Marshallese', 'United States dollar', '+692', 'https://flagcdn.com/w320/mh.png', 42418, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (192, 5, 'Poland', 'Warsaw', 'Polish', 'Polish złoty', '+48', 'https://flagcdn.com/w320/pl.png', 37392000, 30);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (193, 1, 'Cayman Islands', 'George Town', 'English', 'Cayman Islands dollar', '+1345', 'https://flagcdn.com/w320/ky.png', 84738, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (194, 2, 'South Africa', 'Pretoria', 'Zulu', 'South African rand', '+27', 'https://flagcdn.com/w320/za.png', 63100945, 5);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (195, 3, 'Wallis and Futuna', 'Mata-Utu', 'French', 'CFP franc', '+681', 'https://flagcdn.com/w320/wf.png', 11620, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (196, 3, 'Samoa', 'Apia', 'Samoan', 'Samoan tālā', '+685', 'https://flagcdn.com/w320/ws.png', 205557, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (197, 5, 'Netherlands', 'Amsterdam', 'Dutch', 'euro', '+31', 'https://flagcdn.com/w320/nl.png', 18100436, 30);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (198, 2, 'Western Sahara', 'El Aaiún', 'Hassaniya', 'Moroccan dirham', '', 'https://flagcdn.com/w320/eh.png', 600904, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (199, 5, 'Montenegro', 'Podgorica', 'Montenegrin', 'euro', '+382', 'https://flagcdn.com/w320/me.png', 623327, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (200, 6, 'Bhutan', 'Thimphu', 'Dzongkha', 'Indian rupee', '+975', 'https://flagcdn.com/w320/bt.png', 784043, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (201, 5, 'Malta', 'Valletta', 'Maltese', 'euro', '+356', 'https://flagcdn.com/w320/mt.png', 574250, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (202, 3, 'Vanuatu', 'Port Vila', 'French', 'Vanuatu vatu', '+678', 'https://flagcdn.com/w320/vu.png', 321409, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (203, 2, 'Tanzania', 'Dodoma', 'Swahili', 'Tanzanian shilling', '+255', 'https://flagcdn.com/w320/tz.png', 68153004, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (204, 3, 'New Zealand', 'Wellington', 'Māori', 'New Zealand dollar', '+64', 'https://flagcdn.com/w320/nz.png', 5324700, 30);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (205, 3, 'Palau', 'Ngerulmud', 'Palauan', 'United States dollar', '+680', 'https://flagcdn.com/w320/pw.png', 16733, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (206, 1, 'Panama', 'Panama City', 'Spanish', 'Panamanian balboa', '+507', 'https://flagcdn.com/w320/pa.png', 4064780, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (207, 3, 'Tuvalu', 'Funafuti', 'Tuvaluan', 'Australian dollar', '+688', 'https://flagcdn.com/w320/tv.png', 10643, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (208, 3, 'Fiji', 'Suva', 'Fiji Hindi', 'Fijian dollar', '+679', 'https://flagcdn.com/w320/fj.png', 900869, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (209, 1, 'Nicaragua', 'Managua', 'Spanish', 'Nicaraguan córdoba', '+505', 'https://flagcdn.com/w320/ni.png', 6803886, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (210, 6, 'Kyrgyzstan', 'Bishkek', 'Russian', 'Kyrgyzstani som', '+996', 'https://flagcdn.com/w320/kg.png', 7281800, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (211, 7, 'French Southern and Antarctic Lands', 'Port-aux-Français', 'French', 'euro', '+262', 'https://flagcdn.com/w320/tf.png', 400, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (212, 5, 'Latvia', 'Riga', 'Latvian', 'euro', '+371', 'https://flagcdn.com/w320/lv.png', 1829000, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (213, 6, 'Georgia', 'Tbilisi', 'Georgian', 'lari', '+995', 'https://flagcdn.com/w320/ge.png', 4000921, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (214, 5, 'Luxembourg', 'Luxembourg', 'Luxembourgish', 'euro', '+352', 'https://flagcdn.com/w320/lu.png', 681973, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (215, 5, 'Austria', 'Vienna', 'German', 'euro', '+43', 'https://flagcdn.com/w320/at.png', 9200931, 30);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (216, 5, 'North Macedonia', 'Skopje', 'Macedonian', 'denar', '+389', 'https://flagcdn.com/w320/mk.png', 1822612, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (217, 1, 'Saint Barthélemy', 'Gustavia', 'French', 'euro', '+590', 'https://flagcdn.com/w320/bl.png', 10562, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (218, 6, 'Christmas Island', 'Flying Fish Cove', 'English', 'Australian dollar', '+61', 'https://flagcdn.com/w320/cx.png', 1692, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (219, 3, 'Solomon Islands', 'Honiara', 'English', 'Solomon Islands dollar', '+677', 'https://flagcdn.com/w320/sb.png', 750325, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (220, 1, 'Antigua and Barbuda', 'Saint John\'s', 'English', 'Eastern Caribbean dollar', '+1268', 'https://flagcdn.com/w320/ag.png', 103603, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (221, 6, 'Iraq', 'Baghdad', 'Arabic', 'Iraqi dinar', '+964', 'https://flagcdn.com/w320/iq.png', 46118793, 30);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (222, 5, 'Moldova', 'Chișinău', 'Romanian', 'Moldovan leu', '+373', 'https://flagcdn.com/w320/md.png', 2749076, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (223, 3, 'Norfolk Island', 'Kingston', 'Norfuk', 'Australian dollar', '+672', 'https://flagcdn.com/w320/nf.png', 2188, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (224, 2, 'Republic of the Congo', 'Brazzaville', 'Lingala', 'Central African CFA franc', '+242', 'https://flagcdn.com/w320/cg.png', 6142180, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (225, 3, 'Niue', 'Alofi', 'Niuean', 'New Zealand dollar', '+683', 'https://flagcdn.com/w320/nu.png', 1681, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (226, 5, 'Lithuania', 'Vilnius', 'Lithuanian', 'euro', '+370', 'https://flagcdn.com/w320/lt.png', 2894886, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (227, 2, 'Niger', 'Niamey', 'French', 'West African CFA franc', '+227', 'https://flagcdn.com/w320/ne.png', 26312034, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (228, 4, 'Guyana', 'Georgetown', 'English', 'Guyanese dollar', '+592', 'https://flagcdn.com/w320/gy.png', 772975, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (229, 1, 'Bermuda', 'Hamilton', 'English', 'Bermudian dollar', '+1441', 'https://flagcdn.com/w320/bm.png', 64055, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (230, 2, 'Gabon', 'Libreville', 'French', 'Central African CFA franc', '+241', 'https://flagcdn.com/w320/ga.png', 2469296, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (231, 3, 'Cook Islands', 'Avarua', 'Cook Islands Māori', 'New Zealand dollar', '+682', 'https://flagcdn.com/w320/ck.png', 15040, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (232, 2, 'Angola', 'Luanda', 'Portuguese', 'Angolan kwanza', '+244', 'https://flagcdn.com/w320/ao.png', 36170961, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (233, 5, 'Norway', 'Oslo', 'Norwegian Bokmål', 'Norwegian krone', '+47', 'https://flagcdn.com/w320/no.png', 5606944, 30);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (234, 1, 'Guadeloupe', 'Basse-Terre', 'French', 'euro', '+590', 'https://flagcdn.com/w320/gp.png', 378561, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (235, 6, 'Maldives', 'Malé', 'Maldivian', 'Maldivian rufiyaa', '+960', 'https://flagcdn.com/w320/mv.png', 515132, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (236, 5, 'Belgium', 'Brussels', 'French', 'euro', '+32', 'https://flagcdn.com/w320/be.png', 11825551, 30);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (237, 5, 'Croatia', 'Zagreb', 'Croatian', 'euro', '+385', 'https://flagcdn.com/w320/hr.png', 3866233, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (238, 1, 'Belize', 'Belmopan', 'Belizean Creole', 'Belize dollar', '+501', 'https://flagcdn.com/w320/bz.png', 417634, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (239, 1, 'Saint Kitts and Nevis', 'Basseterre', 'English', 'Eastern Caribbean dollar', '+1869', 'https://flagcdn.com/w320/kn.png', 51320, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (240, 6, 'Singapore', 'Singapore', 'Chinese', 'Singapore dollar', '+65', 'https://flagcdn.com/w320/sg.png', 6110200, 30);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (241, 2, 'Lesotho', 'Maseru', 'Sotho', 'Lesotho loti', '+266', 'https://flagcdn.com/w320/ls.png', 2116427, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (242, 4, 'Uruguay', 'Montevideo', 'Spanish', 'Uruguayan peso', '+598', 'https://flagcdn.com/w320/uy.png', 3499451, 30);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (243, 2, 'Burkina Faso', 'Ouagadougou', 'French', 'West African CFA franc', '+226', 'https://flagcdn.com/w320/bf.png', 24070553, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (244, 6, 'India', 'New Delhi', 'Tamil', 'Indian rupee', '+91', 'https://flagcdn.com/w320/in.png', 1417492000, 5);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (245, 6, 'Philippines', 'Manila', 'Filipino', 'Philippine peso', '+63', 'https://flagcdn.com/w320/ph.png', 114123600, 30);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (246, 2, 'Central African Republic', 'Bangui', 'French', 'Central African CFA franc', '+236', 'https://flagcdn.com/w320/cf.png', 6470307, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (247, 2, 'Sudan', 'Khartoum', 'Arabic', 'Sudanese pound', '+249', 'https://flagcdn.com/w320/sd.png', 51662000, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (248, 2, 'Guinea-Bissau', 'Bissau', 'Portuguese', 'West African CFA franc', '+245', 'https://flagcdn.com/w320/gw.png', 1781308, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (249, 3, 'Papua New Guinea', 'Port Moresby', 'Hiri Motu', 'Papua New Guinean kina', '+675', 'https://flagcdn.com/w320/pg.png', 11781559, 75);
INSERT INTO pais (id_pais, id_continente, nombre, capital, idioma, moneda, codigo_telefonico, bandera_url, poblacion, popularidad) VALUES (250, 3, 'United States Minor Outlying Islands', 'Washington DC', 'English', 'United States dollar', '+268', 'https://flagcdn.com/w320/um.png', 0, 75);

-- ─── CATEGORÍAS ──────────────────────────────────────────────
INSERT INTO categoria (id_categoria, nombre) VALUES
  (1, 'Capitals'),
  (2, 'Flags'),
  (3, 'Languages'),
  (4, 'Calling Codes'),
  (5, 'Currencies'),
  (6, 'Continents'),
  (7, 'Population');

-- ─── QUESTION TEMPLATES ─────────────────────────────────────
INSERT INTO plantilla (id_plantilla, id_categoria, enunciado, tipo_respuesta, dificultad_base) VALUES
  (1, 1, 'What is the capital of {pais}?',                         'text', 1),
  (2, 1, 'Which city is the capital of {pais}?',                  'text', 2),
  (3, 2, 'Which country does this flag belong to?',               'image', 2),
  (4, 2, 'Identify the country represented by this flag.',        'image', 3),
  (5, 3, 'What is an official language of {pais}?',               'text', 2),
  (6, 3, 'In which country is {dato} officially spoken?',         'text', 3),
  (7, 4, 'What is the calling code of {pais}?',                   'text', 3),
  (8, 4, 'Which country uses the calling code {dato}?',           'text', 4),
  (9, 5, 'What is the official currency of {pais}?',              'text', 2),
  (10, 5, 'Which country uses the {dato}?',                       'text', 3),
  (11, 6, 'On which continent is {pais} located?',                'text', 1),
  (12, 6, 'Name a country located in {dato}.',                    'text', 2),
  (13, 6, 'Which of these countries is NOT in {dato}?',           'text', 3),
  (14, 7, 'What is the population of {pais}?',                    'text', 4),
  (15, 7, 'Which country has the largest population?',           'text', 2),
  (16, 7, 'Which country has the smallest population?',           'text', 2);

INSERT INTO logro (id_logro, descripcion, objetivo, puntos_recompensa, tipo) VALUES
(1, 'First Match',     'Play your first match',                       50,  'PRIMERA_VICTORIA'),
(2, 'Explorer',        'Play 10 matches',                                  100, 'PARTIDAS_JUGADAS'),
(3, 'Veteran',         'Play 50 matches',                              300, 'PARTIDAS_JUGADAS'),
(4, 'On a Streak',     'Get 5 correct answers',              75, 'RESPUESTAS_CORRECTAS' ),
(5, 'Unstoppable',     'Get 7 correct answers',           150, 'RESPUESTAS_CORRECTAS'),
(6, 'Perfect!',        'Achieve 100% accuracy in one round',       200, 'RESPUESTAS_CORRECTAS'),
(7, 'Collector',       'Accumulate 1000 total points',              100, 'PUNTOS_TOTALES'),
(8, 'Millionaire',     'Accumulate 5000 total points',                      500, 'PUNTOS_TOTALES'),
(9, 'Curious',         'Play 3 different categories',               80, 'CATEGORIAS_DESCUBIERTAS'),
(10, 'World Traveler',  'Discover all categories',                   400, 'CATEGORIAS_DESCUBIERTAS'),
(11, 'Flags Master',    'Complete Flags',               250,  'MASTER_CATEGORIA'),
(12, 'Calling Codes Master',    'Complete Calling codes',               250,  'MASTER_CATEGORIA'),
(13, 'Capitals Master',    'Complete Capitals',               250,  'MASTER_CATEGORIA'),
(14, 'Continents Master',    'Complete Continents',               250,  'MASTER_CATEGORIA'),
(15, 'Currencies Master',    'Complete Currencies',               250,  'MASTER_CATEGORIA'),
(16, 'Languages Master',    'Complete Languages',               250,  'MASTER_CATEGORIA'),
(17, 'Population Master',    'Complete Population',               250,  'MASTER_CATEGORIA'),
(18, 'Top 10',          'Reach the top 10 in the ranking',                      200 ,'RANKING'),
(19, 'Top 3',          'Reach the top 10 in the ranking',                      350 ,'RANKING'),
(20, 'Top 1',          'Reach the top 10 in the ranking',                      350 ,'RANKING');

```

