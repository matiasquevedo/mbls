use aventura_embalsa;

show tables;

select * from users;
select * from categories;
select * from actividades;
select * from paquetes;
select * from actividadPaquete;
select * from actividadespostview;
select * from informaciones;
select * from informacionespost;
select * from eventos;
select * from eventospostview;
select * from proveedores;
select * from categoryactividadespost;



SELECT actividades.id,
actividades.title,
actividades.descripcion,
actividades.state,
images.foto,
categories.name, 
actividades.created_at, actividades.updated_at
FROM actividades, images, categories WHERE state = '1'
AND categories.id = actividades.category_id
AND images.actividad_id = actividades.id
ORDER BY actividades.updated_at DESC;

SELECT actividades.id 
AS actividades, 
images.foto, 
actividades.state, 
actividades.title, 
categories.name, 
categories.id 
AS category_id, 
actividades.created_at 
FROM actividades, categories, images 
WHERE state = '1' 
AND categories.id = actividades.category_id 
AND images.actividad_id = actividades.id 
ORDER BY actividad_id DESC;

SELECT informaciones.id,
informaciones.title,
informaciones.descripcion,
informaciones.state,
categories.name, 
informaciones.created_at, informaciones.updated_at
FROM informaciones, categories WHERE state = '1'
AND categories.id = informaciones.category_id
ORDER BY informaciones.updated_at DESC;

SELECT eventos.id, 
eventos.title, eventos.fecha, 
eventos.hora, eventos.precio, 
eventos.lugar, eventos.tipo, 
eventos.descripcion, eventos.created_at, 
eventos.updated_at, imagesEventos.foto 
FROM eventos, imagesEventos 
WHERE state = '1' 
AND imagesEventos.evento_id = eventos.id  
ORDER BY eventos.updated_at DESC;

SELECT * FROM actividades WHERE state = '1';

SELECT actividades.id, actividades.title, actividades.descripcion,
actividades.recomendacion, actividadPaquete.actividad_id,
actividadPaquete.paquete_id FROM actividades, actividadPaquete WHERE actividadPaquete.actividad_id = actividades.id;

SELECT actividades.id,
actividades.title,
actividades.descripcion,
actividades.state,
images.foto,
categories.name, 
actividades.created_at, actividades.updated_at
FROM actividades, images, categories WHERE state = '1'
AND categories.id = actividades.category_id
AND images.actividad_id = actividades.id
ORDER BY actividades.updated_at DESC;

select actividades.id,
actividades.title,
actividades.volanta,
actividades.descripcion,
actividades.recomendacion,
actividades.duracion,
actividades.largo,
actividades.state,
actividades.precioPublico,
actividades.precioProveedor,
actividades.descuento,
actividades.updated_at,
images.foto,
categories.name, 
actividades.created_at, actividades.updated_at
FROM actividades, images, categories WHERE actividades.state = '1';
AND categories.id = actividades.category_id
AND images.actividad_id = actividades.id
ORDER BY actividades.updated_at DESC;


