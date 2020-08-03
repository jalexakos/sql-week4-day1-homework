-- Homework for Josh Alexakos Week 4 Day 1

-- Question 1
SELECT COUNT(last_name)
FROM actor
WHERE last_name LIKE 'Wahlberg'; -- answer is 2; I'm assuming a count was wanted

-- Question 2
SELECT COUNT(amount)
FROM payment
WHERE amount BETWEEN 3.99 and 5.99; -- answer is 5607; again assuming count was wanted

-- Question 3
SELECT *
FROM inventory; -- did this to figure out what info is in inventory
SELECT film_id, COUNT(film_id) as num_in_stock
FROM inventory
GROUP BY film_id
ORDER BY num_in_stock DESC; -- did this to find the count of the amount of inventory for each film and then order them by that;
-- answer is film_id 193 with 8

SELECT *
FROM film; -- did this to figure out what info is in film

SELECT film_id, title
FROM film
WHERE film_id = 193; -- Answer is "Crossroads Casualties"

-- Question 4
SELECT last_name
FROM customer
WHERE last_name = 'William'; -- I did this with 'William' and it returned nothing, so I tried with 'Williams' and got one customer.
-- Not sure which is right

-- Question 5
SELECT staff_id, COUNT(staff_id) as best_seller
FROM rental
GROUP BY staff_id; -- Answer is employee with id of 1, who rented 8040 units 

-- Question 6
SELECT district, COUNT(district) as d_count
FROM address
GROUP BY district
ORDER BY d_count DESC; -- Answer is 378 different districts

SELECT COUNT(DISTINCT district)
FROM address;

-- Question 7
SELECT film_id, COUNT(actor_id) as act_count
FROM film_actor
GROUP BY film_id
ORDER BY act_count DESC; -- Film_id 508 has 15 actors in it

SELECT film_id, title
FROM film
WHERE film_id = 508; -- Answer is Lambs Cincinatti

-- Question 8
SELECT store_id, last_name
FROM customer
WHERE last_name LIKE '%es' AND store_id = 1; -- There are 13 customers with a last name that ends in "es"

-- Question 9
SELECT amount, COUNT(rental_id) as r_count
FROM payment
WHERE customer_id BETWEEN 380 and 430
GROUP BY amount
HAVING COUNT(rental_id) > 250
ORDER BY r_count DESC; -- Amounts are 2.99 with 290, 4.99 with 281, and 0.99 with 269, so 3 payment amounts

-- Question 10
SELECT rating, COUNT(rating) as r_count
FROM film
GROUP BY rating
ORDER BY r_count DESC; -- There are 5 ratings, and PG-13 has the most with 223