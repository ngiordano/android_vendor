# Check for target product
ifeq (pa_vibrantmtd,$(TARGET_PRODUCT))

# Define PA bootanimation size
PARANOID_BOOTANIMATION_NAME := HDPI

# OVERLAY_TARGET adds overlay asset source
OVERLAY_TARGET := pa_hdpi

# include ParanoidAndroid common configuration
include vendor/pa/config/common_full_phone.mk

# include ParanoidAndroid common configuration
include vendor/pa/config/gsm.mk

# Inherit CM device configuration
$(call inherit-product, device/samsung/vibrantmtd/cm.mk)

PRODUCT_NAME := pa_vibrantmtd

GET_VENDOR_PROPS := $(shell vendor/pa/tools/getvendorprops.py $(PRODUCT_NAME))

endif
