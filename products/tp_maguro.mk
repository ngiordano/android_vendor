$(call inherit-product, device/samsung/maguro/full_maguro.mk)

# Inherit common product files.
$(call inherit-product, vendor/tp/config/common_phone.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/tp/config/gsm.mk)

PRODUCT_PACKAGE_OVERLAYS += vendor/tp/overlay/tuna
PRODUCT_PACKAGE_OVERLAYS += vendor/tp/overlay/maguro

# include missing proprietaries
PRODUCT_COPY_FILES += \
    vendor/tp/proprietary/maguro/bcm4330.hcd:system/vendor/firmware/bcm4330.hcd \
    vendor/tp/prebuilt/common/etc/paranoid/pa_xhdpi.conf:system/etc/paranoid/properties.conf \
    vendor/tp/prebuilt/common/etc/paranoid/pa_xhdpi.conf:system/etc/paranoid/backup.conf \
    vendor/tp/prebuilt/xhdpi/bootanimation.zip:system/media/bootanimation.zip

PRODUCT_COPY_FILES += \
    vendor/tp/prebuilt/tuna/vold.fstab:system/etc/vold.fstab

# Maguro specific packages
PRODUCT_PACKAGES += \
    Thinkfree

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := maguro
PRODUCT_NAME := tp_maguro
PRODUCT_BRAND := Google
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := Samsung

#Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=yakju BUILD_FINGERPRINT="google/yakju/maguro:4.1.1/JRO03C/398337:user/release-keys" PRIVATE_BUILD_DESC="yakju-user 4.1.1 JRO03C 398337 release-keys"

GET_VENDOR_PROPS := $(shell vendor/tp/tools/getvendorprops.py $(PRODUCT_NAME))

