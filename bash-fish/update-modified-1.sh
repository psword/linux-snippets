#!/bin/bash
ssh -t user@192.168.1.1 'sudo -- sh -c "apt update -y;apt upgrade -y;apt autoremove -y;reboot"'
ssh -t user@192.168.1.2 'sudo -- sh -c "apt update -y;apt upgrade -y;apt autoremove -y;reboot"'
ssh -t user@192.168.1.3 'sudo -- sh -c "apt update -y;apt upgrade -y;apt autoremove -y;reboot"'
ssh -t user@192.168.1.4 'sudo -- sh -c "apt update -y;apt upgrade -y;apt autoremove -y;reboot"'
ssh -t user@192.168.1.5 'sudo -- sh -c "apt update -y;apt upgrade -y;apt autoremove -y;reboot"'
ssh -t user@192.168.1.6 'sudo -- sh -c "apt update -y;apt upgrade -y;apt autoremove -y;reboot"'
ssh -t user@192.168.1.7 'sudo -- sh -c "apt update -y;apt upgrade -y;apt autoremove -y;reboot"'