#!/bin/bash
nohup /usr/sbin/sshd -D </dev/null >/dev/null 2>&1 &
nohup /usr/bin/ttyd -p 9090 -d 0 bash </dev/null >/dev/null 2>&1