sudo add-apt-repository -r -n 'deb https://dl.winehq.org/wine-builds/ubuntu/ impish main'

sudo dpkg --add-architecture i386 
cd /tmp
wget -nc https://dl.winehq.org/wine-builds/winehq.key
sudo apt-key add winehq.key

sudo add-apt-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ focal main'
sudo apt-get update
sudo apt-get install winehq-stable
