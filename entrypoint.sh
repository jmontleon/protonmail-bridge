#!/bin/bash
protonmail-bridge --noninteractive > /root/bridge_log.txt 2>&1 &
disown
socat TCP-LISTEN:25,fork TCP:127.0.0.1:1025
