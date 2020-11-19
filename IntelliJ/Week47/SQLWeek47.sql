Use sakila;

SELECT * FROM actor;

SELECT * FROM actor WHERE last_name = 'CAGE';

SELECT * FROM actor WHERE first_name NOT IN ('ZERO', 'NICK');

SELECT * FROM actor WHERE first_name in ('NICK','JOHNNY','JAMES','MORGAN','WHOOPI');

SELECT * FROM actor WHERE actor_id >= 50 AND actor_id <= 150;

SELECT * FROM actor WHERE first_name LIKE 'C%';

SELECT * FROM actor ORDER BY first_name;

SELECT * FROM actor ORDER BY last_name DESC;

SELECT COUNT(*) AS 'Number Of Actors' FROM actor;

SELECT COUNT(DISTINCT(first_name)) FROM actor;

SELECT * FROM film WHERE film_id IN (SELECT film_id FROM film_category WHERE category_id = 11);
SELECT title AS 'Gyserfilm' FROM film  WHERE film_id IN (SELECT film_id FROM film_category WHERE category_id = 11);

SELECT * FROM film WHERE film_id IN(11);

#2 
INSERT INTO actor VALUES (201, "Thomas", "Amorsen", CURRENT_TIME());

INSERT INTO film_actor VALUES (201, 1, CURRENT_TIME());
INSERT INTO film_actor VALUES (201, 2, CURRENT_TIME());
INSERT INTO film_actor VALUES (201, 3, CURRENT_TIME());
INSERT INTO film_actor VALUES (201, 4, CURRENT_TIME());
INSERT INTO film_actor VALUES (201, 5, CURRENT_TIME());

UPDATE actor SET first_name = 'TT' Where actor_id = 201;
UPDATE actor SET last_name = 'AA' Where actor_id = 201;

DELETE FROM film_actor WHERE actor_id = 201;
DELETE FROM actor WHERE actor_id = 201;

#3
SELECT * FROM film INNER JOIN film_category ON film.film_id = film_category.film_id WHERE film_category.category_id = 11;