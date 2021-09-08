-- 1.

SELECT city, country FROM city
INNER JOIN country ON city.cid = country.id

-- 2.

SELECT first_name, last_name, payment_id FROM customer
INNER JOIN payment ON customer.id = payment.payment_id

-- 3.

SELECT rental_id, first_name, last_name FROM customer
INNER JOIN rental ON customer.id = rental.rental_id
