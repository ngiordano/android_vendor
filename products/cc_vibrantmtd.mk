$(call inherit-product, device/samsung/vibrantmtd/full_vibrantmtd.mk)

# include ParanoidAndroid common configuration
include vendor/cc/config/common_full_phone.mk

# include ParanoidAndroid common configuration
include vendor/cc/config/gsm.mk

PRODUCT_COPY_FILES +=  \
    vendor/cc/prebuilt/hdpi/bootanimation.zip:system/media/bootanimation.zip \
  vendor/cc/prebuilt/pa_hdpi.conf:system/etc/paranoid/properties.conf \
  vendor/cc/prebuilt/pa_hdpi.conf:system/etc/paranoid/backup.conf

# Build fingerprint / ID / Product name etc.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=SGH-T959 TARGET_DEVICE=SGH-T959 BUILD_FINGERPRINT=Samsung/SGH-T959/SGH-T959/SGH-T959:2.2/FROYO/UVKB5:user/release-keys PRIVATE_BUILD_DESC="SGH-T959-user 2.2 FROYO UVKB5 release-keys"

PRODUCT_DEVICE := vibrantmtd
PRODUCT_NAME := cc_vibrantmtd
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SGH-T959

GET_VENDOR_PROPS := $(shell vendor/cc/tools/getvendorprops.py $(PRODUCT_NAME))
