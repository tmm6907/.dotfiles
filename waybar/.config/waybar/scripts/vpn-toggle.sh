#!/bin/bash

CONFIG_PATH="$HOME/openvpn/client.ovpn"

if pgrep -x openvpn > /dev/null; then
    # VPN is running, kill it
    sudo pkill openvpn
    notify-send "VPN" "Disconnected" -t 2000
else
    # VPN is not running, start it
    sudo openvpn --config "$CONFIG_PATH" --daemon
    sleep 1
    if pgrep -x openvpn > /dev/null; then
        notify-send "VPN" "Connected" -t 2000
    else
        notify-send "VPN" "Failed to connect" -u critical -t 3000
    fi
fi
