# SQL_PROJECT

1 Introducción

Un emprendedor re-abre un video-club después de varios años cerrados. Recibe, a su vez una base de datos obsoleta que tiene que limpiar , exportar a Sql y transformarla en operativa

2. Procedimiento

a. Examen y limpieza en Pandas y Numpy

Le entregan 7 tablas .ipynb. Film, actors, category, old_hdd, rental, inventory y language, que componen la base de datos
Examina los ficheros encontrando varias incongruencias. Existe una fila con nombre duplicado en la tabla actors que elimina, existen columnas inservibles como last_update que quita.
Adjunta columnas 'First name' , 'last name' de la tabla actors a film. 
Realizada esta limpieza previa, se dispone a trabajar en Sql, para lo que activa un conector, a continuación exporta los tres ficheros con los que va a trabajar a Sql.

b. Creación de un schema para relacionar 4 tablas (df_inventory, df_rental, df_films y una que va a crear denominada df_costumers)
Mediante esta configuración crea varias relaciones que se detallan en code. Se ajustan columnas aparentemente iguales con tamaños distintos para que puedan 
confluir y ser efectivaas en el manejo de los datpos

c.Comprobación de ese schema y su conversión en código y seguridad de que todas las relaciones entre las cuatro tablas funcionan satisfactoriamente


d. Realización de variadas queries para darle agilidad en el trabajo y poder saber cuantas películas 
tiene alquiladas, a quién, género de la pelicula, idioma de V.O., precios, etc.

3. Conclusión
La base de datos se encuentra completamente ajustada y comprobada para poder facilitar al emprendedor el control de sus tareas de alquiler en el video club.

