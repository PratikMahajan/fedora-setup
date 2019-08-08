#!/bin/bash

echo -ne '\n' | ssh-keygen -t rsa -b 4096 -C "pratik@mahajan.xyz"

echo -ne '\n'

eval "$(ssh-agent -s)"

ssh-add ~/.ssh/id_rsa

sudo yum install xclip -y

xclip -sel clip < ~/.ssh/id_rsa.pub


echo "SSH KEYS COPIED TO YOUR CLIPBOARD. ADD TO YOUR GITHUB ACCOUNT"
