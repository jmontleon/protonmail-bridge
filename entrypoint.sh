#!/bin/bash
protonmail-bridge --noninteractive > /root/bridge_log.txt 2>&1 &
disown
socat TCP4-LISTEN:25,fork,reuseaddr TCP4:127.0.0.1:1025
