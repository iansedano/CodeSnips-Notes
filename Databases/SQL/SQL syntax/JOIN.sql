/* 
INNER JOIN is default - returns overlapping info

using sakila db

*/

SELECT actor.first_name, actor.last_name, film.title, film.release_year   # fields to select
FROM actor     #first table to select from
INNER JOIN film_actor    # first table to join 
    ON actor.actor_id = film_actor.actor_id    # the field on which to join the two tables
INNER JOIN film   # second table to join
    ON film_actor.film_id = film.film_id   # the field on which to join the two tables
WHERE actor.first_name = "PENELOPE" AND actor.last_name = "GUINESS";   # boolean condition to filter results 

# returns all films in which penelope guiness starred in

# Can be rewritten as:

SELECT a.first_name, a.last_name, f.title, f.release_year  
FROM actor a
JOIN film_actor fa
    ON a.actor_id = fa.actor_id
JOIN film f
    ON fa.film_id = f.film_id
WHERE a.first_name = "PENELOPE" AND a.last_name = "GUINESS";

/*
Inner joins return all results where there is a matching record
in each table.
But sometimes, we need all the records from one table
whether or not there is a matching record in the join table.
In this circumstance, we use the LEFT and/or RIGHT joins.

A LEFT JOIN will return all rows from the left table
(the first one mentioned in the join clause),
even if there's no matching record in the right table.

A RIGHT JOIN will return all rows from the right table
(the second one mentioned in the join clause),
even if there's no matching record in the left table.


So, let's say we want to get a list of all customers
from the customer table, and we also want to return a list of actors
from actor table that share the same first or last name
as the customer. That said, we need the entire list of customers,
whether or not there is an actor with the same first or last name.
In this case, we can use a LEFT JOIN to get all records
from the customer table, as well as any matching records 
from the actor table.
(When there is no match in the actor table the result
will just show NULL for those fields.)
*/

SELECT 
    c.first_name, 
    c.last_name,
    a.first_name,
    a.last_name
FROM customer c
LEFT JOIN actor a 
	ON c.last_name = a.last_name
ORDER BY c.last_name;

SELECT 
    c.first_name, 
    c.last_name,
    a.first_name,
    a.last_name
FROM customer c
RIGHT JOIN actor a 
	ON c.last_name = a.last_name

/*
So, let's say for some reason we want to know
all the names of all customers and all actors
in a single result set.
In this case we could run the following query:
*/

select first_name, last_name 
from actor
UNION 
select first_name, last_name 
from customer