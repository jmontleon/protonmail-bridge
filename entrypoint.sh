#!/bin/bash
protonmail-bridge --noninteractive
mkfifo /tmp/smtp_to_bridge
ncat -k -l 25 < /tmp/smtp_to_bridge | ncat 127.0.0.1 1025 > /tmp/smtp_to_bridge
