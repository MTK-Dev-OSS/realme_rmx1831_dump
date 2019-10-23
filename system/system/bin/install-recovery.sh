#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/bootdevice/by-name/recovery:35107664:edb58ee226a7ecfb52fdf531040397868564a1db; then
  applypatch  EMMC:/dev/block/platform/bootdevice/by-name/boot:9925456:92049d95b1f845d1081f2e2a9fcaa776969f0b0e EMMC:/dev/block/platform/bootdevice/by-name/recovery edb58ee226a7ecfb52fdf531040397868564a1db 35107664 92049d95b1f845d1081f2e2a9fcaa776969f0b0e:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
