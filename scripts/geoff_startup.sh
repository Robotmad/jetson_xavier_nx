#!/bin/bash
exit_script() {
    echo "Shutting Down Geoff"
    trap - SIGINT SIGTERM # clear the trap
    kill -- -$$ # Sends SIGTERM to child/sub processes
}

trap exit_script SIGINT SIGTERM

source /opt/ros/melodic/setup.bash
source /home/nx/catkin_ws/devel/setup.bash
export ROS_MASTER_URI=http://localhost:11311
export ROS_PYTHON_VERSION=3
export ROS_LOG_DIR=/home/nx/.ros/log
roslaunch geoff rc.launch
sleep infinity
