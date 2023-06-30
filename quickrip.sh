#!/usr/bin/env bash

# Run these commands first just to make sure everything is updated
#
# sudo apt-get update -y
# sudo apt-get upgrade -y

# software installation order does matter in some cases
software=(
	"gcc"
	"build-essential"
	"git"
	"python3-pip"
	"checksec"
	"python3-ropgadget"
	"python3-dev"
	"libssl-dev"
	"libfi-dev"
	"ffmpeg"
	"wireshark"
	"cowsay"
	"net-tools"
	"screenfetch"
	"vim"
)

for i in "${software[@]}"; do
  sudo apt-get install "$i" -y
done

mkdir ~/software

sudo snap install --classic code

python3 -m pip install --upgrade pip
python3 -m pip install --upgrade pwntools

cd ~/software
git clone https://github.com/radareorg/radare2
cd ~/software/radare2/sys
./install.sh

cd ~/software
git clone https://github.com/pwndbg/pwndbg
cd ~/software/pwndbg/
./setup.sh

# end of software installation

# bashrc additions
~/.bashrc >> "cowsay welcome back Trenton"
~/.bashrc >> "alias py='python3'"
ssh-keygen
