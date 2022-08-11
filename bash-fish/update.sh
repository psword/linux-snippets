#!/bin/bash
 # ~/Downloads/update -- script to update groups of Debian/Ubuntu machines
 #
 # Usage: update <name> [<name> [<name>]]
 #
 # where <name> is a nickname for predefined class of machines:
 # srv --- servers
 # wkst --- workstations
 
 usage() 
 {
    printf "\n%s\n\n" " Usage: update < srv | wkst >"
    exit 1
 }

 if [ -z $1 ] ; then
    usage
 fi

 TIMEOUT=10

 COMMAND="sudo /usr/bin/apt-get update;sudo /usr/bin/apt-get upgrade;sudo reboot"

 SERV="192.168.1.2 192.168.1.3 192.168.1.4"
 #WKST="host1 host2" 

 while WHAT=$1 ; shift ; do

    case $WHAT in
        srv) MACHINES=$SERV;;
        #wkst) MACHINES=$WKST;;
        *) usage;;
    esac

    for machine in $MACHINES
    do
        printf "\n\n%s\n\n" $machine:
        ssh yoda@$machine -oConnectTimeout=$TIMEOUT -t $COMMAND
    done

 done