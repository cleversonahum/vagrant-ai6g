#!/bin/bash

# Updating and installing Graphviz
sudo apt update -y
sudo apt install -y graphviz

# Cloning github repository
git clone https://github.com/aldebaro/ai6g.git

# Download dataset
wget https://nextcloud.lasseufpa.org/s/4JEB9M5amDZg3XX/download/ai6g.zip

# Unzip files
unzip -o ai6g.zip

# Installing Conda and generating conda env
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
bash Miniconda3-latest-Linux-x86_64.sh -b -u -p /home/vagrant/miniconda3/
echo 'export PATH=/home/vagrant/miniconda3/bin:$PATH' >> ~/.profile 
source ~/.profile
conda env create -f ai6g/ai6g_env.yml
