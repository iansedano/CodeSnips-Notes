import sqlalchemy
from pprint import pprint

engine = sqlalchemy.create_engine(
    'mysql+pymysql://root:cO2rm2JY9mHNPqkr0GSs@localhost/sakila')

connection = engine.connect()
metadata = sqlalchemy.MetaData()
actor = sqlalchemy.Table(
    'actor', metadata, autoload=True, autoload_with=engine)

# print(actor.columns.keys())
# print(repr(metadata.tables['actor']))

# ** How to translate SQL statements into python **

# ** SELECT * FROM actor **
query = sqlalchemy.select([actor])
result_proxy = connection.execute(query)

# result_set = result_proxy.fetchall()
# pprint(result_set)

result_set = result_proxy.fetchmany(5)
pprint(result_set)


def get_and_print(query):
    result_proxy = connection.execute(query)
    result_set = result_proxy.fetchall()
    print("\n")
    pprint(result_set)


def get_and_print5(query):
    result_proxy = connection.execute(query)
    result_set = result_proxy.fetchmany(5)
    print("\n")
    pprint(result_set)

# ** SELECT * FROM sakila.actor WHERE first_name = "PENELOPE" **


query = sqlalchemy.select([actor]).where(
    actor.columns.first_name == 'PENELOPE')
get_and_print(query)


# SELECT * FROM sakila.actor
# WHERE first_name
# IN ("PENELOPE", "JOHN", "UMA")

query = sqlalchemy.select([actor]).where(
    actor.columns.first_name.in_(["PENELOPE", "JOHN", "UMA"]))

get_and_print(query)

# SELECT * FROM sakila.film
# WHERE length > 60 AND rating = "PG"

film = sqlalchemy.Table(
    'film', metadata, autoload=True, autoload_with=engine)

query = sqlalchemy.select([film]).where(
    sqlalchemy.and_(
        film.columns.length > 60,
        film.columns.rating == "PG"))

get_and_print5(query)

# SELECT * FROM sakila.film
# WHERE length > 60 AND NOT rating = "PG"

query = sqlalchemy.select([film]).where(
    sqlalchemy.and_(
        film.columns.length > 60,
        film.columns.rating != "PG"))

get_and_print5(query)

# SELECT * FROM sakila.film
# ORDER BY reaplacement_cost ASC

query = sqlalchemy.select([film]).order_by(
    sqlalchemy.asc(film.columns.replacement_cost))

get_and_print5(query)


# SELECT SUM(length) FROM sakila.film

query = sqlalchemy.select([sqlalchemy.func.sum(film.columns.length)])
get_and_print(query)

# JOINS

film_actor = sqlalchemy.Table(
    'film_actor', metadata, autoload=True, autoload_with=engine)

join_statement = actor.join(
    film_actor,  # table
    film_actor.columns.actor_id == actor.columns.actor_id  # join
).join(
    film,  # table
    film.columns.film_id == film_actor.columns.film_id)  # join

query = sqlalchemy.select([
    film.columns.film_id,
    film.columns.title,
    actor.columns.first_name,
    actor.columns.last_name
]).select_from(join_statement)

get_and_print5(query)
