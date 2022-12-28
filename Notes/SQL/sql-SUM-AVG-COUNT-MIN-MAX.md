```sql
SELECT SUM(amount) FROM payment;

#total revenue
SELECT SUM(amount) AS total_revenue_2005 
FROM payment 
WHERE payment_date > "2005-01-01" 
AND payment_date < "2006-01-01"

# how many payments
SELECT COUNT(amount) AS num_payment_2005 
FROM payment 
WHERE payment_date > "2005-01-01" 
AND payment_date < "2006-01-01"

#how many actors
SELECT COUNT(customer_id) AS customers
FROM customer;


#average payment amount
SELECT AVG(amount) AS avg_payment
FROM payment;

#largest payment
SELECT MAX(amount) AS largest_payment 
FROM payment;

#lowest
SELECT MIN(amount) AS smallest_payment 
FROM payment;
```