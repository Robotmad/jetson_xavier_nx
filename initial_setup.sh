# NVIDIA Jetson Xavier NX - Initial Setup
# git clone git@github.com:Robotmad/jeston-xavier-nx.git
# chmod +x *.sh
# sudo ./initial.sh
#

# Git Configuration
echo "git configuration - start"
git config --global user.email "cbarnes@tmsl.com"
git config --global user.name "Chris Barnes"
git config --global core.editor "nano"
echo "git configuration - end"

# TimeZone
echo "Timezone - start"
sudo timedatectl set-timezone Europe/London
echo "Timezone - end"

# We want to use the J41 UART so need to stop other users
echo "UART - start"
sudo systemctl stop nvgetty
sudo systemctl disable nvgetty
sudo usermod -a -G tty $USER
echo "UART - end"

# Setup for VNC Server
echo "***Vino VNS Server***"
gsettings set org.gnome.Vino require-encryption false
gsettings set org.gnome.Vino prompt-enabled false
echo ""

# disable syslog to prevent large log files from collecting
echo "Syslog - start"
sudo -S service rsyslog stop
sudo -S systemctl disable rsyslog
echo "Syslog - end"

# enable all Ubuntu packages:
echo "Ubuntu Packages - start"
sudo apt-get install apt-utils
sudo apt-add-repository universe
sudo apt-add-repository multiverse
sudo apt-add-repository restricted
sudo apt-get update
sudo apt update
sudo apt-get install nano
sudo apt-get install v4l-utils
echo "Ubuntu Packages - end"

# Permission for USB

# Create user to run things on startup
# https://forums.developer.nvidia.com/t/how-to-run-a-script-on-boot/108411/2
sudo adgroup --system geoff
sudo adduser --system --no-create-home --disabled-login --disabled-password --ingroup robot robot
sudo adduser geoff dialout
sudo adduser geoff i2c
sudo adduser geoff gpio
# Create service and script...
sudo touch /lib/systemd/system/geoff.service
# need to edit this file...
echo "you need to edit geoff.service"
#
# PiOLED
sudo -H pip3 install Adafruit_SSD1306
sudo groupadd i2c
sudo chown :i2c /dev/i2c-1
sudo chmod g+rw /dev/i2c-1
sudo usermod -aG i2c $USER
