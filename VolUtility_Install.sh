cd ~
#Ubuntu 16.04 LTS
sudo apt-get update
sudo apt-get upgrade -y && sudo apt-get dist-upgrade -y
sudo apt-get install python-dev python-pip git pcregrep libpcre++-dev python-dev automake libtool gcc libssl-dev docker -y
pip install --upgrade pip

#MongoDB Docker Install
#sudo docker run -d -p 27017:27017 --name vol-mongo mongo
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927
echo "deb http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.2.list
sudo apt-get update
sudo apt-get install -y mongodb-org
sudo service mongod start

#Volatility Install
sudo pip install distorm3 pycrypto pillow ujson
git clone https://github.com/VirusTotal/yara
cd yara
sudo ./bootstrap.sh
./configure --with-crypto
make
sudo make install
sudo make check
cd ..
git clone https://github.com/volatilityfoundation/volatility
cd volatility
sudo python setup.py install
cd ..

#VolUtility Install
git clone https://github.com/kevthehermit/VolUtility
cd VolUtility
sudo pip install -r requirements.txt
sudo nohup python manage.py runserver 0.0.0.0:80 &
