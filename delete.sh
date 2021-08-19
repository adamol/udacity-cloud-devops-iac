#!/bin/bash

ACTION=$1

case $ACTION in

    network)
        aws cloudformation delete-stack --stack-name iac-network
    ;;

    servers)
        aws cloudformation delete-stack --stack-name iac-servers
    ;;

    bastion)
        aws cloudformation delete-stack --stack-name iac-bastion
    ;;

    *)
        echo -n "expecting action: network | servers | bastion"
    ;;
esac


