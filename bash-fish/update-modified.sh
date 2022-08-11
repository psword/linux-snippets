#!/bin/bash
#Define servers
MACHINES="IPADD1 IPADD2 IPADD3"
#Define timeout
TIMEOUT=10
#Define command
COMMAND="sudo /usr/bin/apt-get update;sudo /usr/bin/apt-get upgrade;sudo reboot"
    
    for machine in $MACHINES
    do
        printf "\n\n%s\n\n" $machine:
        ssh yoda@$machine -oConnectTimeout=$TIMEOUT -t $COMMAND
    done