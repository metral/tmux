#!/bin/bash

wget https://github.com/tmux/tmux/releases/download/3.1c/tmux-3.1c.tar.gz -O /tmp/tmux.tar.gz
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
