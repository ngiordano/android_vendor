# Check for target product
ifeq (pa_maguro,$(TARGET_PRODUCT))

# Define PA bootanimation size
PARANOID_BOOTANIMATION_NAME := XHDPI

# OVERLAY_TARGET adds overlay asset source
OVERLAY_TARGET := pa_xhdpi

# include ParanoidAndroid common configuration
include vendor/pa/config/common_full_phone.mk

# include ParanoidAndroid common configuration
include vendor/pa/config/gsm.mk

# include missing proprietaries
PRODUCT_COPY_FILES += \
  vendor/pa/proprietary/maguro/bcm4330.hcd:system/vendor/firmware/bcm4330.hcd \
  vendor/pa/prebuilt/pa_xhdpi.conf:system/etc/paranoid/properties.conf \
  vendor/pa/prebuilt/pa_xhdpi.conf:system/etc/paranoid/backup.conf

# Inherit CM device configuration
$(call inherit-product, device/samsung/maguro/cm.mk)

PRODUCT_NAME := pa_maguro

GET_VENDOR_PROPS := $(shell vendor/pa/tools/getvendorprops.py $(PRODUCT_NAME))

endif
