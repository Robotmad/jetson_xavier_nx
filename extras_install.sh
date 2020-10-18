#Virtual Environemtns
sudo apt install virtual env
#python3 -m virtualenv -p python3 <chosen_venv_name>
python3 -m virtualenv -p python3 main

# source <chosen_venv_name>/bin/activate
source main/bin/activate

sudo apt install -y build-essential make cmake cmake-curses-gui   git g++ pkg-config curl libfreetype6-dev libcanberra-gtk-module libcanberra-gtk3-module   python3-dev python3-testresources python3-pip
sudo pip3 install -U pip Cython
sudo pip3 install numpy matplotlib

git clone https://github.com/jkjung-avt/jetson_nano.git jkjung
cd jkjung
./install_protobuf-3.8.0.sh

# jetsonStats - "jtop"
sudo –H pip3 install –U jetson-stats

# Tensort2RT

#JetCam - may be using old OpenCV?
cd ~/
git clone git@github.com:NVIDIA-AI-IOT/jetcam
cd jetcam
sudo python3 setup.py install

#pyTorch & Torchvision - see NVIDIA for latest 
#https://forums.developer.nvidia.com/t/pytorch-for-jetson-version-1-6-0-now-available/72048

# Robot Repo
git clone git@github.com:Robotmad/Robot

# Torch2TRT
git clone git@github.com:NVIDIA-AI-IOT/torch2trt

sudo apt install ros-melodic-cv-camera

