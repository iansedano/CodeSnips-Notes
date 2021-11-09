```python
import sqlalchemy
from pprint import pprint

engine = sqlalchemy.create_engine(
    'mysql+pymysql://root:cO2rm2JY9mHNPqkr0GSs@localhost/sakila')

connection = engine.connect()
metadata = sqlalchemy.MetaData()

newTable = sqlalchemy.Table(
    'newtable', metadata, autoload=True, autoload_with=engine)

query = sqlalchemy.update(newTable).values(
    salary=100000).where(newTable.columns.id == 1)

result = connection.execute(query)

```