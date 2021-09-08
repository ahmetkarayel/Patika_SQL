-- 1.

SELECT COUNT(*) FROM film
WHERE length > (SELECT AVG(length) FROM film

-- 2.

SELECT COUNT(*) FROM film
WHERE rental_rate = (SELECT MAX(rental_rate) FROM film)

-- 3.

(SELECT MIN(rental_rate) FROM film)
INTERSECT
(SELECT MIN(replacement_cost) FROM film)

-- 4.

SELECT COUNT(*) FROM payment
GROUP BY customer_id
HAVING COUNT(*) >= ALL ( SELECT COUNT(*) FROM payment GROUP BY customer_id )
