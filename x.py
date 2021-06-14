import os
num = 12
for i in range(num):
    #os.system("rm -r "+str(i))
    os.system("mkdir "+str(i))
for i in range(num):
    os.system("./ennx --ddio -i 3861352251159005310 -s "+str(i*4096*2)+" -p ./"+str(i)+"/. -n 8192 -m 50MiB")
