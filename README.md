# Gateway-Documentation
Documentation for installing and configuring a Ubuntu Server, using version 20.04.1.
The Ubuntu server is multihomed and has network interfaces on both a private virtual network (10.0.0.0/24) and an external network on the lan (192.168.2.0/24).
The Ubuntu server has been configured to run the following services:
* DNS - I used BIND9 For address resolution in the private network I have set up DNS services to allow tranlsation to our created private domain.
* DHCP - A dynamic host configuration protocol is set up on the server and dishes out addresses on the private 10.0.0.0/24 network.
* FW - UFW has been used to configure firewall settings on the server and for NAT IP Masquerading to allow our private 10.0.0.0/24 network to communicate with machines outside of it's network.
* SQUID - Squid has been used to configure a transparent proxy server on the ubuntu server and block traffic to the site www.neverssl.com on the 10.0.0.0/24 network

# Installation of Ubuntu 20.04.1
**NOTE: To install the virtual machines you will need a hypervisor**; I used VMWorstation for the installation of mine but you may use whatever you want.

You can grab the installation file for Ubuntu here: https://ubuntu.com/download/server. (_Make sure to grab 20.04.1_)

When setting up the virtual machine and designating hardware resources ensure you give it 2 network interfaces, so you can have a private network and an external network. You will want one virtual network card pointing to your physical computers network card and the other card put it in a LAN segment or Private network

Start up the created virtual machine and start the ubuntu install :).
1. Select language.
2. Installer update prompt will come up, continue without updating.
3. Leave default keyboard configuration.
4. Network connections, you will want to set static IP's on your NICs. Select your card connected to the external network and go to Edit IPv4. Change method from Automatic(DHCP) to Manual. For the network you will want to put it on the same network your personal computer is on, if your router is 192.168.2.1 you are on the 192.168.2.0/24 network. I chose **192.168.2.222**, and used my router for default gateway. The namerservers I used 8.8.8.8, 8.8.4.4 but you can use whatever ones you wish. Also select your second NIC and set that to manual, you're going to create a private network not on the 192.162.2.0. I used 10.0.0.250 as my address and set the nameservers for this card to 10.0.0.250 as well since this Ubuntu server is going to have DNS services.
5. Skip the "add a proxy server page".
6. Continue with default settings until profile setup.
7. Choose user/pw
8. Enable secure SSH access
9. Skip next step and start installation process.
10. Congratulations you have a running Ubuntu Server :).
