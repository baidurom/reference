#!/system/bin/sh
mac=`getprop persist.sys.wifi_mac`
echo $mac
write_mac $mac
