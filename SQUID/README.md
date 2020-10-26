# Proxy Server
For proxy services on my Ubuntu server I am using Squid. I will include the directions below to configure it, configuration files are in this directory as well. The squid configuration files are stored in the **/etc/squid/** directory.

# Squid Installation
To install Squid with a Ubuntu server, run the command **sudo apt-get install squid**.

# Squid Configuration
To configure squid you just need to open the file **/etc/squid/squid.conf** and make some changes.

I configured the proxy to block traffic from the **10.0.0.0/24** subnet when trying to visit the site neverssl.com.

- At the top of the file I added some ACL statements:

![squid ACl](https://user-images.githubusercontent.com/73307402/97237593-33813000-17c6-11eb-8d05-4ae5502c2b94.PNG)

- Again if you used a different subnet than **10.0.0.0/24** just change it accordingly.
- The ACL denied sites is pointing to the file **"/etc/squid/denied-sites.squid"**, next we will create the file and put the desired denied site inside.
- After creating / opening the black file I just added **".neverssl.com"** then saved & quit.

After this restart the squid services **(sudo service squid restart)** for the changes to go into effect, then your proxy server will block clients from visiting neverssl.com.





