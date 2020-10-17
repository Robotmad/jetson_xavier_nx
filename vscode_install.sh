sudo apt install -y build-essential make cmake cmake-curses-gui git g++ pkg-config curl libfreetype6-dev libcanberra-gtk-module libcanberra-gtk3-module python3-dev python3-testresources python3-pip 
sudo apt install -y git libx11-dev libxkbfile-dev libsecret-1-dev fakeroot rpm libnss3 apt-transport-https 
curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash - 
sudo apt install -y nodejs 
sudo apt install -y gcc g++ make 
#echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list 
#sudo apt update
#sudo apt install -y yarn 
sudo npm install -g yarn
yarn --version 
cd ~/ 
git clone https://github.com/microsoft/vscode 
cd vscode 
yarn 
yarn run watch 
