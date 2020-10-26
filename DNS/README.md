# BIND9 DNS
For DNS services on my Ubuntu server I am using BIND9. I will include the directions below to configure it, configuration files are in this directory as well.

# BIND9 Installation
To install BIND9 with a Ubuntu server, run the command **sudo apt-get install bind9** 

# BIND9 Configuration
## Caching Server
To enable this BIND9 DNS Caching Server open **/etc/bind/named.conf.options** with a text editor. Uncomment the forwarders portion of the document and replace the 0.0.0.0 with your preferred DNS. (I used 8.8.8.8 & 8.8.4.4). After editing this information you need to reset BIND9 with (**sudo service bind9 restart**) for changes to go into effect.

![CachingConf](https://user-images.githubusercontent.com/73307402/97124794-45a09700-1710-11eb-8e76-8fc444de2bb2.PNG)

## Primary Master Server Configuration
**Important Note: the TLD new.com is used here and the file db.new.com is referenced. If you use different names you must change your input into the configuration files**


Next we will configure BIND9 as the primary master for the domain **new.com**

We must add a DNS zone to BIND9 and turn BIND9 into a primary master server. Edit **/etc/bind9/named.conf.local** and add the zone with the following configuration;

![BIND9 named conf local](https://user-images.githubusercontent.com/73307402/97170462-7f05f080-176a-11eb-85bb-f6f765d72c02.PNG)

You can replace "new.com" with your chosen TLD and replace the "file target" with a new chosen DB name like db.new.com.

Next we will use an existing zone file as a template, and name it after the new chosen DB name above db.example.com. There is a file in the bind directory we can use for this template, use the command **sudo cp /etc/bind/db.local /etc/bind/db.new.com**.

We will have to edit this new zone file: 
1. Use **sudo vi /etc/bind/db.new.com**; change "localhost." to the FQDN of your server leaving the "." at the end, I used **ns.new.com**.
2. Also change the IP of 127.0.0.1 to the IP address of your BIND9 DNS server. 
3. Replace "root.localhosts." with a valid email address with "." instead of "@", but also leave the "." at the end.
4. We will edit the current A record at the bottom of the zone file, change the 127.0.0.1 to the IP address of your BIND9 DNS server.
5. Also add a new wildcard record below the A record you just changed, will be an identical record except the **@** is replaced with __*__
6. After changes are made to the file, you must increment the Serial by at least +1. Ensure you do this, then save.
7. Again after making changes to BIND9 restart the service with (**sudo service bind9 restart**) for changes to go into effect.
