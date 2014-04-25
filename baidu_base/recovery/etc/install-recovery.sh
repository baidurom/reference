#!/system/bin/sh
  echo 1 > /sys/module/sec/parameters/recovery_done		#tony
if ! applypatch -c EMMC:/dev/recovery:6039552:e8e54a1a6729e42d625739477a702bde83efc069; then
  log -t recovery "Installing new recovery image"
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/bootimg:5222400:59eb5936d4bed7d24544ef920354414b647036d9 EMMC:/dev/recovery e8e54a1a6729e42d625739477a702bde83efc069 6039552 59eb5936d4bed7d24544ef920354414b647036d9:/system/recovery-from-boot.p
  if applypatch -c EMMC:/dev/recovery:6039552:e8e54a1a6729e42d625739477a702bde83efc069; then		#tony
	echo 0 > /sys/module/sec/parameters/recovery_done		#tony
        log -t recovery "Install new recovery image completed"
  else
	echo 2 > /sys/module/sec/parameters/recovery_done		#tony
        log -t recovery "Install new recovery image not completed"
  fi
else
  echo 0 > /sys/module/sec/parameters/recovery_done              #tony
  log -t recovery "Recovery image already installed"
fi
