#!/usr/bin/expect

set timeout 3

spawn sudo passwd root
expect "New password:"
send "temp_passwd6457\r"
expect "Retype new password:"
send "temp_passwd6457\r"
expect "passwd: password updated successfully"
expect eof

spawn su root
expect "*Password:"
send "temp_passwd6457\r"

expect "*#*"
send "whoami\r"
expect eof
exit