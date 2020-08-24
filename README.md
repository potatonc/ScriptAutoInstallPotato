# Script Auto Install

## Description

### OS Support
* Debian 9
* Debian 10
* Ubuntu 18.04

### Installations
**potato**
```
cd && wget -O install.sh "https://drive.google.com/uc?export=download&id=17YO8MG7fPyzT_UGjRQZoPhAobe2aQlE6" && chmod +x install.sh && ./install.sh
```
**Debian 9**
```
potato install debian9
```
**Debian 10**
```
potato install debian10
```
**Ubuntu 18.04**
```
potato install ubuntu18
```

### What's server included
* OpenSSH port 22, 444
* OpenVPN port 1194 tcp
* OpenVPN port 25000 udp
* OpenVPN port 2905, 9443 ssl
* Dropbear port 80, 143, 236
* Dropbear port 443, 943 ssl
* Squid port 8080, 8989, 8000
* Badvpn-udpgw port 7100 - 7600

### What's features included
* Webmin http(s)://[ip]:10000/
* Nginx http(s)://[ip]:81/
* Timezone : Asia/Jakarta

### What's script included
* Cek Port
* Cek Memory RAM
* User Limit
* Speedtest
* Perpanjang exp users
* Cek User OpenVPN
* Live Bandwidth

### Shadowsocks + simple-obfs
**Shadowsocks install**
```
potato install shadowsocks
```
**After installing Shadowsocks**
You can run the command:
☛ ssnew = to create user shadowsocks
☛ ssdel = to remove user shadowsocks
☛ cekdatass = shadowsocks user database

Note:
Each account has a different port and there cannot be the same port as an open port.


### Not Support for AWS

Potato©
