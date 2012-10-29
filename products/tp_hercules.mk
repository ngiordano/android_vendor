$(call inherit-product, device/samsung/hercules/full_hercules.mk)

# Inherit common product files.
$(call inherit-product, vendor/tp/config/common_phone.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/tp/config/gsm.mk)

# skyrocket overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/tp/overlay/hercules

PRODUCT_COPY_FILES +=  \
    vendor/tp/prebuilt/hdpi/bootanimation.zip:system/media/bootanimation.zip \
    vendor/tp/prebuilt/common/etc/paranoid/pa_hdpi.conf:system/etc/paranoid/properties.conf \
    vendor/tp/prebuilt/common/etc/paranoid/pa_hdpi.conf:system/etc/paranoid/backup.conf

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=SGH-T989 TARGET_DEVICE=SGH-T989 BUILD_FINGERPRINT="samsung/SGH-T989/SGH-T989:4.0.4/IMM76D/UVLH1:user/release-keys" PRIVATE_BUILD_DESC="SGH-T989-user 4.0.4 IMM76D UVLH1 release-keys"

GET_VENDOR_PROPS := $(shell vendor/tp/tools/getvendorprops.py $(PRODUCT_NAME))
