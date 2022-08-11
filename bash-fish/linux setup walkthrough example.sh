#!/bin/bash
echo "This is a rudimentary script - no error handling and extremely basic.  Don't expect much if you make a typographical error.  You will have to manually fix it"
echo #
echo #
echo #
echo #
read -p "Press the any key to proceed:"
echo "Enter the name of this host"
read host_name
sudo hostname "$host_name"
echo "$host_name" | sudo tee /etc/hostname
echo "Please edit your /etc/hosts file in place in your terminal session - replace the current name with with $host_name."
read -p "Confirm you are ready to proceed,"
echo "We are going to import SSH keys and lock SSH authentication to Public Key only.  We want to import keys from your device."
echo "Enter the IP you are importing the ssh keys from:"
read ip_location
echo "Here is what you entered - $ip_location"
echo "What directory are you copying the keys from?  Give the full path:"
read directory_input
echo "Here is what you entered - $directory_input"
echo "We are going to pull SSH keys for import using scp."
echo "What is the username of the machine that has access to the SSH server?"
read user_name
scp -r $user_name@$ip_location:$directory_input /home/user/
echo "Please stop, edit your sshd_config file now from the terminal session (not ssh) - we will let the upcoming restart recycle the service."
read -p "Confirm you are ready to continue."
sudo ufw allow in on lanadapter from IP1
sudo ufw allow in on lanadapter from IP2
sudo ufw allow in on lanadapter2
sudo ufw enable
sudo ufw status
sudo ufw status numbered
echo "Confirm your rules are correct.  If not, you will need to edit them."
echo "Then next step will be to apply a new kernel and reboot the system."
read -p "Press the 'any key :)'"
#wget https://raw.githubusercontent.com/pimlie/ubuntu-mainline-kernel.sh/master/ubuntu-mainline-kernel.sh
#sudo install ubuntu-mainline-kernel.sh /usr/local/bin
#sudo ubuntu-mainline-kernel.sh -i
#sudo apt --fix-broken install
#echo '#manually added libc6 repositories after kernel 5.15 upgrade' | sudo tee -a /etc/apt/sources.list
#echo 'deb http://mirrors.kernel.org/ubuntu impish main' | sudo tee -a /etc/apt/sources.list
#echo 'deb http://ftp.osuosl.org/pub/ubuntu impish main' | sudo tee -a /etc/apt/sources.list
sudo apt install lsb-core
sudo apt install nfs-kernel-server
sudo systemctl enable nfs-kernel-server
sudo systemctl start nfs-kernel-server
sudo reboot