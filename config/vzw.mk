#Permissions and Lib for Verizon Wireless Apps
PRODUCT_COPY_FILES += \
    vendor/tp/prebuilt/vzw/app/VerizonSSO.apk:system/app/VerizonSSO.apk \
    vendor/tp/prebuilt/vzw/etc/permissions/com.vzw.hardware.ehrpd.xml:system/etc/permissions/com.vzw.hardware.ehrpd.xml \
    vendor/tp/prebuilt/vzw/etc/permissions/com.vzw.hardware.lte.xml:system/etc/permissions/com.vzw.hardware.lte.xml \
    vendor/tp/prebuilt/vzw/etc/permissions/com.vzw.vzwapnlib.xml:system/etc/permissions/com.vzw.vzwapnlib.xml \
    vendor/tp/prebuilt/vzw/lib/libmotricity.so:system/lib/libmotricity.so

