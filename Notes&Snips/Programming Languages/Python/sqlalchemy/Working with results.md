```python
import sqlalchemy

engine = sqlalchemy.create_engine(
    'mysql+pymysql://root:cO2rm2JY9mHNPqkr0GSs@localhost/sakila')

connection = engine.connect()
metadata = sqlalchemy.MetaData()
actorTable = sqlalchemy.Table(
    'actor', metadata, autoload=True, autoload_with=engine)

query = sqlalchemy.select([actorTable])
result_proxy = connection.execute(query)

'''
for result in result_proxy:
    print(f'First Name: {result["first_name"]}')
    print(result)
    print(type(result))
    print(result.keys())
'''

# Mapping to objects


class actor:

    def __init__(self, actor_id, first_name, last_name, last_update):
        self.actor_id = actor_id
        self.first_name = first_name
        self.last_name = last_name
        self.last_update = last_update

    def __str__(self):
        return f"actor: {self.first_name} {self.last_name} " \
        f"was updated: {self.last_update}"


actor_list = []
for result in result_proxy:
    new_actor = actor(result['actor_id'], result['first_name'],
                      result['last_name'], result['last_update'])
    actor_list.append(new_actor)

print("\n\n +++++++++ \n\n")
for actor in actor_list:
    print(actor)

```