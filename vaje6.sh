#!/bin/bash

mkdir /home/ida123/desktop
mkdir /home/ida123/downloads
mkdir /home/ida123/pictures
mkdir /home/ida123/videos
mkdir /home/ida123/documents
for i in {1..5}
do 
mkdir /home/ida123/desktop/folder$i
done
readarray -t a <users.txt
for i in "${a[@]}"
do
sudo adduser "$i"
sudo usermod -aG sudo "$i"
done

