#connect to mySQL

    `mysql -u root -p`

#Load a CSV file into a table.
    mysql> LOAD DATA INFILE '/tmp/filename.csv' replace INTO TABLE [table name] FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' (field1,field2,field3);



`mysqldump` commands are done from outside of mysql shell

`mysqldump -u root -p sakila > sakila_backup.sql` dumps to current folder

`mysql> drop schema sakila;` deletes!
`show databases;`

backing up
create empty schema `create schema sakila;`
`exit`

`mysql -u root -p sakila < sakila_backup.sql`

#Dump all databases for backup. Backup file is sql commands to recreate all db's.
    mysqldump -u username -ppassword --opt > /tmp/alldatabases.sql
#Dump one database for backup.
    mysqldump -u username -ppassword --databases databasename > /tmp/databasename.sql
#Dump a table from a database.
    mysqldump -u username -ppassword databasename tablename > /tmp/databasename.tablename.sql
#Restore database (or database table) from backup.
    mysql -u username -ppassword databasename < /tmp/databasename.sql