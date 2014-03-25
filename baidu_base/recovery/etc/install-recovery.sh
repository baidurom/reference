#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/omap/omap_hsmmc.0/by-name/recovery:6254592:eb24c07ad4326ce2387c19b642155f00ee8ea08c; then
  log -t recovery "Installing new recovery image"
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/omap/omap_hsmmc.0/by-name/boot:4878336:2e88b917e87f75394ef91474ea89fd3d48a76c85 EMMC:/dev/block/platform/omap/omap_hsmmc.0/by-name/recovery eb24c07ad4326ce2387c19b642155f00ee8ea08c 6254592 2e88b917e87f75394ef91474ea89fd3d48a76c85:/system/recovery-from-boot.p
else
  log -t recovery "Recovery image already installed"
fi
