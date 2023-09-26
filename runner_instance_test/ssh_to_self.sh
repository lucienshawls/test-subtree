#!/usr/bin/expect

set timeout 3

spawn ssh -o StrictHostKeyChecking=no root@127.0.0.1 -p 14122
expect "*#*"
send "whoami\r"
expect timeout
exit