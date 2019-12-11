#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/bootdevice/by-name/recovery:35113808:3d6116cd4d72cef111cae0e842e0751018b0f361; then
  applypatch  EMMC:/dev/block/platform/bootdevice/by-name/boot:9929552:4157c32db883059246619a3d1d918cbba6c5894f EMMC:/dev/block/platform/bootdevice/by-name/recovery 3d6116cd4d72cef111cae0e842e0751018b0f361 35113808 4157c32db883059246619a3d1d918cbba6c5894f:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
