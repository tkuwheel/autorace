#!/usr/bin/env bash

{
    # add Hello Docker to bash config
    echo "echo 'Hello Docker!'"
    echo 'echo "ROS_MASTER_URL=$ROS_MASTER_URL"'
    echo 'echo "ROS_HOSTNAME=$ROS_HOSTNAME"'
    echo 'echo "ROS_IP=$ROS_IP"'

    # add common bash aliase to bash config
    echo -e "alias eb='vim ~/.bashrc'\n\
alias sb='source ~/.bashrc && echo \"You source user config!\"'\n\
alias wb='source ~/work/devel/setup.bash && echo \"You source workspace config!\"'\n"
} >> /root/.bashrc
