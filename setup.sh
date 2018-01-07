#!/bin/bash

sudo apt-get update -y
sudo apt-get install libevent-dev libncurses-dev pkg-config -y

wget https://github.com/tmux/tmux/releases/download/2.1/tmux-2.1.tar.gz -O /tmp/tmux.tar.gz
pushd /tmp
tar xvfz tmux*.tar.gz
pushd tmux-*
./configure && make
sudo make install
popd
popd

rm -rf /tmp/tmux*

cat >> ~/.bashrc << EOF
export PATH=\$PATH:\$HOME/.tmux
EOF
