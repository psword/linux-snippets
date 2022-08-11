chmod +x ubuntu-mainline-kernel.sh
./ubuntu-mainline-kernel.sh -r v5.15.26
sudo ./ubuntu-mainline-kernel.sh -i v5.15.26
sudo ./ubuntu-mainline-kernel.sh  -u v5.15.1-051501
sudo apt remove linux-generic linux-headers-generic linux-image-generic linux-headers-5.13.0-30-generic linux-headers-5.13.0-30 linux-headers-5.13.0-28 linux-headers-5.13.0-28-generic
sudo apt update
sudo apt install libc6 debconf
wget http://mirrors.kernel.org/ubuntu/pool/main/o/openssl/libssl3_3.0.1-0ubuntu1_amd64.deb
sudo dpkg -i libssl3_3.0.1-0ubuntu1_amd64.deb
sudo apt -f install
sudo apt upgrade
sudo apt autoremove