```sql
INSERT INTO sakila.actor
    (first_name, last_name)  # column names to insert into
VALUES
    ("Ryan", "Desmond");  # values to insert into those columns (in the same order)

UPDATE sakila.actor  # table to update
SET first_name = "Bryan", last_name = "Besmond"   # fields to be added/updated
WHERE actor_id = 201;   # boolean condition 

DELETE FROM sakila.actor
WHERE actor_id = 201;


# WARNING
delete from actor; -- THIS DELETES EVERYTHING FROM ACTOR!!!!
```