
https://www.alexdebrie.com/posts/dynamodb-single-table/
Single-table design is recommended


suited for [[OLPT Online Transaction Processing]]

not for [[OLAP Online Analytical Processing]]


When you design a single table you have to think of everything. Its a very static and unfriendly to change design. But very efficient.

You can implement some kind of processing process to wrangle your data into a more analytically friendly format.


Don't use whenever you need query flexibility / easier analytics than performance. So when you have a new app, or applications with graphQL


DynamoDB was built for large scale high velocity apps that were starting to outscale the relational database.

You can implement faux-sql in dynamo, but that means making many calls to server with longer waiting times.

https://medium.com/imaginelearning/getting-started-with-dynamodb-d147ed9e629e
Every item needs a primary key
	- can be a partition key
	- or partition key & sort key
	
DynamoDB groups items by partition key

[AWS NoSQL Workbench](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/workbench.html).

[[ETL (Extract Transform Load) Process]]

[[Spreadsheets vs Databases]]