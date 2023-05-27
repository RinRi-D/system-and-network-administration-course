#!/bin/bash

while :
do
    CPUUSAGE="$(top -b - n 1 | grep "Cpu" | awk '{print 100-$8}')%"
    MEMUSAGE="$(free -h | grep "Mem" | awk '{print $3/$2*100}')%"
    # disk usage for root directory
    DISKUSAGE="$(df -h | awk '{ if ($6 == "/")
    print $5;
    }')"

    echo "$(date) CPU: $CPUUSAGE Mem: $MEMUSAGE Disk:$DISKUSAGE" >> /var/log/system_utilization.log
    sleep 15
done
