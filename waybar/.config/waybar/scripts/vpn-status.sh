#!/bin/bash

if pgrep -x openvpn > /dev/null; then
    echo '{"text": "󰖂 Disconnect", "class": "connected", "tooltip": "VPN Connected - Click to disconnect"}'
else
    echo '{"text": "󰖂 Connect", "class": "disconnected", "tooltip": "VPN Disconnected - Click to connect"}'
fi
