```sql
SQ logic

1 or 0 or NULL;

=
!=;

ALL		;	--returns 1 if everything is 1
AND		;	--if 1 & 1 = 1
			--if 1 & 0 = 0
ANY		;	--1 0 0 0 0 = 1
			--0 1 0 0 0 = 1
			--0 0 0 0 0 = 0
BETWEEN	;	--Range
EXISTS	;	--if contained in any rows
IN		;	--if is in list of values
LIKE	;	--if matches pattern
NOT
OR


SELECT
a,
b
FROM
A
LEFT JOIN B ON A.f = B.f. --
WHERE Search Condition;

SELECT * FROM sakila.actor WHERE actor_id = 123;
SELECT * FROM sakila.film WHERE length > 184;
SELECT * FROM film WHERE length < 50 AND rating = "G";
SELECT * FROM sakila.film where rating = "G" OR rating = "PG";

SELECT * from actor 
ORDER BY first_name ASC;

SELECT * from actor 
ORDER BY last_name DESC;

SELECT * FROM customer
LIMIT 10;

SELECT c.first_name, c.last_name, SUM(p.amount) as total_payments
FROM customer c
JOIN payment p
ON c.customer_id = p.customer_id
GROUP BY c.customer_id
ORDER BY total_payments DESC
LIMIT 5;  -- limit must always be last...

DISTINCT -- UNIQUE


```