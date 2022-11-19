#!/bin/bash
# Script Credit by Potato
# Support me Thanks

red='\033[0;31m'
green='\033[0;32m'
yellow='\033[0;33m'
plain='\033[0m'
blue='\033[0;34m'
ungu='\033[0;35m'
Green="\033[32m"
Red="\033[31m"
WhiteB="\e[0;37m"
BlueCyan="\e[0;36m"
Green_background="\033[42;37m"
Red_background="\033[41;37m"
Suffix="\033[0m"
TO_HOST=90

function lane() {
echo -e " ${BlueCyan}————————————————————————————————————————${Suffix}"
}

function LOGO() {
  clear
	echo -e ""
	echo -e "${BlueCyan} ————————————————————————————————————————${Suffix}"
	echo -e "${ungu}             Potato Tunneling            "
	echo -e "${BlueCyan} ————————————————————————————————————————${Suffix}"
	echo -e ""
}

function Credit_Potato() {
sleep 1
echo -e "" 
echo -e "${BlueCyan} ————————————————————————————————————————${Suffix}"
echo -e "${ungu}      Terimakasih sudah menggunakan-"
echo -e "         Script Credit by Potato"
echo -e "${BlueCyan} ————————————————————————————————————————${Suffix}"
echo -e ""
exit 0
}

function add_iptables_ssh() {
  iptables -I INPUT -p udp --dport 5300 -j ACCEPT
  iptables -t nat -I PREROUTING -p udp --dport 53 -j REDIRECT --to-ports 5300
  key=$(cat /usr/sbin/potatonc/slowdns/server.key)
  pub=$(cat /usr/sbin/potatonc/slowdns/server.pub)
  ns=$(cat /usr/sbin/potatonc/slowdns/nameserver)
  sed -i "$ i\screen -dmS slowdns dns-server -udp :5300 -privkey ${key} ${ns} 127.0.0.1:${TO_HOST}" /etc/rc.local
  systemctl restart rc-local
}

function del_iptables_ssh() {
  iptables -D INPUT -p udp --dport 5300 -j ACCEPT
  iptables -t nat -D PREROUTING -p udp --dport 53 -j REDIRECT --to-ports 5300
  PID_Screen=$(screen -ls | grep -w "slowdns" | awk '{print $1}' | cut -d. -f1)
  screen -X -S ${PID_Screen} quit
  key=$(cat /usr/sbin/potatonc/slowdns/server.key)
  pub=$(cat /usr/sbin/potatonc/slowdns/server.pub)
  ns=$(cat /usr/sbin/potatonc/slowdns/nameserver)
  sed -i "s/screen -dmS slowdns dns-server -udp :5300 -privkey ${key} ${ns} 127.0.0.1:${TO_HOST}//g" /etc/rc.local
  sed -i '/^$/d' /etc/rc.local
  systemctl restart rc-local
}

function add_iptables_openvpn() {
  iptables -I INPUT -p udp --dport 25000 -j ACCEPT
  iptables -t nat -I PREROUTING -p udp --dport 53 -j REDIRECT --to-ports 25000
}

function del_iptables_openvpn() {
  iptables -D INPUT -p udp --dport 25000 -j ACCEPT
  iptables -t nat -D PREROUTING -p udp --dport 53 -j REDIRECT --to-ports 25000
}

function get_core_dns() {
  wget -q --no-check-certificate -O /usr/sbin/dns-server "https://raw.githubusercontent.com/potatonc/webmin/master/dns-server"
  if [ ! -e /usr/sbin/dns-server ]; then
    curl -L -k --silent -o /usr/sbin/dns-server "https://raw.githubusercontent.com/potatonc/webmin/master/dns-server"
    if [ ! -e /usr/sbin/dns-server ]; then
      LOGO
      echo -e " Core ${yellow}dns-server${Suffix} not found!"
      Credit_Potato
    fi
  fi
  chmod 777 /usr/sbin/dns-server
}

function input_nameserver() {
  _Active=$(systemctl is-active systemd-resolved)
  if [[ "${_Active}" == "inactive" ]]; then
    systemctl enable systemd-resolved
    systemctl start systemd-resolved
    cf=$(cat /etc/resolv.conf | grep -w "nameserver 1.1.1.1")
    gg=$(cat /etc/resolv.conf | grep -w "nameserver 8.8.8.8")
    gg1=$(cat /etc/resolv.conf | grep -w "nameserver 8.8.4.4")
    if [[ "${cf}" == "" ]]; then
    echo "nameserver 1.1.1.1" >> /etc/resolv.conf
    fi
    if [[ "${gg}" == "" ]]; then
    echo "nameserver 8.8.8.8" >> /etc/resolv.conf
    fi
    if [[ "${gg1}" == "" ]]; then
    echo "nameserver 8.8.4.4" >> /etc/resolv.conf
    fi
    systemctl restart systemd-resolved
  else
    cf=$(cat /etc/resolv.conf | grep -w "nameserver 1.1.1.1")
    gg=$(cat /etc/resolv.conf | grep -w "nameserver 8.8.8.8")
    gg1=$(cat /etc/resolv.conf | grep -w "nameserver 8.8.4.4")
    if [[ "${cf}" == "" ]]; then
    echo "nameserver 1.1.1.1" >> /etc/resolv.conf
    fi
    if [[ "${gg}" == "" ]]; then
    echo "nameserver 8.8.8.8" >> /etc/resolv.conf
    fi
    if [[ "${gg1}" == "" ]]; then
    echo "nameserver 8.8.4.4" >> /etc/resolv.conf
    fi
    systemctl restart systemd-resolved
  fi
}

function gen_key() {
  if [ ! -e /usr/sbin/potatonc/slowdns ]; then
    mkdir -p /usr/sbin/potatonc/slowdns
  fi
  echo "79165a5f041150b665db82f16d33be2664749ea5dd0e90c62c1ff99de02a375d" > /usr/sbin/potatonc/slowdns/server.key
  echo "5bb04eb5c1d8e8ced2feefd2a3b7e4d57cf648dce0d5a225ac62197729336f50" > /usr/sbin/potatonc/slowdns/server.pub
}

function ask_nameserver() {
  LOGO
  read -rp " Your Nameserver : " -e Nameserver
  echo -e ""
  if [[ "${Nameserver}" =~ ^[a-zA-Z0-9\.\-]+$ ]]; then
    echo "${Nameserver}" > /usr/sbin/potatonc/slowdns/nameserver
  else
    echo -e " ${Red}${Nameserver}${Suffix} is Wrong"
    echo -e ""
    Credit_Potato
  fi
}

function start_dns_ssh() {
  ask_nameserver
  add_iptables_ssh
  stat_net=$(netstat -tunlp | grep dns-server)
  if [[ "${stat_net}" != "" ]]; then
    Nameserver=$(cat /usr/sbin/potatonc/slowdns/nameserver)
    pub_key=$(cat /usr/sbin/potatonc/slowdns/server.pub)
    LOGO
    echo -e " ${Green}SlowDNS is enabled${Suffix}"
    echo -e ""
    echo -e " Nameserver : ${yellow}${Nameserver}${Suffix}"
    echo -e " PUB Key    : ${blue}${pub_key}${Suffix}"
    Credit_Potato
  else
    LOGO
    echo -e " ${Red}Failed to enable SlowDNS${Suffix}"
    Credit_Potato
  fi
}

function stop_dns_ssh() {
  del_iptables_ssh
  LOGO
  echo -e " ${Green}SlowDNS is disabled${Suffix}"
  Credit_Potato
}

function start_dns_openvpn() {
  add_iptables_openvpn
  LOGO
  echo -e " ${Green}DNS OpenVPN is enabled${Suffix}"
  Credit_Potato
}

function stop_dns_openvpn() {
  del_iptables_openvpn
  LOGO
  echo -e " ${Green}DNS OpenVPN is disabled${Suffix}"
  Credit_Potato
}

function change_to_ssh() {
  del_iptables_openvpn
  start_dns_ssh
}

function change_to_openvpn() {
  del_iptables_ssh
  start_dns_openvpn
}

function install() {
  if [ ! -e /usr/sbin/dns-server ]; then
    get_core_dns
    input_nameserver
    gen_key
    ask_nameserver
  fi
}

function menu_dns() {
  install
  port_openvpn=$(iptables -t nat -L | grep -w "25000")
  port_slowdns=$(iptables -t nat -L | grep -w "5300")
  if [[ "${port_openvpn}" == "" && "${port_slowdns}" == "" ]]; then
    LOGO
    echo "   1.)  Start SlowDNS SSH"
    echo "   2.)  Start DNS OpenVPN"
    echo "   x.)  Back to Menu"
    echo ""
    lane
    read -p " Select from options [1-2 or x] : " port
    case ${port} in
    1)
    start_dns_ssh
    ;;
    2)
    start_dns_openvpn
    ;;
    x)
    menu
    ;;
    *)
    echo -e " ${Red}Please enter an correct number${Suffix}"
    echo -e ""
    Credit_Potato
    ;;
    esac
    
  elif [[ "${port_openvpn}" != "" && "${port_slowdns}" == "" ]]; then
    LOGO
    echo "   1.)  Change OpenVPN to SSH"
    echo "   2.)  Stop DNS"
    echo "   x.)  Back to Menu"
    echo ""
    lane
    read -p " Select from options [1-2 or x] : " port
    case ${port} in
    1)
    change_to_ssh
    ;;
    2)
    stop_dns_openvpn
    ;;
    x)
    menu
    ;;
    *)
    echo -e " ${Red}Please enter an correct number${Suffix}"
    echo -e ""
    Credit_Potato
    ;;
    esac

  elif [[ "${port_openvpn}" == "" && "${port_slowdns}" != "" ]]; then
    LOGO
    echo "   1.)  Change SSH to OpenVPN"
    echo "   2.)  Stop SlowDNS"
    echo "   x.)  Back to Menu"
    echo ""
    lane
    read -p " Select from options [1-2 or x] : " port
    case ${port} in
    1)
    change_to_openvpn
    ;;
    2)
    stop_dns_ssh
    ;;
    x)
    menu
    ;;
    *)
    echo -e " ${Red}Please enter an correct number${Suffix}"
    echo -e ""
    Credit_Potato
    ;;
    esac

  fi
}

menu_dns