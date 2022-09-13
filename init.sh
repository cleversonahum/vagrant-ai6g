#!/bin/bash

wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
bash Miniconda3-latest-Linux-x86_64.sh -b -u -p /home/vagrant/miniconda3/
echo 'export PATH=/home/vagrant/miniconda3/bin:$PATH' >> ~/.profile 
source ~/.profile
conda env create -f ai6g/ai6g_env.yml
