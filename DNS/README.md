# BIND9 DNS
For DNS services on my Ubuntu server I am using BIND9. I will include the directions below to configure it, configuration files are in this directory as well.

# BIND9 Installation
To install BIND9 with a Ubuntu server, run the command **sudo apt-get install bind9** 

# BIND9 Configuration
## Caching Server
To enable this BIND9 DNS Caching Server open **/etc/bind/named.conf.options** with a text editor. Uncomment the forwarders portion of the document and replace the 0.0.0.0 with your preferred DNS. (I used 8.8.8.8 & 8.8.4.4)
