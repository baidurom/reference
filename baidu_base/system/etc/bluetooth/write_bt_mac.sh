#!/system/bin/sh
mac=`getprop persist.sys.bdaddr`
echo $mac
write_bt_mac $mac
