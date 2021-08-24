# Script Auto Install

## Description

### OS Support
* Debian 9
* Debian 10
* Ubuntu 18.04
* Ubuntu 20.04

### Installations
**potato**
```
cd && wget https://github.com/potatonc/ScriptAutoInstallPotato/raw/master/install && chmod +x install && ./install
```
**Tunneling**
```
potato install tunneling
```
**OHP**
```
potato install ohp
```
```
potato uninstall ohp
```
**BOT**
```
potato install bot
```
```
potato start bot
```

### What's server included
* OpenSSH          : 22, 444
* OpenVPN          : 1194 tcp
* OpenVPN          : 25000 udp
* OpenVPN          : 2905, 9443 ssl
* OHP + OVPN       : 9088
* Dropbear         : 90, 143, 236
* Dropbear         : 445, 943 ssl
* Squid            : 8080, 8989, 8000
* Badvpn-udpgw     : 7100 - 7600
* Vmess            : 443 ssl
* Vmess            : 80
* Vless            : 8443 ssl
* Vless            : 8088
* Trojan           : 2087
* Wireguard        : 7085
* SSTP             : 446
* L2TP/PPTP        : 1701
* Shadowsocks      : 2443 - 3543
* Shadowsocks-R    : 1443 - 1543

### What's features included
* Webmin http(s)://[ip]:10000/
* Nginx http(s)://[ip]:81/
* Timezone : Asia/Jakarta
* Auto Reboot 00.00 WIB GMT +7

### What's script included
* Cek Port
* Cek Memory RAM
* User Limit
* Speedtest
* Cek User OpenVPN (GUI)
* Live Bandwidth
* Running VPS From BOT
* Notification Create Users From BOT
* Notification Check Users From BOT
* Set BOT Time (Default 1 Hours)
* Backup Configuration and Users VPS
* Restore Configuration and Users VPS
* DLL

### Shadowsocks + simple-obfs
**Shadowsocks install**
```
potato install shadowsocks
```
**After installing Shadowsocks**
* You can run the command:
```
☛ ssnew = to create user shadowsocks
☛ ssdel = to remove user shadowsocks
☛ cekdatass = shadowsocks user database
```
* Note:
> Each account has a different port and there cannot be the same port as an open port.

### Fix
* sent invalidate(passwd) request, exiting
* sent invalidate(group) request, exiting
```
apt-get remove --purge unscd
```

### Not Support for AWS


Potato©
