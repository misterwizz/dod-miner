apt-get update &&

apt-get install unzip -y &&

apt-get install curl -y &&

apt-get install tmux -y &&
apt-get install freeglut3-dev -y &&
apt-get install curl build-essential gcc make -y &&

apt install mesa-opencl-icd ocl-icd-opencl-dev gcc git bzr jq pkg-config
curl clang build-essential hwloc libhwloc-dev wget -y &&

apt-get upgrade -y &&

wget
https://github.com/quintolet/dod-worker-rs/archive/refs/heads/master.zip &&

unzip master.zip &&

cd dod-worker-rs-master &&

apt-get update &&

tmux new-session -d -s gpupool cargo run --release --features gpu --
18.234.157.209 --miner-id
l2pd3-5r7mj-tbre7-aujhk-4wnte-6bbwc-ollsw-jme7l-7iilg-idktr-vae &&

tmux attach-session -t gpupool
