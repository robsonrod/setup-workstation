#!/bin/env bash

configure() {
    playbook_file=$(printf 'ubuntu-%s-config.yaml' $1)
    echo "Selected file: $playbook_file"
    ansible-playbook $(pwd)/${playbook_file} --ask-become-pass $2    
}

usage() {
    printf "\nUsage:\n"
    echo " -f full install and configure"
    echo " -m minimal install and configure"
    echo " -c check configuration"
}

if [ "$#" -eq 0 ]; then 
    usage; 
    exit 1; 
fi

main() {

    case $1 in
        -m)
            configure "minimal"
            ;;
        -f)
            configure "full"
            ;;
        -c)
            configure "full" "--check" 
            ;;
        -h)
            usage
            ;;
        *) usase ; exit 1;
    esac
}

main "$@"
