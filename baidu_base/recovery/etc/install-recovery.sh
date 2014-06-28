#!/system/bin/sh
  echo 1 > /sys/module/sec/parameters/recovery_done		#tony
if ! applypatch -c EMMC:/dev/recovery:5969920:46570e4eb13082c3df2e203c6ed42d8c9f0c6c10; then
  log -t recovery "Installing new recovery image"
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/bootimg:5189632:6e6fce64c2775464ea57430f60478781c4ccbf84 EMMC:/dev/recovery 46570e4eb13082c3df2e203c6ed42d8c9f0c6c10 5969920 6e6fce64c2775464ea57430f60478781c4ccbf84:/system/recovery-from-boot.p
  if applypatch -c EMMC:/dev/recovery:5969920:46570e4eb13082c3df2e203c6ed42d8c9f0c6c10; then		#tony
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
