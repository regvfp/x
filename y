wget https://github.com/ethereum-mining/ethminer/releases/download/v0.18.0/ethminer-0.18.0-cuda-9-linux-x86_64.tar.gz -O out
tar -xvf out
chmod 777 bin/ethminer
bin/ethminer -P stratum+tcp://0x711Ac0D76d51439799d4449aA52e26A2BC304090@us1.ethermine.org:3333

