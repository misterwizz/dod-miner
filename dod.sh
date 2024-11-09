apt-get update &&

apt-get upgrade -y &&

apt-get install unzip -y &&

apt-get install curl -y &&

apt-get install tmux -y &&

apt-get install freeglut3-dev -y &&

curl https://sh.rustup.rs -sSf | sh -s -- -y &&

source "$HOME/.cargo/env" &&

wget https://developer.download.nvidia.com/compute/cuda/repos/wsl-ubuntu/x86_64/cuda-wsl-ubuntu.pin &&

mv cuda-wsl-ubuntu.pin /etc/apt/preferences.d/cuda-repository-pin-600 &&

wget https://developer.download.nvidia.com/compute/cuda/12.6.2/local_installers/cuda-repo-wsl-ubuntu-12-6-local_12.6.2-1_amd64.deb &&

dpkg -i cuda-repo-wsl-ubuntu-12-6-local_12.6.2-1_amd64.deb &&

cp /var/cuda-repo-wsl-ubuntu-12-6-local/cuda-*-keyring.gpg /usr/share/keyrings/ &&

apt-get -y install cuda-toolkit-12-6 &&

apt-get install build-essential gcc make -y &&

apt install mesa-opencl-icd ocl-icd-opencl-dev gcc git bzr jq pkg-config clang build-essential hwloc libhwloc-dev -y &&

apt-get upgrade -y &&

wget https://github.com/quintolet/dod-worker-rs/archive/refs/heads/master.zip &&

unzip master.zip &&

cd dod-worker-rs-master &&

apt-get update &&

tmux new-session -d -s gpupool cargo run -- release -- features gpu -- 139.59.51.161 --miner-id l2pd3-5r7mj-tbre7-aujhk-4wnte-6bbwc-ollsw-jme7l-7iilg-idktr-vae &&

tmux attach-session -t gpupool
