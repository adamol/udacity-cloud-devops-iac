#!/bin/bash

ACTION=$1

case $ACTION in

    network)
        aws cloudformation create-stack \
            --stack-name iac-network \
            --template-body file://templates/network.yml \
            --region=eu-central-1
    ;;

    servers)
        aws cloudformation create-stack \
            --stack-name iac-servers \
            --template-body file://templates/servers.yml \
            --region=eu-central-1 \
            --capabilities CAPABILITY_IAM
    ;;

    bastion)
        aws cloudformation create-stack \
            --stack-name iac-bastion \
            --template-body file://templates/bastion-host.yml \
            --region=eu-central-1
    ;;

    *)
        echo -n "expecting action: network | servers | bastion"
    ;;
esac


