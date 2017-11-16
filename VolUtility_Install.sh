cd ~
#Ubuntu 16.04 LTS
sudo apt-get update && sudo apt-get upgrade -y && sudo apt-get dist-upgrade -y
sudo apt-get -y install automake bison build-essential docker flex gcc git libjpeg8 libjpeg8-dev libmagic-dev libpcre++-dev libssl-dev libtool make pcregrep python-dev python-lxml python-pip python-socksipy python-urllib3 python-yara unzip 
sudo -H pip install --upgrade pip

#MongoDB Docker Install
#sudo docker run -d -p 27017:27017 --name vol-mongo mongo
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927
echo "deb http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.2.list
sudo apt-get update
sudo apt-get install -y mongodb-org
sudo service mongod start

#Yara Install
sudo -H pip install distorm3 pycrypto pillow ujson pyinstrument haystack pycoin simplejson pefile dpapick pysocks requests construct==2.5.5-reupload
git clone https://github.com/VirusTotal/yara
cd yara
sudo ./bootstrap.sh
./configure --with-crypto
make
sudo make install
sudo make check
cd ..

#VirusTotal-api
sudo pip install virustotal-api

#Volatility Install
git clone https://github.com/volatilityfoundation/volatility.git
git clone https://github.com/AJMartel/profiles.git
rsync -a -r -v profiles/ volatility/
cd volatility
sudo python setup.py install
cd ..

#VolUtility Install
git clone https://github.com/AJMartel/VolUtility
cd VolUtility
sudo pip install -r requirements.txt
sudo nohup python manage.py runserver 0.0.0.0:8000 &
