#!/bin/bash
password=type your password here
username=type your user name here
useradd -m $username -s /bin/bash
echo "$username:$password" | chpasswd
echo "$username  ALL=(ALL)  ALL" >> /etc/sudoers
passwd -e $username
echo "User $username is successfully added with sudo permission and you need to change password for first time login!"
##yannainglin