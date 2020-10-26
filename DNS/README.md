# BIND9 DNS
For DNS services on my Ubuntu server I am using BIND9. I will include the directions below to configure it, configuration files are in this directory as well.

# BIND9 Installation
To install BIND9 with a Ubuntu server, run the command **sudo apt-get install bind9** 

# BIND9 Configuration
## Caching Server
To enable this BIND9 DNS Caching Server open **/etc/bind/named.conf.options** with a text editor. Uncomment the forwarders portion of the document and replace the 0.0.0.0 with your preferred DNS. (I used 8.8.8.8 & 8.8.4.4)

![CachingConf](https://user-images.githubusercontent.com/73307402/97124794-45a09700-1710-11eb-8e76-8fc444de2bb2.PNG)

## Primary Master Server Configuration
Next we will configure BIND9 as the primary master for the domain **domain.com**

We must add a DNS zone to BIND9 and turn BIND9 into a primary master server. Edit **/etc/bind9/named.conf.local** and add the zone with the following configuration;


