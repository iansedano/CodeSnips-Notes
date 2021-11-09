
##RUBY

### To uninstall everything to start over

`gem uninstall -all`  Prompts
`yes | sudo gem uninstall --all`

`ruby -e 'puts Gem::Specification.all_names'`  lists gems

`sudo apt-get purge ruby rubygems`

var/lib/gems - needed to delete manually after uninstall 

#### rvm
`rvm implode`
or
`rm -rf ~/.rvm`
And don’t forget to remove the script calls in the following files:
`~/.bashrc`
`~/.bash_profile`
`~/.profile`

Install/Use rbenv (Ruby) on Windows 10 Linux WSL
Hervé Leclerc
Hervé Leclerc
Follow
Apr 8, 2016 · 3 min read

### Install fresh rbenv and Ruby https://medium.com/@hleclerc/use-rbenv-ruby-on-windows-10-linux-wsl-a9bce8d97300

1. Add a user, your install will be only for this user not for system wide
 `add user ian` (should already be added)
2. Install mandatory packages
 `sudo apt-get install -y build-essential git libreadline-dev`
 `sudo apt-get install -y libssl-dev`
 `sudo apt-get install -y zlib1g-dev`
libreadline is important for rdoc your build will fail if not installed
3. su with this user
 `su -l ian`
4. Get rbenv
 `git clone https://github.com/rbenv/rbenv.git ~/.rbenv`
5. Get rbenv plugins
 `git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build`
 `git clone https://github.com/rkh/rbenv-whatis.git ~/.rbenv/plugins/rbenv-whatis`
 `git clone https://github.com/rkh/rbenv-use.git ~/.rbenv/plugins/rbenv-use`
6. Compile rbenv utility
 `cd ~/.rbenv && src/configure && make -C src`
7. add to .bash_profile or .profile
```
source ~/.bashrc
export PATH=$PATH:$HOME/.rbenv/bin

eval "$(rbenv init -)"
```
9. exit from user and re-su to check all is ok
 `exit`
 `su -l ian`
-l is important to simulate a login

check rbenv is all ok
`curl -fsSL https://github.com/rbenv/rbenv-installer/raw/master/bin/rbenv-doctor | bash`

`cd ~/.rbenv`
`git pull` for latest version
`cd ~/.rbenv/plugins/ruby-build`
`git pull`

10. check rbenv (list all available ruby versions)
 `rbenv install -l`
11. install a version of ruby
 `rbenv install 2.6.6`
it will make some times….
you can check the log in /tmp/ruby-build.xx.log xxx is a timestamp. Check for errors if it fails
12. Install shims after an installation of a version
 `rbenv rehash`
13. list installed version
 `rbenv versions`
14. set the local version of
 `rbenv local 2.6.6`
or
15. set global version of ruby
 `rbenv global 2.6.6`
16. Use a version of ruby (rbenv-use plugin)
`ruby use 2.6.6`
17. Show the version of ruby
 `ruby -v`
18. Show the version of gem
 `gem -v`
 `which gem`

`gem install bundler`
`gem install pessimize`  for adding versions and cleaning gemfiles

19. Write a simple web server in ruby
create a file myserver.rb with this code

```
require ‘socket’  Provides TCPServer and TCPSocket classes
 Initialize a TCPServer object that will listen
 on localhost:2345 for incoming connections.
server = TCPServer.new(‘localhost’, 2345)
 loop infinitely, processing one incoming
 connection at a time.
loop do
 Wait until a client connects, then return a TCPSocket
  that can be used in a similar fashion to other Ruby
  I/O objects. (In fact, TCPSocket is a subclass of IO.)
 socket = server.accept
 Read the first line of the request (the Request-Line)
 request = socket.gets
 Log the request to the console for debugging
 STDERR.puts request
response = “Hello World!\n”
 We need to include the Content-Type and Content-Length headers
  to let the client know the size and type of data
  contained in the response. Note that HTTP is whitespace
  sensitive, and expects each header line to end with CRLF (i.e. “\r\n”)
 socket.print “HTTP/1.1 200 OK\r\n” +
 “Content-Type: text/plain\r\n” +
 “Content-Length: {response.bytesize}\r\n” +
 “Connection: close\r\n”
 Print a blank line to separate the header from the response body,
  as required by the protocol.
 socket.print “\r\n”
 Print the actual response body, which is just “Hello World!\n”
 socket.print response
 Close the socket, terminating the connection
 socket.close
end
```

20. test your server
`ruby myserver.rb`
then try opening http://localhost:2345/bashonwindows in your browser
You should see GET /anything HTTP/1.1 in shell and Hello World in browser
Happy Ruby Coding