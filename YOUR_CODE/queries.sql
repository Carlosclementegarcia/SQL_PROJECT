-- Títulos de películas en orden descendente

SELECT title
FROM df_film
ORDER BY title DESC;

-- Enumerar el número total de películas

SELECT COUNT(*) AS num_films
FROM df_film;

-- selecciona la película que supera las 2 horas

SELECT title, length FROM df_film WHERE length > 120;

-- selecciona las películas con importe mayor de 3 $

SELECT title, rental_rate FROM df_film WHERE rental_rate > 3;


-- Ver los alquileres que ha realizado cada cliente

SELECT customer_id, COUNT(*) as num_rentals FROM df_rental GROUP BY customer_id;


-- peliculas que contengan en la descripción 'the'


SELECT title, description FROM df_film WHERE description LIKE '%the%';


-- Busca todas las películas con el lenguaje en inglés

SELECT * FROM df_film WHERE original_language_id <> 1;


-- Seleccionar el número de inventarios por tienda en la tabla df_inventory.

SELECT store_id, COUNT(*) as inventory_count FROM df_inventory GROUP BY store_id;


-- Dime los registros de ambas tablas que tengan un customer_id en común.

SELECT *
FROM df_rental
INNER JOIN df_customer
ON df_rental.customer_id = df_customer.customer_id;

-- De la tabla df_film une nombre y apellido

SELECT CONCAT(first_name, ' ', last_name) AS full_name
FROM df_film;















