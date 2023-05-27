#!/bin/bash

while true ; do
    STATS="<h1>Uptime</h1>$(uptime)\n<h1>Inode and disk usage</h1>$(df -ih)\n<h1>Mem usage</h1>$(free -h)\n<h1>Syslog</h1>$(tail -n 15 /var/log/syslog)\r\n\r\n"
    LEN=$(printf "%s" "$STATS" | wc -c)
    RES="HTTP/1.1 200OK\r\nContent-Length: $LEN\r\n\r\n"
    echo -e "$RES$STATS"| nc -l -p 1500;
done
