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
clear
echo "   '########:::'#######::'########::::'###::::'########::'#######::" | lolcat
echo "    ##.... ##:'##.... ##:... ##..::::'## ##:::... ##..::'##.... ##:" | lolcat
echo "    ##:::: ##: ##:::: ##:::: ##:::::'##:. ##::::: ##:::: ##:::: ##:" | lolcat
echo "    ########:: ##:::: ##:::: ##::::'##:::. ##:::: ##:::: ##:::: ##:" | lolcat
echo "    ##.....::: ##:::: ##:::: ##:::: #########:::: ##:::: ##:::: ##:" | lolcat
echo "    ##:::::::: ##:::: ##:::: ##:::: ##.... ##:::: ##:::: ##:::: ##:" | lolcat
echo "    ##::::::::. #######::::: ##:::: ##:::: ##:::: ##::::. #######::" | lolcat
echo "   ..::::::::::.......::::::..:::::..:::::..:::::..::::::.......:::" | lolcat
echo "   ================================================================" | lolcat
echo "       Selamat datang kembali $HOSTNAME" | lolcat
echo ""
echo "         ####################################################      " | lolcat
echo "         #   Perintah :                                     #      " | lolcat
echo "         #       menu   -   Untuk menampilkan daftar menu   #      " | lolcat
echo "         #                                                  #      " | lolcat
echo "         #   Info/Bug report :                              #      " | lolcat
echo "         #       Telegram   -   aldi_nc                     #      " | lolcat
echo "         #       Instagram  -   @aldi_nc                    #      " | lolcat
echo "         #                                                  #      " | lolcat
echo "         #                Credit by Potato©                 #      " | lolcat
echo "         ####################################################      " | lolcat
echo ""
echo "   ================================================================" | lolcat
echo ""
