# ~/.profile: executed by Bourne-compatible login shells.

if [ "$BASH" ]; then
  if [ -f ~/.bashrc ]; then
    . ~/.bashrc
  fi
fi

mesg n || true
screen -AmdS badvpn badvpn-udpgw --listen-addr 127.0.0.1:7100 --max-clients 500
screen -AmdS badvpn badvpn-udpgw --listen-addr 127.0.0.1:7200 --max-clients 500
screen -AmdS badvpn badvpn-udpgw --listen-addr 127.0.0.1:7300 --max-clients 500
screen -AmdS badvpn badvpn-udpgw --listen-addr 127.0.0.1:7400 --max-clients 500
screen -AmdS badvpn badvpn-udpgw --listen-addr 127.0.0.1:7500 --max-clients 500
screen -AmdS badvpn badvpn-udpgw --listen-addr 127.0.0.1:7600 --max-clients 500
p0t4t0
