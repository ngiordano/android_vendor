$(call inherit-product, device/samsung/galaxysmtd/full_galaxysmtd.mk)

# Inherit common product files.
$(call inherit-product, vendor/tp/config/common_phone.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/tp/config/gsm.mk)

# Inherit Aries-common overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/tp/overlay/aries-common

PRODUCT_COPY_FILES +=  \
    vendor/tp/prebuilt/hdpi/bootanimation.zip:system/media/bootanimation.zip \
    vendor/tp/prebuilt/common/etc/paranoid/pa_hdpi.conf:system/etc/paranoid/properties.conf \
    vendor/tp/prebuilt/common/etc/paranoid/pa_hdpi.conf:system/etc/paranoid/backup.conf

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=GT-I9000 TARGET_DEVICE=GT-I9000 BUILD_FINGERPRINT=samsung/GT-I9000/GT-I9000:2.3.5/GINGERBREAD/XXJVT:user/release-keys PRIVATE_BUILD_DESC="GT-I9000-user 2.3.5 GINGERBREAD XXJVT release-keys"

PRODUCT_DEVICE := galaxysmtd
PRODUCT_NAME := tp_galaxysmtd
PRODUCT_BRAND := samsung
PRODUCT_MODEL := GT-I9000

GET_VENDOR_PROPS := $(shell vendor/tp/tools/getvendorprops.py $(PRODUCT_NAME))
