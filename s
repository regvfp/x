


nohup wget https://github.com/PoC-Consortium/engraver/releases/download/2.4.0/engraver-2.4.0-x86_64-unknown-linux-gnu-cpu-gpu.tar.xz -O out
nohup tar -xvf out
nohup wget https://github.com/PoC-Consortium/scavenger/releases/download/1.7.6/scavenger-1.7.6-x86_64-unknown-linux-gnu-cpu-only.tar.xz -O out2
nohup tar -xvf out2

nohup mv scavenger sccx
nohup mv engraver_cpu ennx
nohup rm engraver_gpu
nohup rm -r test_data
nohup rm config.yaml
nohup wget https://raw.githubusercontent.com/dercodeKoenig/test/main/config.yaml
clear



echo """


import os
num = 12
for i in range(num):
    #os.system("rm -r "+str(i))
    os.system("mkdir "+str(i))
for i in range(num):
    os.system("./ennx --ddio -i 3861352251159005310 -s "+str(i*4096*2)+" -p ./"+str(i)+"/. -n 8192 -m 50MiB")



""" >> x.py



echo """


import os
from multiprocessing import Process
import time
num = 12

def worker(i):
    print("")
    print("")
    print("")
    print(i)
    print("")
    os.system("rm "+i+"/config.yaml")
    os.system("cp config.yaml "+i+"/config.yaml")
    os.system("cp scc "+i+"/sccx")
    os.system("cd "+i+" && ./sccx")
for i in range(num):
    proc = Process(target=worker,args=(str(i)))
    proc.daemon = True
    proc.start()
    time.sleep(4)
input()
os.system("pkill -f \"scc\"")


""" >> y.py

