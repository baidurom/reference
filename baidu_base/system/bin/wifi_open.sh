
#!/system/bin/sh
insmod /system/lib/modules/ath6kl/cfg80211.ko
sleep 2
insmod /system/lib/modules/ath6kl/ath6kl_sdio.ko testmode=1

