get web community edition from website

`install`

configure as service is fine

if not

Start cmd
Go to the "C:\Program Files\MySQL\MySQL Server xxxx\bin"
type `mysqld --install`  // or `mysqld-nt.exe --install`


// to find service name run 'services.msc', look for MySQL and click on properties

To Stop MySQL Service

	net stop {service name} 

To Start MySQL Service

	net start {service name} 



You can create batch files to start and stop the service fairly easily as well. Now use this name in batch files.

start.bat

	net start "{service name}"

stop.bat

	net stop "{service name}"



also possible stop is

mysqladmin -u root shutdown (from within bin folder)