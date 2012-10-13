$(call inherit-product, device/asus/grouper/full_grouper.mk)

# Inherit some common stuff.
include vendor/cc/config/common_full_hybrid_wifionly.mk)

PRODUCT_COPY_FILES +=  \
    vendor/cc/prebuilt/nexus7/bootanimation.zip:system/media/bootanimation.zip \
    vendor/cc/prebuilt/pa_xhdpi.conf:system/etc/paranoid/properties.conf \
    vendor/cc/prebuilt/pa_xhdpi.conf:system/etc/paranoid/backup.conf

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=nakasi BUILD_FINGERPRINT="google/nakasi/grouper:4.1.1/JRO03D/402395:user/release-keys" PRIVATE_BUILD_DESC="nakasi-user 4.1.1 JRO03D 402395 release-keys"

PRODUCT_NAME := cc_grouper
PRODUCT_DEVICE := grouper
PRODUCT_BRAND := Google
PRODUCT_MODEL := Nexus 7
PRODUCT_MANUFACTURER := Asus

GET_VENDOR_PROPS := $(shell vendor/cc/tools/getvendorprops.py $(PRODUCT_NAME))
