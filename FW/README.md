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
Masquerading is what will allow our clients on the internal 10.0.0.0/24 network to communicate with devices on the LAN/WAN.
- 
