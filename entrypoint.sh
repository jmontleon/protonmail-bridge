#!/bin/bash
protonmail-bridge --noninteractive
socat TCP-LISTEN:25,fork TCP:127.0.0.1:1025
