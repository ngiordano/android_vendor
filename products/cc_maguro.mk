$(call inherit-product, device/samsung/maguro/full_maguro.mk)

# include ParanoidAndroid common configuration
include vendor/cc/config/common_full_phone.mk

# include ParanoidAndroid common configuration
include vendor/cc/config/gsm.mk

# include missing proprietaries
PRODUCT_COPY_FILES += \
    vendor/cc/proprietary/maguro/bcm4330.hcd:system/vendor/firmware/bcm4330.hcd \
    vendor/cc/prebuilt/pa_xhdpi.conf:system/etc/paranoid/properties.conf \
    vendor/cc/prebuilt/pa_xhdpi.conf:system/etc/paranoid/backup.conf \
    vendor/cc/prebuilt/xhdpi/bootanimation.zip:system/media/bootanimation.zip

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := maguro
PRODUCT_NAME := cc_maguro
PRODUCT_BRAND := Google
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := Samsung

#Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=yakju BUILD_FINGERPRINT="google/yakju/maguro:4.1.1/JRO03C/398337:user/release-keys" PRIVATE_BUILD_DESC="yakju-user 4.1.1 JRO03C 398337 release-keys"

GET_VENDOR_PROPS := $(shell vendor/cc/tools/getvendorprops.py $(PRODUCT_NAME))

