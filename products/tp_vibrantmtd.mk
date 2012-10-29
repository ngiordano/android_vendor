$(call inherit-product, device/samsung/vibrantmtd/full_vibrantmtd.mk)

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

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=SGH-T959 TARGET_DEVICE=SGH-T959 BUILD_FINGERPRINT=google/soju/crespo:2.3.4/GRJ22/121341:user/release-keys PRIVATE_BUILD_DESC="soju-user 2.3.4 GRJ22 121341 release-keys"

PRODUCT_PACKAGES += \
    Thinkfree

PRODUCT_VERSION_DEVICE_SPECIFIC := Vibrant

PRODUCT_DEVICE := vibrantmtd
PRODUCT_NAME := tp_vibrantmtd
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SGH-T959

GET_VENDOR_PROPS := $(shell vendor/tp/tools/getvendorprops.py $(PRODUCT_NAME))
