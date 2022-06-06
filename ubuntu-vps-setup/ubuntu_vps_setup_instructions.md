Putty generate SSH key

- open puttygen not putty
- select RSA
- Generate
- Or use existing and copy with

```shell
ssh-copy-id username@remote_host
```

Bash Commands

```bash
sudo apt update
sudo apt upgrade
sudo nano /etc/ssh/sshd_config # to disable password login and enable SSH and set SSH port
service sshd restart
sudo iptables -L -v -n

sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw allow ssh
sudo ufw allow 22

# === OPTIONAL ===
sudo ufw allow XXXXX # Replace XXXXX with custom SSH port
sudo ufw allow XXXXX/tcp # Replace XXXXX with custom SSH port
sudo ufw deny ssh
sudo ufw deny 22
# === OPTIONAL ===

sudo ufw enable
sudo ufw status verbose
sudo ufw status

sudo iptables -S

sudo ufw status verbose
service ssh restart
```

### /etc/ssh/sshd_config
This makes sure that SSH is the only way to log in

```bash
#       $OpenBSD: sshd_config,v 1.101 2017/03/14 07:19:07 djm Exp $

# This is the sshd server system-wide configuration file.  See
# sshd_config(5) for more information.

# This sshd was compiled with PATH=/usr/bin:/bin:/usr/sbin:/sbin

# The strategy used for options in the default sshd_config shipped with
# OpenSSH is to specify options with their default value where
# possible, but leave them commented.  Uncommented options override the
# default value.

Port XXXXX # Replace XXXXX with custom SSH port
#AddressFamily any
ListenAddress 0.0.0.0
#ListenAddress ::

#HostKey /etc/ssh/ssh_host_rsa_key
#HostKey /etc/ssh/ssh_host_ecdsa_key
#HostKey /etc/ssh/ssh_host_ed25519_key

# Ciphers and keying
#RekeyLimit default none

# Logging
#SyslogFacility AUTH
#LogLevel INFO

# Authentication:

#LoginGraceTime 2m
PermitRootLogin no # CAREFUL TO HAVE OTHER LOGIN SETUP
#StrictModes yes
#MaxAuthTries 6
#MaxSessions 10

PubkeyAuthentication yes

# Expect .ssh/authorized_keys2 to be disregarded by default in future.
#AuthorizedKeysFile     .ssh/authorized_keys .ssh/authorized_keys2

#AuthorizedPrincipalsFile none

#AuthorizedKeysCommand none
#AuthorizedKeysCommandUser nobody

# For this to work you will also need host keys in /etc/ssh/ssh_known_hosts
#HostbasedAuthentication no
# Change to yes if you don't trust ~/.ssh/known_hosts for
# HostbasedAuthentication
#IgnoreUserKnownHosts no
# Don't read the user's ~/.rhosts and ~/.shosts files
#IgnoreRhosts yes

# To disable tunneled clear text passwords, change to no here!
PasswordAuthentication no
#PermitEmptyPasswords no

# Change to yes to enable challenge-response passwords (beware issues with
# some PAM modules and threads)
ChallengeResponseAuthentication no

# Kerberos options
#KerberosAuthentication no
#KerberosOrLocalPasswd yes
#KerberosTicketCleanup yes
#KerberosGetAFSToken no

# GSSAPI options
#GSSAPIAuthentication no
#GSSAPICleanupCredentials yes
#GSSAPIStrictAcceptorCheck yes
#GSSAPIKeyExchange no

# Set this to 'yes' to enable PAM authentication, account processing,
# and session processing. If this is enabled, PAM authentication will
# be allowed through the ChallengeResponseAuthentication and
# PasswordAuthentication.  Depending on your PAM configuration,
# PAM authentication via ChallengeResponseAuthentication may bypass
# the setting of "PermitRootLogin without-password".
# If you just want the PAM account and session checks to run without
# PAM authentication, then enable this but set PasswordAuthentication
# and ChallengeResponseAuthentication to 'no'.
UsePAM yes

#AllowAgentForwarding yes
#AllowTcpForwarding yes
#GatewayPorts no
X11Forwarding yes
#X11DisplayOffset 10
#X11UseLocalhost yes
#PermitTTY yes
PrintMotd no
#PrintLastLog yes
#TCPKeepAlive yes
#UseLogin no
#PermitUserEnvironment no
#Compression delayed
#ClientAliveInterval 0
#ClientAliveCountMax 3
#UseDNS no
#PidFile /var/run/sshd.pid
#MaxStartups 10:30:100
#PermitTunnel no
#ChrootDirectory none
#VersionAddendum none

# no default banner path
#Banner none

# Allow client to pass locale environment variables
AcceptEnv LANG LC_*

# override default of no subsystems
Subsystem       sftp    /usr/lib/openssh/sftp-server

# Example of overriding settings on a per-user basis
#Match User anoncvs
#       X11Forwarding no
#       AllowTcpForwarding no
#       PermitTTY no
#       ForceCommand cvs server

```


https://www.digitalocean.com/community/tutorials/how-to-install-the-apache-web-server-on-ubuntu-18-04

https://www.codementor.io/@abhishake/minimal-apache-configuration-for-deploying-a-flask-app-ubuntu-18-04-phu50a7ft


```bash
sudo apt install apache2
sudo apt-get install libapache2-mod-wsgi-py3 python-dev
sudo apt install python3-pip

pip3 install flask #Maybe in venv...

sudo ufw app list
sudo ufw allow 'Apache'
sudo systemctl status apache2
hostname -I # This is local IP - visit and you should have default page...
```

```bash

sudo systemctl stop apache2
sudo systemctl start apache2
sudo systemctl restart apache2
sudo systemctl reload apache2

```

https://medium.com/@thishantha17/build-a-simple-python-rest-api-with-apache2-gunicorn-and-flask-on-ubuntu-18-04-c9d47639139b

```bash
mkdir flask_rest
cd flask_rest/
sudo apt-get install python3-venv
python3 -m venv venv
source venv/bin/activate
pip3 install flask
vim app.py
python3 app.py
pip3 install gunicorn
gunicorn --bind 127.0.0.1:8080 wsgi:app
vim wsgi.py
gunicorn --bind 127.0.0.1:8080 wsgi:app
vim gunicorn_config.py
sudo vim /etc/systemd/system/flaskrest.service
sudo systemctl start flaskrest.service
sudo systemctl enable flaskrest.service
sudo systemctl status flaskrest.service
sudo vim /etc/apache2/sites-available/flaskrest.conf
sudo a2ensite flaskrest.conf
sudo a2enmod proxy_http
sudo systemctl restart apache2
sudo systemctl status apache2.service

curl -i -H "Content-type: application/json" -X POST -d '{"number":5}' http://localhost/getSquare
# FAIL

sudo a2dissite 000-default.conf
sudo systemctl reload apache2

# SUCCESS!
```

```bash
${APACHE_RUN_DIR}
${APACHE_LOG_DIR}
${APACHE_RUN_USER}
${APACHE_RUN_GROUP}

export APACHE_RUN_USER=www-data
export APACHE_RUN_GROUP=www-data
export APACHE_PID_FILE=/var/run/apache2$SUFFIX/apache2.pid
export APACHE_RUN_DIR=/var/run/apache2$SUFFIX
export APACHE_LOCK_DIR=/var/lock/apache2$SUFFIX
export APACHE_LOG_DIR=/var/log/apache2$SUFFIX

export LANG=C
## Uncomment the following line to use the system default locale instead:
#. /etc/default/locale

export LANG
```

https://cwiki.apache.org/confluence/display/HTTPD/DistrosDefaultLayout
```bash
ServerRoot              ::      /etc/apache2
DocumentRoot            ::      /var/www
Apache Config Files     ::      /etc/apache2/apache2.conf
                        ::      /etc/apache2/ports.conf
Default VHost Config    ::      /etc/apache2/sites-available/default, /etc/apache2/sites-enabled/000-default
Module Locations        ::      /etc/apache2/mods-available, /etc/apache2/mods-enabled
ErrorLog                ::      /var/log/apache2/error.log
AccessLog               ::      /var/log/apache2/access.log
cgi-bin                 ::      /usr/lib/cgi-bin
binaries (apachectl)    ::      /usr/sbin
start/stop              ::      /etc/init.d/apache2 (start|stop|restart|reload|force-reload|start-htcacheclean|stop-htcacheclean)
```

```bash
ssh uer@185.81.167.215 -p22937
sudo -E env PATH=$PATH python3 main.py
sudo ls /var/log/apache2/

```

