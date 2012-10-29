$(call inherit-product, device/asus/grouper/full_grouper.mk)

# Inherit common product files.
$(call inherit-product, vendor/tp/config/common_tablet_small.mk)

PRODUCT_PACKAGE_OVERLAYS += vendor/tp/overlay/grouper

PRODUCT_COPY_FILES +=  \
    vendor/tp/prebuilt/nexus7/bootanimation.zip:system/media/bootanimation.zip \
    vendor/tp/prebuilt/common/etc/paranoid/pa_xhdpi.conf:system/etc/paranoid/properties.conf \
    vendor/tp/prebuilt/common/etc/paranoid/pa_xhdpi.conf:system/etc/paranoid/backup.conf

PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=nakasi BUILD_FINGERPRINT=google/nakasi/grouper:4.1.1/JRO03H/405518:user/release-keys PRIVATE_BUILD_DESC="nakasi-user 4.1.1 JRO03H 405518 release-keys" BUILD_NUMBER=405518

PRODUCT_NAME := tp_grouper
PRODUCT_DEVICE := grouper
PRODUCT_BRAND := Google
PRODUCT_MODEL := Nexus 7
PRODUCT_MANUFACTURER := Asus

GET_VENDOR_PROPS := $(shell vendor/tp/tools/getvendorprops.py $(PRODUCT_NAME))
