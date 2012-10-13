$(call inherit-product, device/samsung/hercules/full_hercules.mk)

# include ParanoidAndroid common configuration
include vendor/cc/config/common_full_phone.mk

# include ParanoidAndroid common configuration
include vendor/cc/config/gsm.mk

PRODUCT_COPY_FILES +=  \
    vendor/cc/prebuilt/hdpi/bootanimation.zip:system/media/bootanimation.zip \
    vendor/cc/prebuilt/pa_hdpi.conf:system/etc/paranoid/properties.conf \
    vendor/cc/prebuilt/pa_hdpi.conf:system/etc/paranoid/backup.conf

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=SGH-T989 TARGET_DEVICE=SGH-T989 BUILD_FINGERPRINT="samsung/SGH-T989/SGH-T989:4.0.4/IMM76D/UVLH1:user/release-keys" PRIVATE_BUILD_DESC="SGH-T989-user 4.0.4 IMM76D UVLH1 release-keys"

PRODUCT_NAME := cc_hercules
PRODUCT_DEVICE := hercules

GET_VENDOR_PROPS := $(shell vendor/pa/tools/getvendorprops.py $(PRODUCT_NAME))
