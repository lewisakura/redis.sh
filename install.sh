#!/bin/bash

command -v shc >/dev/null 2>&1 || { echo >&2 "You need to install shc (https://github.com/neurobin/shc)."; exit 1; }
command -v git >/dev/null 2>&1 || { echo >&2 "You need to install git (https://github.com/git/git/)."; exit 1; }
echo "Cloning redis.sh..."
git clone https://github.com/LewisTehMinerz/redis.sh
cd redis.sh
echo "Compiling..."
shc -f redis.sh
echo "Installing..."
sudo cp redis.sh.x /usr/bin/redis
echo "Cleaning up..."
cd ..
rm -rf redis.sh
echo "Done"
