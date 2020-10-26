# Proxy Server
For proxy services on my Ubuntu server I am using Squid. I will include the directions below to configure it, configuration files are in this directory as well.

# Squid Installation
To install Squid with a Ubuntu server, run the command **sudo apt-get install squid**.

# Squid Configuration
To configure squid you just need to open the file **/etc/squid/squid.conf** and make some changes.

- At the top of the file I added some ACL statements:

