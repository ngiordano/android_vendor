# Check for target product
ifeq (pa_galaxysmtd,$(TARGET_PRODUCT))

# Define PA bootanimation size
PARANOID_BOOTANIMATION_NAME := HDPI

# OVERLAY_TARGET adds overlay asset source
OVERLAY_TARGET := pa_hdpi

# include ParanoidAndroid common configuration
include vendor/pa/config/common_full_phone.mk

# include ParanoidAndroid common configuration
include vendor/pa/config/gsm.mk

# Inherit CM device configuration
$(call inherit-product, device/samsung/galaxysmtd/cm.mk)

PRODUCT_NAME := pa_galaxysmtd

PRODUCT_COPY_FILES +=  \
    vendor/pa/prebuilt/pa_hdpi.conf:system/etc/paranoid/properties.conf \
    vendor/pa/prebuilt/pa_hdpi.conf:system/etc/paranoid/backup.conf

GET_VENDOR_PROPS := $(shell vendor/pa/tools/getvendorprops.py $(PRODUCT_NAME))

endif
