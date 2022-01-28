USE sakila;

#1
-- SELECT * FROM actor;
#2
-- SELECT last_name FROM actor WHERE first_name = 'John';
#3
-- SELECT * FROM actor WHERE last_name = 'Neeson';
#4 
-- SELECT * FROM actor WHERE actor_id % 10 = 0;
#5
-- SELECT `description` FROM film where film_id = 100;
#6
-- SELECT * FROM film WHERE rating = 'R';
#7
-- SELECT * FROM film WHERE rating != 'R';
#8
-- SELECT * FROM film ORDER BY length ASC LIMIT 10;
#9 
-- SELECT Title, length FROM film ORDER BY Length DESC;
#10
-- SELECT * FROM film WHERE special_features LIKE '%deleted scene%';
#11
-- I don't think this is right but it seems to work
-- SELECT DISTINCT last_name FROM actor GROUP BY last_name HAVING last_name IS NOT NULL ORDER BY last_name DESC;
#12 
-- SELECT last_name, COUNT(last_name) AS number_with_last_name FROM actor GROUP BY last_name HAVING COUNT(last_name)>1 ORDER BY COUNT(last_name) DESC;
#13 
-- SELECT COUNT(film_actor.actor_id), first_name, last_name
-- FROM film_actor
-- INNER JOIN actor ON film_actor.actor_id = actor.actor_id
-- GROUP BY film_actor.actor_id
-- ORDER BY COUNT(film_actor.actor_id) DESC LIMIT 1;
#14 
-- ORIGINAL ATTEMPT
-- SELECT * FROM film f
-- JOIN inventory i ON f.film_id=i.film_id
-- JOIN store st ON i.store_id=st.store_id
-- JOIN customer cu ON st.store_id=cu.store_id
-- JOIN rental r ON cu.customer_id=r.customer_id;
-- UPDATED ATTEMPT
-- SELECT title, rental_date, return_date, rental_duration FROM film 
-- JOIN inventory ON film.film_id = inventory.film_id
-- JOIN rental ON inventory.inventory_id = rental.inventory_id
-- WHERE film.title = "academy dinosaur"
-- AND rental.return_date IS NULL;
-- ANOTHER WAY
-- SELECT title, DATE_ADD(rental_date, INTERVAL rental_duration DAY) AS date_due FROM film 
-- JOIN inventory ON film.film_id = inventory.film_id
-- JOIN rental ON inventory.inventory_id = rental.inventory_id
-- WHERE film.title = "academy dinosaur"
-- AND rental.return_date IS NULL;
#15 
-- SELECT AVG(length) FROM film; 
#16 
-- SELECT ca.`name`, AVG(LENGTH) FROM film fi
-- JOIN film_category fc ON fi.film_id=fc.film_id
-- JOIN category ca ON fc.category_id=ca.category_id
-- GROUP BY ca.`name`;
#17
-- SELECT * FROM film WHERE description LIKE '%robot%';
#18
-- SELECT COUNT(title) FROM film WHERE release_year=2010;
#19
-- SELECT category.category_id, category.`name`, film.title
-- FROM sakila.category, sakila.film
-- WHERE category.category_id = 11;
#20
-- SELECT first_name, last_name FROM staff WHERE staff_id = 2;
#21
SELECT title FROM film fi
JOIN film_actor fa ON fi.film_id=fa.film_id
JOIN actor a ON fa.actor_id=a.actor_id
WHERE first_name = 'Fred' AND last_name = 'Costner';
#22
-- SELECT COUNT(DISTINCT country) FROM country;
#23
-- SELECT `name` FROM language ORDER BY `name` DESC;
#24
-- SELECT first_name, last_name FROM actor WHERE last_name LIKE '%son' ORDER BY first_name ASC;
#25
-- SELECT `name`, COUNT(Title)FROM film fi
-- JOIN film_category fc ON fi.film_id=fc.film_id
-- JOIN category ca ON fc.category_id=ca.category_id
-- GROUP BY `name`
-- ORDER BY COUNT(Title) DESC LIMIT 1;
























