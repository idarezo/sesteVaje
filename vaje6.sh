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
sudo apt-get update -y
sudo apt-get install -y net-tools
sudo apt install nginx -y
sudo apt-get update -y
sudo apt-get -y install ca-certificates curl gnupg lsb-release
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin
