#!/bin/sh
screen -d -m /bin/eatmemory $1
sleep 5
while true; do
    pgrep eatmemory > /dev/null
    if [[ "$?" -ne "0" ]]; then
        echo "Process not found, maybe killed by the kernel, exiting..."
        exit 1
    else
        sleep 1
    fi
done
