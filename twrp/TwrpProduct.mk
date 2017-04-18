
## TWRP Packages

# Post Recovery Script
PRODUCT_PACKAGES += \
	postrecoveryboot.sh

# Additional recovery inits
# Use my twrp recovery init, instead of default recovery init
PRODUCT_PACKAGES += \
	init.recovery.g2.rc

# Create the normal recovery init with a different name
# It gets loaded by my twrp init
PRODUCT_PACKAGES += \
	init.recovery.g2.power.rc

# Touch-to-Wake
PRODUCT_PACKAGES += \
	init.recovery.touchtowake.rc

# Use g2 usb, instead of TWRP default
PRODUCT_PACKAGES += \
	init.recovery.g2.usb.rc


# SD Card init remains in board config
