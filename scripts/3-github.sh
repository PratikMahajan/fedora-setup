#!/bin/bash

echo -ne '\n' | ssh-keygen -t rsa -b 4096 -C "pratik@mahajan.xyz"

echo -ne '\n'

eval "$(ssh-agent -s)"

ssh-add ~/.ssh/id_rsa

cat ~/.ssh/id_rsa.pub > sshkey


echo "SSH KEYS STORED IN sshkey FILE. ADD TO YOUR GITHUB ACCOUNT"
