#!/bin/bash


# Creates qrcodes from arguments
# Requires qrencode and feh

if [ $# -eq 0 ]; then
    echo "Argument needed"
    exit
fi


for text in "$@"
do
    tempfile="$(mktemp --suffix '.png')"
    qrencode "$text" -o $tempfile;
    feh --zoom 200 $tempfile; 
    rm "$tempfile"
done
