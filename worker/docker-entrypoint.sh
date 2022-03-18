#! /usr/bin/bash
nohup /usr/sbin/sshd -D &
nohup /usr/bin/ttyd -p 9090 -d 0 bash &
wait