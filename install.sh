#!/bin/env bash

install_needed() {
    sudo apt-get update && sudo apt-get -qq install ansible unzip git -y 
}

configure() {
    install_needed
    ansible-playbook ubuntu-config.yaml --ask-become-pass $1
}

usage() {
    printf "\nUsage:\n"
    echo " -f full install and configure"
    echo " -c check configuration"
}

if [ "$#" -eq 0 ]; then 
    usage; 
    exit 1; 
fi

main() {

    case $1 in
        -c)
           configure "--check"
            ;;
        -f)
           configure
            ;;
        -h)
            usage
            ;;
        *) usase ; exit 1;
    esac
}

main "$@"
