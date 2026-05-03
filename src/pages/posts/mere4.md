---
layout: ../../components/MarkdownPost.astro
title: "Taller MERE 4"
categoria: "modelado"
author: 
  name: "Isabella"
  url: "/SolucionesInnova.png"
image:
  url: "/SolucionesInnova.png"
  alt: "xx"
tags: [""]
pubDate: 'Mar 17, 2025'
likes: '6.3k'
comments: '99'
--- 
Ejercicio de modelado entidad-relación 10 de Marzo
--
Realizado por: Luna Calderon, Lina Patiño, Daniela Serrato e Isabella Rodríguez
---

***Ejercicio 1:***
---
En el estacionamiento de la Universidad El Bosque se piensa implementar un espacio para la reparación de vehículos de los
estudiantes, profesores y visitantes al centro médico Los Cobos. La idea es implementar una solución tecnológica y ustedes
como Ingenieros de datos han sido seleccionados para diseñar el modelo de datos de una base de datos relacional, la cual
maneja la información de sus clientes, los automóviles que atiende, los técnicos especializados que trabajan en el taller y los
componentes que se usan en cada servicio.
El proceso de servicio es el siguiente
---
**1 .** Al llegar al taller, se registran los datos del **propietario** y de su vehículo. Del propietario se guardan el número de
identificación (NI), su nombre completo, dirección postal y número de teléfono. Del **automóvil** se registran la placa, la
marca y el color. También se toma nota de la fecha y hora de ingreso del vehículo al taller.
---
**2 .** Tras el registro, se le asigna un **técnico principal** (que esté disponible) para que realice un diagnóstico de los daños.
---
**3 .** Posteriormente, este técnico puede solicitar el apoyo de otros **especialistas** para que lo asistan en la reparación.
---
**4 .** Los técnicos que participan en la reparación registran en una orden de trabajo los **componentes** que necesitaron, junto
con el costo de la mano de obra.
---
**5 .** Una vez finalizado el servicio, la orden de trabajo se entrega al área de administración para que se genere la factura. La
**factura** debe incluir toda la información del cliente, los datos del técnico asignado, un desglose de los componentes
utilizados (con su precio unitario), el costo de la mano de obra y el total a pagar. Al total se le aplicará un impuesto del 21
%. Además, el precio total del servicio se mostrará en dos monedas distintas: **dólares estadounidenses (USD)** y **euros (EUR)**

- **6 .** Todos los componentes tienen un código, nombre y precio, pero se diferencian en varias categorías:

- **Aceites:** Adicionalmente, registran la densidad.

- **Filtros:** Adicionalmente, registran el tipo de filtro (aire, aceite, combustible).

- **Baterías:** Adicionalmente, registran el amperaje y el voltaje.

- **Neumáticos:** Adicionalmente, registran el ancho, perfil y diámetro

--
![LosCobos](/LosCobos.png)
--

**Ejercicio 2:**

- Una empresa de servicios tecnológicos, **"Soluciones Innova"**, ha decidido modernizar su sistema de gestión interno debido a que
su plataforma anterior era ineficiente y no permitía registrar toda la información crucial para la toma de decisiones. Por ello, se ha
encargado el desarrollo de un nuevo sistema de información con las siguientes especificaciones:
- 
- • Se requiere almacenar la información de los **clientes corporativos** de la consultora. Por cada cliente, se necesita registrar
su nombre de empresa, dirección, número de identificación tributaria (NIT), y es posible que tengan múltiples números de
teléfono de contacto.
- • En la empresa se gestionan numerosos **servicios** que pueden ser contratados por uno o varios clientes a un precio que
el **gerente de proyecto** define para cada contrato en particular.
- • Gracias a la buena reputación de la empresa, los clientes suelen contratar múltiples servicios. Se desea registrar estos
contratos, así como las fechas de inicio y finalización planificadas para cada uno.
- • Independientemente del precio de venta, cada servicio tiene un costo interno asociado.
- • Todos los servicios generalmente tienen una descripción que detalla sus objetivos principales.
- • Los **gerentes de proyecto** se identifican por un código de empleado, y su remuneración se basa en un salario fijo que
puede diferir del sueldo recomendado para su **rango profesional**. Además del salario y el sueldo recomendado, se
necesita registrar el nombre del gerente.
- • Cada gerente de proyecto puede tener un superior directo de un rango profesional inmediatamente más alto.
- Un punto crucial para la gestión de la empresa es el concepto de **"equipo de proyecto"**. Cada equipo está formado por varios
gerentes de proyecto que, a pesar de participar en un servicio, mantienen su independencia y pueden ser parte de otros equipos
en paralelo. Sin embargo, para fines de planificación y facturación, el sistema debe reconocer que un equipo está compuesto
por los gerentes que lo integran. Si un servicio se cancela, el equipo asociado deja de existir como tal, pero los gerentes que lo
formaban continúan existiendo en la base de datos

--
![SolucionesInnova](/SolucionesInnova.png)
--

***Ejercicio 3:***
- Se requiere diseñar la base de datos para la gestión operativa del Sistema de Metro de Bogotá, asumiendo que ya cuenta con
varias líneas en pleno funcionamiento. Los requisitos del sistema son los siguientes:
- **• Estructura de Líneas:** Una línea de metro se compone de una serie de estaciones en un orden secuencial, y es crucial
registrar esta secuencia para la operación.
- **• Conectividad de Estaciones:** Cada estación del sistema pertenece a al menos una línea. Las estaciones de transferencia
(como la futura Calle 72 o el Portal de las Américas) pueden pertenecer a varias líneas. Es importante destacar que una
vez que una estación es asignada a una línea, esta pertenencia es permanente y no puede ser modificada.
- **• Gestión de Accesos:** Cada estación puede tener múltiples accesos para los usuarios (escaleras, ascensores, etc.). Un
acceso está vinculado de manera exclusiva a una única estación, y esta asignación es inmutable.
- **• Flota de Trenes:** Cada línea tiene asignada su propia flota de trenes. Un tren puede estar asignado a una sola línea a la
vez, aunque en ciertos momentos puede estar en mantenimiento y no pertenecer a ninguna. La cantidad de trenes
asignados a cada línea debe ser, como mínimo, igual al número de estaciones de esa línea y, como máximo, el doble de
dicho número.
- **• Patio de Mantenimiento:** El sistema tiene varios patios de mantenimiento y talleres. Cada tren debe tener un patio
asignado para su resguardo. Un tren puede ser reasignado a un patio diferente, pero bajo ninguna circunstancia puede
quedar sin uno.
- **• Necesidades de Información:** La gestión del sistema requiere poder consultar todos los accesos disponibles para los
pasajeros en cada una de las líneas del metro.

--
![Metro](/Metro.png)
--

***Ejercicio 4:***
- **"La Facultad"**, una taberna icónica frente a la Universidad El Bosque, es conocida por su vasta colección musical. Su dueño, "Don
Juan", un apasionado melómano, desea organizar su catálogo. Para ello, necesita una base de datos que gestione toda su
discoteca.
La base de datos debe almacenar información sobre las **grabaciones**, los **artistas** que participan y las **productoras** que las
distribuyen, con los siguientes requisitos:
- **• Grabaciones Musicales:** Se debe registrar el **título**, el **género** musical (p. ej., rock, jazz, salsa), la cantidad de canciones
que contiene y un campo de **notas** para detalles especiales (como si es una edición limitada o en vivo). Cada grabación
se identifica de manera única por su título.
- **• Formatos:** Cada grabación puede existir en diferentes **formatos** (por ejemplo, CD, vinilo o digital). Para cada formato, se
debe registrar el **estado de conservación** (excelente, bueno, regular, etc.). Una misma grabación puede estar en varios
formatos y cada uno tendrá un estado de conservación distinto.
- **• Artistas:** Es necesario registrar el **nombre** del artista y una breve **biografía** con sus logros más importantes. También se
debe registrar en qué grabaciones ha participado cada artista y la **fecha** de dicha participación.
- **• Productoras:** Toda grabación está asociada a una **productora**. Se debe registrar el **nombre** y la **dirección** de la
productora. Cada una se identifica de forma única con un **ID de compañía**.
--
![Productora](/Productora.png)
--