# Examples of rFSM

The core library can be found at https://github.com/kmarkus/rFSM.

## Usage

### Install lua and the rfsm package for your ROS distribution
`$ sudo apt-get install lua5.1 ros-indigo-rfsm`

### Source ROS
`$  source /opt/ros/indigo/setup.bash`

### Start a lua
To start a lua console there are some alternatives:
- `$ rosrun rtt_ros rttlua` : to start a lua console using ROS
- `$ lua` : to start a lua console

### Run the scripts
To run the scripts you can do it copying line by line or
running the command `dofile("complete_path/file.lua")`.

## Transition rule examples

Example FSMs in the coordination folder.

 - ```parallel_transitions_1.lua```

### Test 1
Send two events that could trigger two alternative paths.
`lua scripts/test1.lua`
