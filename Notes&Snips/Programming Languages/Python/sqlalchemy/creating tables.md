```python
import sqlalchemy
from pprint import pprint

engine = sqlalchemy.create_engine(
    'mysql+pymysql://root:cO2rm2JY9mHNPqkr0GSs@localhost/sakila')

connection = engine.connect()
metadata = sqlalchemy.MetaData()

newTable = sqlalchemy.Table('newTable', metadata,
	sqlalchemy.Column('id', sqlalchemy.Integer()),
	sqlalchemy.Column('name', sqlalchemy.String(255), nullable=False),
	sqlalchemy.Column('salary', sqlalchemy.Float(), default = 100.0),
	sqlalchemy.Column('active', sqlalchemy.Boolean(), default = True)
	)

metadata.create_all(engine)


```