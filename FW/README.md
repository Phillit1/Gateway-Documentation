# Firewall 
For firewall services on my Ubuntu server I am using UFW. I will include the directions below to configure it, configuration files are in this directory as well.

UFW is included in Ubuntu by default and no install is necessary, it just just disabled by default. We will enable UFW with the command **"sudo ufw enable"** and enter UFW rules to allow/deny specific traffic.

# UFW Rules
## Allows
- Enable SSH access by allowing port 22. **"sudo ufw allow 22"**
- Enable DNS access by allowing port 53. **"sudo ufw allow 53"**
- Enable HTTP access by allowing port 80/TCP. **"sudo ufw allow 80/TCP"**
- For testing purposes I also denied SSH access from a specific client. **"sudo ufw deny proto tcp from 10.0.0.1 to any port 22"**
- **10.0.0.1** is the IP of my test client, after connecting my test VM to the private **10.0.0.0/24** network it got the address from DHCP services.

# UFW Masquerading

Masquerading is what will allow our clients on the internal 10.0.0.0/24 network to communicate with devices on the LAN/WAN. We will need to edit two seperate files to achieve this.

- Open **/etc/default/ufw** with a text editor.
- Change **DEFAULT_FORWARD_POLICY** from _DROP_ to _ACCEPT_
- Save & exit the file and next open **/etc/ufw/sysctl.conf"** with a text editor.
- Uncomment line 11 (**#net/ipv4/ip_forward=1**) and 12 (**#net/ipv6/conf/default/forwarding=1**) in this file by deleting the #.
- Save & exit the file and next open **/etc/ufw/before.rules** with a text editor.
- Somewhere in the document add the following text into the before.rules file.
![nattable](https://user-images.githubusercontent.com/73307402/97224908-9c5dad80-17b0-11eb-9f4e-113e9c95d467.PNG)
- If you used a different private network subnet than 10.0.0.0/24 just change it to the network you are using.
- After all is done UFW must be disabled and enabled to put changes into effect. Use **"sudo ufw disable"** & **"sudo ufw enable"**.
