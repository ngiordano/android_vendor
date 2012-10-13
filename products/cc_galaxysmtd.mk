$(call inherit-product, device/samsung/galaxysmtd/full_galaxysmtd.mk)

# include ParanoidAndroid common configuration
include vendor/cc/config/common_full_phone.mk

# include ParanoidAndroid common configuration
include vendor/cc/config/gsm.mk

PRODUCT_COPY_FILES +=  \
    vendor/cc/prebuilt/hdpi/bootanimation.zip:system/media/bootanimation.zip \
    vendor/cc/prebuilt/pa_hdpi.conf:system/etc/paranoid/properties.conf \
    vendor/cc/prebuilt/pa_hdpi.conf:system/etc/paranoid/backup.conf

#Set build fingerprint / ID / Prduct Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=GT-I9000 TARGET_DEVICE=GT-I9000 BUILD_FINGERPRINT=samsung/GT-I9000/GT-I9000:2.3.5/GINGERBREAD/XXJVT:user/release-keys PRIVATE_BUILD_DESC="GT-I9000-user 2.3.5 GINGERBREAD XXJVT release-keys"

PRODUCT_DEVICE := galaxysmtd
PRODUCT_NAME := cc_galaxysmtd
PRODUCT_BRAND := samsung
PRODUCT_MODEL := GT-I9000

GET_VENDOR_PROPS := $(shell vendor/cc/tools/getvendorprops.py $(PRODUCT_NAME))
