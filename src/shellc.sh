#!/usr/bin/bash

function help(){
    cat <<EHM
Usage: shellc [options] -f script
-f                file name of the script to compile
-h                displays this help message
-r                Relax security. Make a redistributable binary
-o                output filename
EHM
    exit $1
}

function run(){
    if [ -f $6 ]; then
        sudo shc $1 $2 $3 $4 $5 && sudo rm -f $6.x.c
    elif [ ! -f $1 ]; then
        echo error: $1: file not found
        help 1
    fi
}

function check(){
    while getopts ":f:hro:" opt; do
        case ${opt} in
            h ) help 0
                ;;
            \? ) echo $OPTARG: invalid argument && help 1
                ;;
        esac
    done
}

while getopts ":fro" opt; do
    case ${opt} in
        f ) FARG=$OPTARG && run $1 $2 $3 $4 $5 $FARG
            ;;
        r ) run $1 $2 $3 $4 $5 $FARG
            ;;
        o ) run $1 $2 $3 $4 $5 $FARG
            ;;
        \? ) check
            ;;
    esac
done