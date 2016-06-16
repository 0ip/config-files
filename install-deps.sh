#!/bin/sh

sudo apt-get update
sudo apt-get install git curl tmux python-setuptools exuberant-ctags libwww-perl cmake

pip install pygments
pip install flake8

#find . -type f -name ".*" | xargs -i ln -sf `pwd`/{} ~/\{}
