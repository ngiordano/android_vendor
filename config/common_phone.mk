$(call inherit-product, vendor/tp/config/common.mk)

PRODUCT_PACKAGES += \
    NovaLauncher \
    Torch

# Inherit drm blobs
-include vendor/tp/config/common_drm_phone.mk

# BT config
PRODUCT_COPY_FILES += \
    system/bluetooth/data/main.conf:system/etc/bluetooth/main.conf
