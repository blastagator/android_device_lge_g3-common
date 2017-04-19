###                                     ###
### Specific Options for TWRP Building  ###
###                                     ###

# Common Options
RECOVERY_VARIANT := twrp
TW_THEME := portrait_hdpi
RECOVERY_SDCARD_ON_DATA := true
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_SUPPRESS_SECURE_ERASE := true
TW_EXCLUDE_SUPERSU := true
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
TW_MAX_BRIGHTNESS := 255
TW_DEFAULT_BRIGHTNESS := 175
TW_NO_USB_STORAGE := true
TW_INCLUDE_L_CRYPTO := true
TW_INTERNAL_STORAGE_PATH := "/data/media/0"
TW_INTERNAL_STORAGE_MOUNT_POINT := "/data"
#TW_TARGET_USES_QCOM_BSP := true
TW_EXTRA_LANGUAGES := true
TW_INPUT_BLACKLIST := "hbtp_vm"

# Enable f2fs filesystem tools
# Should be on by default, but turn on just in case
TARGET_USERIMAGES_USE_F2FS := true

# Enable ntfs filesystem tools
TW_INCLUDE_NTFS_3G := true

BOARD_HAS_NO_REAL_SDCARD := false
TW_DEFAULT_EXTERNAL_STORAGE := true
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "/external_sd"
PRODUCT_COPY_FILES += device/lge/g3-common/twrp/fstab/twrp.g3.fstab:recovery/root/etc/twrp.fstab
# Must go to ROOT (not recovery root) because inits are deleted and overwritten in the recovery root
PRODUCT_COPY_FILES += device/lge/g3-common/twrp/init/init.recovery.sd_card.rc:root/init.recovery.sd_card.rc
