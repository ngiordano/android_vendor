$(call inherit-product, device/samsung/n7000/full_n7000.mk)

# Inherit common product files.
$(call inherit-product, vendor/tp/config/common_phone.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/tp/config/gsm.mk)

# SGS2 overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/tp/overlay/n7000

PRODUCT_COPY_FILES +=  \
    vendor/tp/prebuilt/nexus7/bootanimation.zip:system/media/bootanimation.zip \
    vendor/tp/prebuilt/common/etc/paranoid/pa_xhdpi.conf:system/etc/paranoid/properties.conf \
    vendor/tp/prebuilt/common/etc/paranoid/pa_xhdpi.conf:system/etc/paranoid/backup.conf

# Copy n7000 specific prebuilt files
PRODUCT_PACKAGES += \
    Thinkfree

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := n7000
PRODUCT_NAME := tp_n7000
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := GT-N7000

#Set build fingerprint / ID / Prduct Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=GT-N7000 TARGET_DEVICE=GT-N7000 BUILD_FINGERPRINT=samsung/GT-N7000/GT-I9100:4.1.1/JRO03H/ZCLP6:user/release-keys PRIVATE_BUILD_DESC="GT-I9100-user 4.1.1 JRO03H ZCLP6 release-keys"
PRODUCT_RELEASE_NAME := n7000

GET_VENDOR_PROPS := $(shell vendor/tp/tools/getvendorprops.py $(PRODUCT_NAME))
