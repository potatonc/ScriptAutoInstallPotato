# Script Auto Install
Channel Telegram : https://t.me/tunnelingpotato

* if you are using a low-end vps, use the Mono theme.

## Contact Us
* Telegram  : aldi_nc
* Instagram : aldi_nc
* Whatsapp  : +6282111196213

## Description

### OS Support
* Debian 10
* Ubuntu 18.04 (Recommended)
* Ubuntu 20.04 (Recommended)

### Installations
```
wget --no-check-certificate https://raw.githubusercontent.com/potatonc/ScriptAutoInstallPotato/master/install && chmod +x install && ./install
```
**Install package potato**
```
reboot
```
**Tunneling**
```
apt-get install potato -y
```
**BOT**
```
potato install tunneling
```
```
reboot
```
**TCP BBR by teddysun**
```
cd && wget https://raw.githubusercontent.com/potatonc/ScriptAutoInstallPotato/master/tcpbbr && chmod +x tcpbbr && ./tcpbbr
```

### What's server included
|   NAME    |   PORT   | SSL | WS | no-SSL |
| :--- | :--- | :---: | :---: | :---: |
| SSH | 22, 444 | | | ✅ |
| SSH | 80 |  | ✅ | ✅ |
| SSH | 443 | ✅ | ✅ | |
| Dropbear | 90, 143 | | | ✅ |
| Dropbear | 80 | | ✅ | ✅ |
| Dropbear | 443 | ✅ | ✅ | |
| OpenVPN | 1194 | | | ✅ |
| OpenVPN | 25000 | | | ✅ |
| OpenVPN | 443 | ✅ | | |
| OHP | 9088 | | | ✅ |
| Squid | 8080 | | | ✅ |
| UDPGW | 7100-7600 | | | ✅ |
| VMESS | 80 | | ✅ | ✅ |
| VMESS | 443 | ✅ | ✅ | |
| VLESS | 80 | | ✅ | ✅ |
| VLESS | 443 | ✅ | ✅ | |
| XRAY | 443 | ✅ | ✅ | |
| XRAY | 80 | | ✅ | ✅ |
| Trojan-go | 443 | ✅ | ✅ | |
| Trojan-gfw | 4443 | ✅ | | |
| Wireguard | 7085 | | | ✅ |
| SSTP | 446 | | | ✅ |
| L2TP/PPTP | 1701 | | | ✅ |
| Ssocks | 2443-3543 | ✅ | |
| SsocksR | 1443-1543 | ✅ | |

### What's features included
* Webmin http(s)://[ip]:10000/
* Nginx http(s)://[ip]:81/
* Timezone : Asia/Jakarta
* Auto Reboot 00.00 WIB GMT +7
* Auto Update Feature

### What's script included
* Check Port
* Check Memory RAM
* User Limit SSH/Dropbear/OpenVPN
* User Limit V2Ray
* User Limit XRay
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
* Change Time Zone
* Block Torrent
* DLL

### Backup & Restore
![Alt text](https://github.com/potatonc/ScriptAutoInstallPotato/raw/master/backup-restore1.gif?raw=true "Restore From Termux App")

### Get CHATID
![Alt text](https://github.com/potatonc/ScriptAutoInstallPotato/raw/master/chatid.jpg?raw=true "Restore From Termux App")

### Fix
* sent invalidate(passwd) request, exiting
* sent invalidate(group) request, exiting
```
apt-get remove --purge unscd
```



Potato© 2019-2022
