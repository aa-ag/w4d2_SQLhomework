-- W4D2 Homework

-- 1. How many actors are there with the last name ‘Wahlberg’?
SELECT *
FROM actor;

SELECT first_name, last_name
FROM actor
WHERE last_name = 'Wahlberg';
-- There are two actors with that last name: Nick & Daryl


-- 2. How many payments were made between $3.99 and $5.99?
SELECT COUNT(amount)
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99;
-- In 'payment' 5607 payments were made between $3.99 and $5.99


-- 3. What film does the store have the most of? (search in inventory)
SELECT film_id, COUNT(film_id) as how_many
FROM inventory
GROUP BY film_id
ORDER BY how_many DESC;
-- There are an equal amount of the top 72 movies: 8


-- 4. How many customers have the last name ‘William’?
SELECT first_name, last_name
FROM customer
WHERE last_name = 'William';
-- There aren't any customers with that last name. 


-- 5. What store employee (get the id) sold the most rentals?
SELECT COUNT(payment_id), staff_id
FROM payment
GROUP BY staff_id;
-- employee (staff id 1) sold the most rentals
SELECT staff_id, first_name,last_name
FROM staff
WHERE staff_id = 2;
-- employee's (staff id 1) name: Jon Stephens



-- 6. How many different district names are there?
SELECT COUNT(DISTINCT district)
FROM address;
-- There are 378 districts



-- 7. What film has the most actors in it? (use film_actor table and get film_id)
SELECT COUNT(actor_id), film_id
FROM film_actor
GROUP BY film_id
ORDER BY COUNT(actor_id) DESC;
-- Film ID 508 has the most actors: 15.



-- 8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
SELECT COUNT(*)
FROM customer
WHERE last_name LIKE '%es' AND store_id = 1;
--There are 13 customer's whose last name ends in 'es'



-- 9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers 
-- with ids between 380 and 430? (use group by and having > 250)
SELECT COUNT(amount), amount
FROM payment
WHERE customer_id BETWEEN 380 AND 430
GROUP BY amount
HAVING COUNT(amount) > 250;



-- 10. Within the film table, how many rating categories are there? And what rating has the most movies total?
SELECT rating, COUNT(film_id)
FROM film
GROUP BY rating
ORDER BY count DESC;
-- There are 5 rating categories: NC-17, G, PG, PG-13 and R
-- Rating-category 'PG-13' has the most movies. In total: 223.
