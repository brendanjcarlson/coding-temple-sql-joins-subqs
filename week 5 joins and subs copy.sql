-- 1
SELECT first_name, last_name
FROM customer
JOIN address
ON customer.address_id = address.address_id
WHERE district = 'Texas';



-- 2
SELECT first_name, last_name
FROM customer
JOIN payment
ON payment.customer_id = customer.customer_id
WHERE payment.amount > 6.99;



-- 3
SELECT first_name, last_name, sum(amount)
FROM customer
JOIN payment
ON customer.customer_id = payment.customer_id
GROUP BY first_name, last_name
HAVING sum(amount) > 175;



-- 4
SELECT first_name, last_name, country
FROM customer
JOIN address
ON customer.address_id = address.address_id
JOIN city
ON city.city_id = address.city_id
JOIN country
ON country.country_id = city.country_id
WHERE country.country = 'Nepal';



-- 5
SELECT *
FROM (
	SELECT staff.staff_id, COUNT(payment_id)
	FROM payment
	JOIN staff
	ON payment.staff_id = staff.staff_id
	GROUP BY staff.staff_id) AS foo;
	
	
	
-- 6
SELECT rating, COUNT(rating)
FROM film
GROUP BY rating
ORDER BY COUNT DESC;



-- 7
SELECT DISTINCT first_name, last_name
FROM customer
JOIN payment
ON payment.customer_id = customer.customer_id
WHERE payment.amount > 6.99;



-- 8
SELECT COUNT(amount)
FROM payment
WHERE amount = 0



