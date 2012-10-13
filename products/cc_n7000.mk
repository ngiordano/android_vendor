$(call inherit-product, device/samsung/n7000/full_n7000.mk)

# include ParanoidAndroid common configuration
include vendor/cc/config/common_full_phone.mk

# include ParanoidAndroid common configuration
include vendor/cc/config/gsm.mk

PRODUCT_COPY_FILES +=  \
    vendor/cc/prebuilt/nexus7/bootanimation.zip:system/media/bootanimation.zip \
    vendor/cc/prebuilt/pa_xhdpi.conf:system/etc/paranoid/properties.conf \
    vendor/cc/prebuilt/pa_xhdpi.conf:system/etc/paranoid/backup.conf

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := n7000
PRODUCT_NAME := cc_n7000
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := GT-N7000

#Set build fingerprint / ID / Prduct Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=GT-N7000 TARGET_DEVICE=GT-N7000 BUILD_FINGERPRINT=samsung/GT-N7000/GT-N7000:4.0.3/IML74K/ZCLP6:user/release-keys PRIVATE_BUILD_DESC="GT-N7000-user 4.0.3 IML74K ZCLP6 release-keys"

GET_VENDOR_PROPS := $(shell vendor/cc/tools/getvendorprops.py $(PRODUCT_NAME))
