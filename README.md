This repository contains a simple example of a px4 sitl communicating with ros2 to make the drone fly around in a circle automatically

Prerequisites:

1. have px4_sitl installed, following the steps outlined here (Ubuntu): https://docs.px4.io/main/en/dev_setup/dev_env_linux_ubuntu.html
2. install the QGC, as outlined here: https://docs.px4.io/main/en/dev_setup/qgc_daily_build.html
3. install the uXFRCE-messaging system according to the steps outlined here: https://docs.px4.io/main/en/middleware/uxrce_dds.html#micro-xrce-dds-agent-installation



Steps to run this package:

1. Clone this repo into the a folder named drone_circle_pkg in the src directory of your ros2 workspace
2. clone the px4 msgs repository into the src directory and follow the steps outlined here: https://docs.px4.io/main/en/ros2/user_guide.html
3. cd .. into the root of the ros2 workspace, and run rosdep install -i --from-path src --rosdistro humble -y and then colcon build
4. Open a seperate terminal, and execute the bash script launch_drone_circle in the terminal (make sure that this file is marked as executable). Before running, make sure the bash script is going into the right directories and executing the right package.
6. Watch as the drone flies in a circle

In order to spawn in the world file, follow theses steps:

1. move the singleHouseWorld.sdf file to world folder in the Px4-Autopilot folder, the exact path is: /DIRECTORY_CONTAINING_PX4/PX4-Autopilot/Tools/simulation/gz/worlds
2. open the singleHouseWorld.sdf file, and edit the uri pathways to where the singleHouse.dae file is located on your system, where the comments say to change the file path.
3. if needed, change the scale of the model by editing the three numbers in the scale tag of the house model in the singleHouseWorld.sdf file.
4. edit the launch_drone_circle.sh file and uncomment the singleHouseWorld make gz command, and comment out the previous make gz command.
5. run the launch_drone_circle.sh file as before
