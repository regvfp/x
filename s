


wget https://github.com/PoC-Consortium/engraver/releases/download/2.4.0/engraver-2.4.0-x86_64-unknown-linux-gnu-cpu-gpu.tar.xz -O out
tar -xvf out
wget https://github.com/PoC-Consortium/scavenger/releases/download/1.7.6/scavenger-1.7.6-x86_64-unknown-linux-gnu-cpu-only.tar.xz -O out2
tar -xvf out2

mv scavenger scc
mv engraver_cpu enn
rm engraver_gpu
rm -r test_data
rm config.yaml
wget https://raw.githubusercontent.com/dercodeKoenig/test/main/config.yaml
