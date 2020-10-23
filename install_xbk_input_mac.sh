#!/bin/bash
git clone https://github.com/vovkasm/input-source-switcher.git
cd input-source-switcher
mkdir build && cd build
cmake ..
make
sudo make install
