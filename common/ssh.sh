#!/bin/bash
# Install SSH from source code
# by Potato NC 2022

# new sshd_config
curl -k -O https://cdn.openbsd.org/pub/OpenBSD/OpenSSH/portable/openssh-9.0p1.tar.gz
tar xvf openssh-9.0p1.tar.gz
cd openssh-9.0p1
./configure --with-md5-passwords --with-pam --with-selinux --with-privsep-path=/var/lib/sshd/ --sysconfdir=/etc/ssh
make
make install
rm /root/*.gz
rm -rf /root/openssh-9.0p1

cd /etc/ssh
rm -f sshd_config
curl -k -O https://raw.githubusercontent.com/potatonc/ScriptAutoInstallPotato/master/common/sshd_config
chmod 777 sshd_config
curl -L -k --silent -o /etc/banner.com "https://github.com/potatonc/ScriptAutoInstallPotato/raw/master/banner/banner.com"
service ssh restart
service sshd restart
service dropbear restart
