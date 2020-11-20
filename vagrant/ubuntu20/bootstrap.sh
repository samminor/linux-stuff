#!/bin/bash

adduser --disabled-password --gecos "" user_name
usermod -aG sudo user_name
passwd sam << EOF
user_password
user_password
EOF

apt-get -y update
