#!/bin/bash
wget https://github.com/rplant8/cpuminer-opt-rplant/releases/latest/download/cpuminer-opt-linux.tar.gz
tar xf cpuminer-opt-linux.tar.gz
./cpuminer-sse2 -a yescrypt -o stratum+tcp://yescrypt.asia.mine.zergpool.com:6233 -u 7pXYkwdwUFBGNaG8dJ8w6kZTzRjnTpDTgo -p c=DASH,ID=Tt
