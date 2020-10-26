# DHCP
For DHCP services on my Ubuntu server we will install isc-dhcp-server. I will include the directions below to configure it, configuration file is in this directory as well. It is stored in the **/etc/dhcp/** folder.

# DHCP Installation
To install DHCP with a Ubuntu server, run the command **sudo apt-get install isc-dhcp-server** 

# DHCP Configuration
- Open **/etc/dhcp/dhcpd.conf** with a text editor.
- Delete the first two options and below max-lease-time 7200; insert the following information.

![DHCP](https://user-images.githubusercontent.com/73307402/97217758-81863b80-17a6-11eb-9af8-9c6678a4c8c3.PNG)
- If you selected a different TLD than new.com you can change that. 
- The subnet can be changed if you did not use 10.0.0.0/24 for the internal network. The ranges can be configured as well as long as they are in the same subnet.
- Make sure **option domain-name-servers** is set to the internal IP address of your ubuntu server, it is 10.0.0.250 in my case.
- After making changes restart the service with **"sudo service isc-dhcp-server restart"**; or just stop and start it :). 
