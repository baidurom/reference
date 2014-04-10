#!/system/bin/sh
  echo 1 > /sys/module/sec/parameters/recovery_done		#tony
if ! applypatch -c EMMC:/dev/recovery:6291456:7b81aed181cdc4ee615f88cb6496ddcc930c4f25; then
  log -t recovery "Installing new recovery image"
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/bootimg:5216256:767fceb13ea09b141f2bbfb56259a1d62087c7b9 EMMC:/dev/recovery 7b81aed181cdc4ee615f88cb6496ddcc930c4f25 6291456 767fceb13ea09b141f2bbfb56259a1d62087c7b9:/system/recovery-from-boot.p
  if applypatch -c EMMC:/dev/recovery:6291456:7b81aed181cdc4ee615f88cb6496ddcc930c4f25; then		#tony
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
