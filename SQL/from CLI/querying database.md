CREA
#To delete a table.
	mysql> drop table [table name];
#connect to mySQL

    `mysql -u root -p`

#Show all data from a table.
	mysql> SELECT * FROM [table name];
#To return columns and column information.
	mysql> show columns from [table name];
#Show particular rows with the given value.
	mysql> SELECT * FROM [table name] WHERE [field name] = "value";


#Create Table Example 1.
	mysql> CREATE TABLE [table name] (name VARCHAR(20));
#Create Table Example 2.
	mysql> create table [table name] (personid int(50) not null auto_increment primary key,firstname varchar(35),middlename varchar(50),lastnamevarchar(50) default 'somethiing');


