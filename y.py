import os
from multiprocessing import Process
import time
num = 100

def worker(i):
    print("")
    print("")
    print("")
    print(i)
    print("")
    os.system("rm "+i+"/config.yaml")
    os.system("cp config.yaml "+i+"/config.yaml")
    os.system("cp sccx "+i+"/sccx")
    os.system("cd "+i+" && ./sccx")
for i in range(num):
    proc = Process(target=worker,args=([str(i)]))
    proc.daemon = True
    proc.start()
    time.sleep(1)

input()
os.system("pkill -f 'scc'")
