AWS management console

launch own server by creating new instance  of EC2
log into instance
install mySQL
open up port 3306

then in mySQL workbench

in connections, Hostname : ip_adress_of_server

--Also "just for fun"

Create an RDS instance (be careful, can get expensive fast)

Create database
Select MySQL
Next
Dev/Test -MySQL
default settings (try avoid latest versions)
DB instance class - should be tiny - db.t2.micro

cost already at 14.71 per month...

DB instance identifier - name
Masterusername - name...

public accesibility - no if you only want one server to have access

enable auto minor version upgrade

--

once running check default SECURITY AND NETWORK GROUP
SECURITY GROUP
Default virtual private cloud
Inbound
Edit
Source
From Custom to Anywhere (to make available to everyone (shouldnt do!))

go to mySQL workbench or CLI and import whatever...





