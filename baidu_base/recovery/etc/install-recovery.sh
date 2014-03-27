#!/system/bin/sh
if ! applypatch -c MTD:recovery:4608000:2459fc4bc845fd49ad0e8850fb5e2236c879b9d9; then
  log -t recovery "Installing new recovery image"
  applypatch MTD:boot:4161536:cbf08ddf433d1b558e3b728f3869a087e91f4590 MTD:recovery 2459fc4bc845fd49ad0e8850fb5e2236c879b9d9 4608000 cbf08ddf433d1b558e3b728f3869a087e91f4590:/system/recovery-from-boot.p
else
  log -t recovery "Recovery image already installed"
fi
