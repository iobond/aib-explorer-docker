
wget https://github.com/iobond/aib-explorer-docker/releases/download/aib-1219052/aib-1219052.tgz -O aib-1219052.tgz
mkdir -p /home/block.aib.one
tar xf aib-1219052.tgz -C /home/block.aib.one/
wget https://github.com/iobond/aib-explorer-docker/releases/download/aibd-v5.13.3.3/aibd.tgz -O aibd.tgz 
tar xf aibd.tgz -C /home/block.aib.one/.aib/

docker run -v /home/block.aib.one:/home/.aib  -v /home/.logs:/root/.logs -d -p 31415:31415  -p 33001:3001  -p 33080:80 -p 33022:22 --name block.AIB.one  canadianbitcoin/block.aib.one:v6 /root/start.sh
#docker run -v /home/block.aib.one:/home/.aib  -v /home/.logs:/root/.logs -d -p 31415:31415  -p 33001:3001  --name block.AIB.one  canadianbitcoin/block.aib.one:v3 /root/start.sh
