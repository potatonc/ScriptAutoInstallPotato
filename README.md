# Script Auto Install
Channel Telegram : https://t.me/potatotunneling

* if you are using a low-end vps, use the Mono theme.

## Contact Us
* Telegram  : aldi_nc
* Instagram : aldi_nc
* Whatsapp  : +6282111196213

## Buy
[Go to page](Buy.md)

## Description

### OS Support
* Debian 9 (Not Tested Latest Service)
* Debian 10
* Ubuntu 18.04 (Recommended)
* Ubuntu 20.04 (Recommended)

**For Debian 10**
* Check Repo first
```
apt update --yes
```

### Installations
**potato**
```
cd && apt update -y && wget https://github.com/potatonc/ScriptAutoInstallPotato/raw/master/install && chmod +x install && ./install
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
**Update**
```
potato update
```
**TCP BBR by teddysun**
```
cd && wget https://github.com/potatonc/ScriptAutoInstallPotato/raw/master/tcpbbr && chmod +x tcpbbr && ./tcpbbr
```

### What's server included
* OpenSSH          : 22, 444
* OpenSSH          : 80 websocket
* OpenSSH          : 843 ssl
* OpenSSH          : 443 websocket ssl
* OpenVPN          : 1194 tcp
* OpenVPN          : 25000 udp
* OpenVPN          : 9443 ssl
* OHP + OVPN       : 9088
* Dropbear         : 90, 143, 236
* Dropbear         : 80 websocket
* Dropbear         : 943 ssl
* Dropbear         : 443 websocket ssl
* Squid            : 8080, 8989, 8000
* Badvpn-udpgw     : 7100 - 7600
* Vmess            : 443 ssl
* Vmess            : 8808
* Vless            : 443 ssl
* Vless            : 8088
* Trojan-Go        : 443 ssl
* Trojan           : 80
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
* Auto Update Feature

### What's script included
* Cek Port
* Change Port
* Cek Memory RAM
* User Limit SSH/Dropbear/OpenVPN
* User Limit V2Ray
* Speedtest
* Cek User OpenVPN (User-friendly)
* Live Bandwidth
* Running VPS From BOT
* Notification Create Users From BOT
* Notification Check Users From BOT
* Set BOT Time (Default 1 Hours)
* Backup Configuration and Users VPS
* Restore Configuration and Users VPS
* Change Subdomain VPS
* Manage Domain Cloudflare
* Add Subdomain Cloudflare
* Change Subdomain Cloudflare
* Delete Subdomain Cloudflare
* List DNS Cloudflare
* Patch 443 (Vmess/Vless)
* Change Time Zone
* Block Torrent
* DLL

### Restore Configuration
**Restore From Termux App**
![Alt text](https://github.com/potatonc/ScriptAutoInstallPotato/raw/master/1.jpg?raw=true "Restore From Termux App")
![Alt text](https://github.com/potatonc/ScriptAutoInstallPotato/raw/master/2.jpg?raw=true "Restore From Termux App")
![Alt text](https://github.com/potatonc/ScriptAutoInstallPotato/raw/master/3.jpg?raw=true "Restore From Termux App")
![Alt text](https://github.com/potatonc/ScriptAutoInstallPotato/raw/master/4.jpg?raw=true "Restore From Termux App")
![Alt text](https://github.com/potatonc/ScriptAutoInstallPotato/raw/master/5.jpg?raw=true "Restore From Termux App")
![Alt text](https://github.com/potatonc/ScriptAutoInstallPotato/raw/master/6.jpg?raw=true "Restore From Termux App")
![Alt text](https://github.com/potatonc/ScriptAutoInstallPotato/raw/master/7.jpg?raw=true "Restore From Termux App")

**Restore From Direct Link**
![Alt text](https://github.com/potatonc/ScriptAutoInstallPotato/raw/master/a.jpg?raw=true "Restore From Termux App")
![Alt text](https://github.com/potatonc/ScriptAutoInstallPotato/raw/master/b.jpg?raw=true "Restore From Termux App")
![Alt text](https://github.com/potatonc/ScriptAutoInstallPotato/raw/master/c.jpg?raw=true "Restore From Termux App")
![Alt text](https://github.com/potatonc/ScriptAutoInstallPotato/raw/master/d.jpg?raw=true "Restore From Termux App")
![Alt text](https://github.com/potatonc/ScriptAutoInstallPotato/raw/master/e.jpg?raw=true "Restore From Termux App")
![Alt text](https://github.com/potatonc/ScriptAutoInstallPotato/raw/master/f.jpg?raw=true "Restore From Termux App")

### Manages Domain Cloudflare
![Alt text](https://github.com/potatonc/sudo/raw/master/1.jpg?raw=true "Manages Domain Cloudflare")
![Alt text](https://github.com/potatonc/sudo/raw/master/2.jpg?raw=true "Manages Domain Cloudflare")
![Alt text](https://github.com/potatonc/sudo/raw/master/3.jpg?raw=true "Manages Domain Cloudflare")
![Alt text](https://github.com/potatonc/sudo/raw/master/4.jpg?raw=true "Manages Domain Cloudflare")
![Alt text](https://github.com/potatonc/sudo/raw/master/5.jpg?raw=true "Manages Domain Cloudflare")
![Alt text](https://github.com/potatonc/sudo/raw/master/6.jpg?raw=true "Manages Domain Cloudflare")
![Alt text](https://github.com/potatonc/sudo/raw/master/7.jpg?raw=true "Manages Domain Cloudflare")

**Get CHATID**
![Alt text](https://github.com/potatonc/ScriptAutoInstallPotato/raw/master/chatid.jpg?raw=true "Restore From Termux App")

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



Potato©
