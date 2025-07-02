#!/bin/bash

# Terminal 1: PX4 SITL
gnome-terminal -- bash -c "export DISPLAY=:0; sleep 2; cd ~/PX4-Autopilot && make px4_sitl gz_x500; exec bash" # comment this when loading the house world file
# uncomment the below line to spawn the gazebo world file to 
# gnome-terminal -- bash -c "export DISPLAY=:0; sleep 2; cd ~/PX4-Autopilot && PX4_GZ_WORLD=singleHouseWorld make px4_sitl gz_x500; exec bash"


# Terminal 2: MicroXRCEAgent
gnome-terminal -- bash -c "MicroXRCEAgent udp4 -p 8888; exec bash"

# Terminal 3: QGroundControl
gnome-terminal -- bash -c "~/QGroundControl-x86_64.AppImage; exec bash"

# Terminal 4: ROS 2 Node
gnome-terminal -- bash -c "cd ~/drone_circle && source install/setup.bash && source ./install/setup.bash && sleep 20s && ros2 run drone_circle_pkg drone_circle_node; exec bash"

