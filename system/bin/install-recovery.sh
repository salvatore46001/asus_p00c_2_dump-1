#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/mtk-msdc.0/11230000.MSDC0/by-name/recovery:11307264:c37eb22240495c1609f86b332c4cdc428c1c637f; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/mtk-msdc.0/11230000.MSDC0/by-name/boot:9851136:6a7cf72e7eed1c3f34f09279bbe33d7a68b195fd EMMC:/dev/block/platform/mtk-msdc.0/11230000.MSDC0/by-name/recovery c37eb22240495c1609f86b332c4cdc428c1c637f 11307264 6a7cf72e7eed1c3f34f09279bbe33d7a68b195fd:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
