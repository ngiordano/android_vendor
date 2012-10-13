$(call inherit-product, device/samsung/skyrocket/full_skyrocket.mk)

# include ParanoidAndroid common configuration
include vendor/cc/config/common_full_phone.mk

# include ParanoidAndroid common configuration
include vendor/cc/config/gsm.mk

PRODUCT_COPY_FILES +=  \
    vendor/cc/prebuilt/hdpi/bootanimation.zip:system/media/bootanimation.zip \
  vendor/cc/prebuilt/pa_hdpi.conf:system/etc/paranoid/properties.conf \
  vendor/cc/prebuilt/pa_hdpi.conf:system/etc/paranoid/backup.conf

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=SGH-I727 TARGET_DEVICE=SGH-I727 BUILD_FINGERPRINT="samsung/SGH-I727/SGH-I727:4.1.1/IMM76D/UCLF6:user/release-keys" PRIVATE_BUILD_DESC="SGH-I727-user 4.1.1 IMM76D UCLF6 release-keys"

PRODUCT_NAME := cc_skyrocket
PRODUCT_DEVICE := skyrocket

GET_VENDOR_PROPS := $(shell vendor/pa/tools/getvendorprops.py $(PRODUCT_NAME))

