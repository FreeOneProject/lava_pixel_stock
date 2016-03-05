#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/mtk-msdc.0/by-name/recovery:5353472:e45d1135a634aec33192a7ca69723fc8853da1e1; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/mtk-msdc.0/by-name/boot:4753408:26ef58ca0823550d3f525c9344ec77d17dfd6cf1 EMMC:/dev/block/platform/mtk-msdc.0/by-name/recovery e45d1135a634aec33192a7ca69723fc8853da1e1 5353472 26ef58ca0823550d3f525c9344ec77d17dfd6cf1:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
