#connect to mySQL

    `mysql -u root -p`

you should get the shell `mysql>`


#Create a database.
    `create database [databasename];`

    `create schema [dbname]`

These two commands are equivalent as of MySQL 5.0.2

#List all databases on the server.
    `show databases;`

#Switch to a database.
    `use [db name];`
#To see all the tables in the db.
    `show tables;`
#To see table's field formats.
    `describe [table name];`
#To delete a db.
    `drop database [database name];`


#Creating a new user. 
Login as root. Switch to the MySQL db. Make the user. Update priviledges.

    ```
    mysql -u root -p
    use mysql;
    INSERT INTO user (Host,User,Password) VALUES('%','username',PASSWORD('password'));
    flush privileges;
    ```

#Change a users password from unix shell.
    [mysql dir]/bin/mysqladmin -u username -h hostname -ppassword 'new-password'

#Change a users password from MySQL prompt. Login as root. Set the password. Update privileges.
    mysql -u root -p
    mysql> SET PASSWORD FOR 'user'@'hostname' = PASSWORD('password');
    mysql> flush privileges;
#Recover a MySQL root password. Stop the MySQL server process. Start again with no grant tables. Login to MySQL as root. Set new password. Exit MySQL and restart MySQL server.
    /etc/init.d/mysql stop
    mysqld_safe --skip-grant-tables
    mysql -u root
    mysql> use mysql;
    mysql> update user set password=PASSWORD("newpassword") where User='root';
    mysql> flush privileges;
    mysql> quit
    /etc/init.d/mysql stop
    /etc/init.d/mysql start

#Set a root password if there is no root password.
    mysqladmin -u root password newpassword
# Update a root password.
    mysqladmin -u root -p oldpassword newpassword

#Allow the user "Someone" to connect to the server from localhost using the password "passwd". Login as root. Switch to the MySQL db. Give privs. Update privs.
    mysql -u root -p
    mysql> use mysql;
    mysql> grant usage on *.* to Someone@localhost identified by 'passwd';
    mysql> flush privileges;
