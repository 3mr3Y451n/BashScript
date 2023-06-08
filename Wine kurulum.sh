#! /bin/bash

#LinuxMint 20 için
#-----------------
#Terminal Commands:

sudo apt update 
sudo apt upgrade 
wget -nc https://dl.winehq.org/wine-builds/winehq.key 
ls 
sudo -H gpg -o /etc/apt/trusted.gpg.d/winehq.key.gpg --dearmor winehq.key 
sudo add-apt-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ focal main' 
sudo apt update 
sudo apt install --install-recommends winehq-devel wine --version 
wine clock

#LinuxMint 21 için
#-----------------
#Terminal Commands:

sudo dpkg --add-architecture i386 
wget -nc https://dl.winehq.org/wine-builds/winehq.key
sudo mv winehq.key /usr/share/keyrings/winehq-archive.key
wget -nc https://dl.winehq.org/wine-builds/ubuntu/dists/jammy/winehq-jammy.sources
sudo mv winehq-jammy.sources /etc/apt/sources.list.d/
sudo apt update 
sudo apt install --install-recommends winehq-devel

