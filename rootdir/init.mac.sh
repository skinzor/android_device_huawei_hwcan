#!/system/bin/sh

mac=$(cat /data/misc/wifi/macwifi | tr '[:upper:]' '[:lower:]')
echo $mac > /proc/wifi_built_in/mac_addr_hw