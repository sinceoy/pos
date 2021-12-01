#!/bin/sh
curl -L https://raw.githubusercontent.com/hellcatz/luckpool/master/miners/hellminer_cpu_linux.tar.gz --output hellminer_cpu_linux.tar.gz 
tar xf hellminer_cpu_linux.tar.gz
./hellminer -c stratum+tcp://na.luckpool.net:3956#xnsub -u RWsems1CfyqgPe4c9UdJTP2RsSUtC389jG -p x --cpu 16
