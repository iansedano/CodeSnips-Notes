```python
import sqlalchemy
from pprint import pprint

engine = sqlalchemy.create_engine(
    'mysql+pymysql://root:cO2rm2JY9mHNPqkr0GSs@localhost/sakila')

connection = engine.connect()
metadata = sqlalchemy.MetaData()

newTable = sqlalchemy.Table(
    'newtable', metadata, autoload=True, autoload_with=engine)

query = sqlalchemy.delete(newTable).where(newTable.columns.salary < 100000)
results = connection.execute(query)

```