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
    os.system("cp scc "+i+"/scc")
    os.system("cd "+i+" && ./scc")
for i in range(num):
    proc = Process(target=worker,args=(str(i)))
    proc.daemon = True
    proc.start()
    time.sleep(4)
input()
os.system("pkill -f 'scc'")

