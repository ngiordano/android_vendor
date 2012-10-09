# Check for target product
ifeq (pa_grouper,$(TARGET_PRODUCT))

# Define PA bootanimation size
PARANOID_BOOTANIMATION_NAME := XHDPI

# OVERLAY_TARGET adds overlay asset source
OVERLAY_TARGET := pa_tvdpi

# include ParanoidAndroid common configuration
include vendor/pa/config/common_full_tablet_wifionly.mk

# include missing proprietaries
PRODUCT_COPY_FILES += \
  vendor/pa/proprietary/grouper/bcm4330.hcd:system/etc/firmware/bcm4330.hcd \
  vendor/pa/prebuilt/pa_tvdpi.conf:system/etc/paranoid/properties.conf \
  vendor/pa/prebuilt/pa_tvdpi.conf:system/etc/paranoid/backup.conf

# Inherit CM device configuration
$(call inherit-product, device/asus/grouper/cm.mk)

PRODUCT_NAME := pa_grouper

GET_VENDOR_PROPS := $(shell vendor/pa/tools/getvendorprops.py $(PRODUCT_NAME))

endif

