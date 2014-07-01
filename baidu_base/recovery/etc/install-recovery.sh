#!/system/bin/sh
  echo 1 > /sys/module/sec/parameters/recovery_done		#tony
if ! applypatch -c EMMC:/dev/recovery:5969920:b5cb060fec54b7dd805a351052a28b56018acd68; then
  log -t recovery "Installing new recovery image"
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/bootimg:5189632:8e15b9afc90c0521460854e9f08568ddd0781db7 EMMC:/dev/recovery b5cb060fec54b7dd805a351052a28b56018acd68 5969920 8e15b9afc90c0521460854e9f08568ddd0781db7:/system/recovery-from-boot.p
  if applypatch -c EMMC:/dev/recovery:5969920:b5cb060fec54b7dd805a351052a28b56018acd68; then		#tony
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
