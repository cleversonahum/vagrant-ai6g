echo 'export PATH=/home/vagrant/miniconda3/bin:$PATH' >> ~/.profile 
source ~/.profile
echo "######## Starting notebook ########"
conda run -n ai6g jupyter-lab --no-browser --port 4321 --NotebookApp.token='' --NotebookApp.password='' --ip 0.0.0.0 --allow-root & disown 
