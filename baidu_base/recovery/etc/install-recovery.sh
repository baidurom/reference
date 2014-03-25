#!/system/bin/sh
  echo 1 > /sys/module/sec/parameters/recovery_done		#tony
if ! applypatch -c EMMC:/dev/recovery:6230016:a0318156ffe79831a27949527db67f394da35b8a; then
  log -t recovery "Installing new recovery image"
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/bootimg:5189632:1d7eb765f4c4e4372e546ba8ae66363e1c87e062 EMMC:/dev/recovery a0318156ffe79831a27949527db67f394da35b8a 6230016 1d7eb765f4c4e4372e546ba8ae66363e1c87e062:/system/recovery-from-boot.p
  if applypatch -c EMMC:/dev/recovery:6230016:a0318156ffe79831a27949527db67f394da35b8a; then		#tony
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
