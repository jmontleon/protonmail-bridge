#!/bin/bash
socat TCP-LISTEN:25,fork TCP:127.0.0.1:1025,end-close &
mkfifo /tmp/fifo
cat /tmp/fifo | protonmail-bridge --cli
