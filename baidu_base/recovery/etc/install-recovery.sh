#!/system/bin/sh
  echo 1 > /sys/module/sec/parameters/recovery_done		#tony
if ! applypatch -c EMMC:/dev/recovery:5969920:77ad4cf502f6c4ed1955715e64c6c10ffc199cc1; then
  log -t recovery "Installing new recovery image"
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/bootimg:5189632:1d0f36a179db9695a340681f51da56a123c9f796 EMMC:/dev/recovery 77ad4cf502f6c4ed1955715e64c6c10ffc199cc1 5969920 1d0f36a179db9695a340681f51da56a123c9f796:/system/recovery-from-boot.p
  if applypatch -c EMMC:/dev/recovery:5969920:77ad4cf502f6c4ed1955715e64c6c10ffc199cc1; then		#tony
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
