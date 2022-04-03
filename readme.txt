# ROS Noetic
sudo apt-get install python3-rosdep

sudo rosdep init

rosdep update

#Go to the top directory of your catkin workspace where the source code of the ROS packages you'd like to use are. Then run:
rosdep install --from-paths src --ignore-src -r -y

cd ~/catkin_ws

rosdep install --from-paths src --ignore-src -r -y

catkin_make

source devel/setup.bash

roslaunch rosbridge_server rosbridge_websocket.launch

To test it simply:
rostopic echo /game
