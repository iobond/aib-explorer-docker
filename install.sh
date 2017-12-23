
mkdir -p /root/TRASH
curl -Lk https://github.com/iobond/aib-explorer-docker/releases/download/aib-1224912/aib-1224912.tgz -o /root/TRASH/aib-blockdata.tgz
mkdir -p /home/block.aib.one/
rm -rf /home/block.aib.one/.aib/blocks
rm -rf /home/block.aib.one/.aib/chainstate
tar xf /root/TRASH/aib-blockdata.tgz -C /home/block.aib.one/
curl -Lk https://github.com/iobond/aib-explorer-docker/releases/download/aibd-v5.13.3.13/aibd.tgz -o /root/TRASH/aibd.tgz 

tar xf /root/TRASH/aibd.tgz -C /home/block.aib.one/.aib/
rm /home/block.aib.one/.aib/*.log

docker run --restart=always -v /home/block.aib.one:/home/.aib  -v /home/.logs:/root/.logs -d -p 31415:31415  -p 33001:3001  -p 33080:80 -p 33022:22 --name block.AIB.one  canadianbitcoin/block.aib.one:v8 /root/start.sh
#docker run --restart=always -v /home/block.aib.one:/home/.aib  -v /home/.logs:/root/.logs -d -p 31415:31415  -p 33001:3001  --name block.AIB.one  canadianbitcoin/block.aib.one:v6 /root/start.sh
