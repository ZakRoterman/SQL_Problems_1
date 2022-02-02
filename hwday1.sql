--1. How many actors are there with the last name 'Wahlberg'?

--SELECT COUNT(last_name)
--FROM actor
--WHERE last_name = 'Wahlberg';
--Answer: 2

--2. How many payments were made between $3.99 and $5.99

--SELECT COUNT(amount)
--FROM payment
--WHERE amount BETWEEN 3.99 AND 5.99;
--Answer: 5607

--3. What film does the store have the most of? (search in inventory) 

--SELECT film_id, COUNT(film_id)
--FROM inventory
--GROUP BY film_id
--HAVING COUNT(film_id) > 7
--Answer: Many films with 8 copies

--4. How many customers have the last name ‘William’? 

--SELECT COUNT(last_name)
--FROM customer
--WHERE last_name = 'William';
-- Answer: 0

--5. What store employee (get the id) sold the most rentals? 

--SELECT staff_id, COUNT(staff_id)
--FROM payment
--GROUP BY staff_id
--Answer: employee ID: 2


--6. How many different district names are there? 
--SELECT COUNT(DISTINCT district)
--FROM address
--Answer: 378


--7. What film has the most actors in it? (use film_actor table and get film_id) 
--SELECT film_id, COUNT(film_id)
--FROM film_actor
--GROUP BY film_id
--ORDER BY count DESC

--SELECT film FROM film
--WHERE film_id = 508
--Answer: Lambs Cincinatti, Film ID: 508 , 15 actors


--8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table) 
--SELECT COUNT(store_id)
--FROM customer
--WHERE last_name LIKE '%es' AND store_id = 1;
-- Answer: 13

--9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers  with ids between 380 and 430? (use group by and having > 250) 
--SELECT amount, COUNT(amount)
--FROM payment
--WHERE rental_id BETWEEN 380 AND 430
--GROUP BY amount
--HAVING COUNT(amount)>250
--ORDER BY amount 
--Answer: 0

--10. Within the film table, how many rating categories are there? And what rating has the most  movies total?
--SELECT rating, COUNT(rating)
--FROM film
--GROUP BY rating
--ORDER BY count DESC
-- Answer: 5 rating categories , PG-13 with 223