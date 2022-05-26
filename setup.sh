#!/bin/bash

#====================================
#=============by Dimokus=============
#========https://t.me/Dimokus========
#====================================
echo 'export my_root_password='${my_root_password}  >> /root/.bashrc
echo 'passwallet='${passwallet}  >> $HOME/.bashrc
echo 'export link_wallet='${link_wallet} >>  $HOME/.bashrc
source $HOME/.bashrc

sudo useradd -s /sbin/nologin geth
sudo rm -rf /home/geth
sudo mkdir -p /home/geth
sudo mkdir -p /home/geth/.ethereum/geth/
sudo chown -R geth:geth /home/geth
sudo chmod -R 700 /home/geth
cd $HOME
wget -O geth-v1.0.0-alpha3-linux-amd64.zip https://github.com/oasysgames/oasys-validator/releases/download/v1.0.0-alpha3/geth-v1.0.0-alpha3-linux-amd64.zip 
unzip geth-v1.0.0-alpha3-linux-amd64.zip
sudo mv geth /usr/local/bin/geth
wget -O genesis.zip https://github.com/oasysgames/oasys-validator/releases/download/v1.0.0-alpha3/genesis.zip
unzip genesis.zip
mv genesis/testnet.json /home/geth/genesis.json
sudo -u geth geth init /home/geth/genesis.json
echo '[ "enode://4a85df39ec500acd31d4b9feeea1d024afee5e8df4bc29325c2abf2e0a02a34f6ece24aca06cb5027675c167ecf95a9fc23fb7a0f671f84edb07dafe6e729856@35.77.156.6:30303" ]' > /home/geth/.ethereum/geth/static-nodes.json
echo =====bootstrap установлен======

sudo cat > /home/geth/.ethereum/password.txt <<EOF
`echo ${passwallet}`
EOF


sleep 5
wget -O /home/geth/.ethereum/keystore/wallet `echo ${link_wallet}`
address=`cat /home/geth/.ethereum/keystore/wallet | jq -r .address`
echo $address
echo =====кошелек установлен======
sleep 5

sudo  -u geth geth --networkid 9372 --syncmode full --gcmode archive --mine --miner.gaslimit 30000000  --allow-insecure-unlock --unlock $address --password /home/geth/.ethereum/password.txt --http --http.addr 0.0.0.0 --http.port 8545 --http.vhosts '*' --http.corsdomain '*'  --http.api net,eth,web3 --snapshot=false 

