#!/bin/bash

catkin_make
source devel/setup.bash
rosrun ROS-dndb-node ros_dndb_node_noprint.py &

roslaunch realsense2_camera rs_camera.launch camera:=d400 align_depth:=true enable_sync:=true filters:=disparity,spatial,temporal,hole_filling

