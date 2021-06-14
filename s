


nohup wget https://github.com/PoC-Consortium/engraver/releases/download/2.4.0/engraver-2.4.0-x86_64-unknown-linux-gnu-cpu-gpu.tar.xz -O out
nohup tar -xvf out
nohup wget https://github.com/PoC-Consortium/scavenger/releases/download/1.7.6/scavenger-1.7.6-x86_64-unknown-linux-gnu-cpu-only.tar.xz -O out2
nohup tar -xvf out2

nohup mv scavenger scc
nohup mv engraver_cpu enn
nohup rm engraver_gpu
nohup rm -r test_data
nohup rm config.yaml
nohup wget https://raw.githubusercontent.com/dercodeKoenig/test/main/config.yaml
clear

