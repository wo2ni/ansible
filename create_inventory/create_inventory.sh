#!/usr/bin/env bash
>inventory
cat << "EOF" >> inventory
#ALL VPS
[Servier]
EOF
for i in `cat server_list.txt`; do
    printf "$i                      ansible_host=$i             ansible_user=root\n" >>inventory
done
