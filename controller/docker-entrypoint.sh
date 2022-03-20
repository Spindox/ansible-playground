#! /usr/bin/bash
cd
/usr/sbin/sshd -D &
/usr/bin/ttyd -p 9090 -d 0 bash
