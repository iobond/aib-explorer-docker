
wget https://github.com/iobond/aib-explorer-docker/releases/download/aib-1217295/aib-1217295.tgz
mkdir -p /home/block.aib.one
tar xf http://tk.9mmo.com/dl/aib-1217295.tgz -C /home/block.aib.one/
docker run -v /home/block.aib.one:/home/.aib  -v /home/.logs:/root/.logs -d -p 31415:31415  -p 33001:3001  -p 33080:80 -p 33022:22 --name block.AIB.one  canadianbitcoin/block.aib.one:v3 /root/start.sh
#docker run -v /home/block.aib.one:/home/.aib  -v /home/.logs:/root/.logs -d -p 31415:31415  -p 33001:3001  --name block.AIB.one  canadianbitcoin/block.aib.one:v3 /root/start.sh
