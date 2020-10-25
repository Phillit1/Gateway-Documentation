# Gateway-Documentation
Documentation for installing and configuring a Ubuntu Server, using version 20.04.1.
The Ubuntu server is multihomed and has network interfaces on both a private virtual network (10.0.0.0/24) and an external network on the lan (192.168.2.0/24).
The Ubuntu server has been configured to run the following services:
* DNS - For address resolution in the private network I have set up DNS services to allow tranlsation to our created private domain.
* DHCP - A dynamic host configuration protocol is set up on the server and dishes out addresses on the private 10.0.0.0/24 network.
* BIND9 - Bind has been used to configure firewall settings on the server and for NAT IP Masquerading to allow our private 10.0.0.0/24 network to communicate with machines outside of it's network.
* SQUID - Squid has been used to configure a transparent proxy server on the ubuntu server and block traffic to the site www.neverssl.com on the 10.0.0.0/24 network

Testing out editing the read me 
### test
