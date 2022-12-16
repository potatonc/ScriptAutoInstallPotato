# Script Auto Install
Channel Telegram : https://t.me/tunnelingpotato

## Contact Us
* Telegram   : @aldi_nc
* Instagram : @aldi_nc
* Whatsapp  : +6282111196213

## Description

### OS Support
* Debian 10 (Recommended)
* Ubuntu 20.04

### Installations
```
apt-get update -y && apt-get update --fix-missing && apt-get install wget -y && apt-get install curl -y
```
```
wget --no-check-certificate https://raw.githubusercontent.com/potatonc/ScriptAutoInstallPotato/master/common/install && chmod +x install && ./install
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
| VMESS-WS | 80 | | ✅ | ✅ |
| VMESS-WS | 443 | ✅ | ✅ | |
| VLESS-WS | 80 | | ✅ | ✅ |
| VLESS-WS | 443 | ✅ | ✅ | |
| GRPC | 443 | ✅ | ✅ | |
| XRAY | 443 | ✅ | ✅ | |
| XRAY | 80 | | ✅ | ✅ |
| Trojan | 443 | ✅ | ✅ | |
| Trojan-GFW | 443 | ✅ | ✅ | |
| Wireguard | 7085 | | | ✅ |
| SSTP | 446 | | | ✅ |
| L2TP/PPTP | 1701 | | | ✅ |
| Ssocks | 2443-3543 | ✅ | |
| SsocksR | 1443-1543 | ✅ | |

### What's features included
* Webmin http(s)://[ip]:10000/
* Nginx http(s)://[ip]:81/
* Web Backup http(s)://[ip]:8555/
* Timezone : Asia/Jakarta
* Auto Reboot 00.00 WIB GMT +7
* Auto Update Feature

### What's script included
* Check Port
* Check Memory RAM
* User Limit Login SSH/Dropbear/OpenVPN
* User Limit Quota XRay/V2Ray
* User Limit Quota Trojan
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
* Support Multi Path VMESS
* AIO Port 443 80
* DLL

### V2RAY/XRAY/TROJAN
![Alt text](https://github.com/potatonc/ScriptAutoInstallPotato/raw/master/IMG_20221001_025333.jpg?raw=true "Users Limit")

### Backup & Restore
![Alt text](https://github.com/potatonc/ScriptAutoInstallPotato/raw/master/backup-restore1.gif?raw=true "Backup and Restore Web")

### Backup & Restore Termux
* Cooming soon
![Alt text](https://github.com/potatonc/ScriptAutoInstallPotato/raw/master/termux.gif?raw=true "Backup and Restore Termux")

### Get CHATID
![Alt text](https://github.com/potatonc/ScriptAutoInstallPotato/raw/master/chatid.jpg?raw=true "Get Chat ID Telegram")

### Fix
* sent invalidate(passwd) request, exiting
* sent invalidate(group) request, exiting
```
apt-get remove --purge unscd
```



Potato© 2018-2022
