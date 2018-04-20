#/bin/bash

cd ~

echo && echo && echo
echo "*********************           CAZCOIN           ***********************"
echo "*********************  I'm here to help you :) ***********************"
echo && echo && echo


sudo apt-get update
sudo apt-get -y install build-essential libtool autotools-dev automake pkg-config libssl-dev libevent-dev bsdmainutils libboost-all-dev curl
sudo apt -y install software-properties-common
sudo add-apt-repository ppa:bitcoin/bitcoin
sudo apt-get -y update
sudo apt-get -y install libdb4.8-dev libdb4.8++-dev
sudo apt-get -y install libminiupnpc-dev


cd /var
sudo touch swap.img
sudo chmod 600 swap.img
sudo dd if=/dev/zero of=/var/swap.img bs=1024k count=2000
sudo mkswap /var/swap.img
sudo swapon /var/swap.img
sudo free
sudo echo "/var/swap.img none swap sw 0 0" >> /etc/fstab
cd

sudo apt-get install -y ufw
sudo ufw allow ssh/tcp
sudo ufw allow 17350
sudo ufw logging on
sudo ufw status

wget https://github.com/copicogithub1/cazcoin/releases/download/v.1.0.0/cazcoin-1.0.0-x86_64-linux-gnu.tar.gz
tar -xvzf cazcoin-1.0.0-x86_64-linux-gnu.tar.gz
rm cazcoin-1.0.0-x86_64-linux-gnu.tar.gz
mv cazcoin-1.0.0 cazcoin
cd cazcoin/bin
./cazcoind


echo ""
echo "**********************************************************************"
echo ""
echo "                      I'm done, now it's your turn          "
echo ""
echo "**********************************************************************"
echo ""




