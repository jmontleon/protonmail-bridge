#!/bin/bash
socat -t 5 TCP-LISTEN:25,fork TCP:127.0.0.1:1025 &
mkfifo /tmp/fifo
cat /tmp/fifo | protonmail-bridge --cli
