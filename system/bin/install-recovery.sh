#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/15540000.dwmmc0/by-name/RECOVERY:12054528:b6172a221d4af085dba332200e3e49173a32d95f; then
  applypatch EMMC:/dev/block/platform/15540000.dwmmc0/by-name/BOOT:9904128:82856f19d71e3a5ce488f87d1c735203c0d5ebe3 EMMC:/dev/block/platform/15540000.dwmmc0/by-name/RECOVERY b6172a221d4af085dba332200e3e49173a32d95f 12054528 82856f19d71e3a5ce488f87d1c735203c0d5ebe3:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
