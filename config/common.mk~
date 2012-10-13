PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dateformat=MM-dd-yyyy \
    ro.com.android.dataroaming=false

# Backup Tool
PRODUCT_COPY_FILES += \
    vendor/cc/prebuilt/common/bin/backuptool.sh:system/bin/backuptool.sh \
    vendor/cc/prebuilt/common/bin/backuptool.functions:system/bin/backuptool.functions \
    vendor/cc/prebuilt/common/bin/50-cna.sh:system/addon.d/50-cna.sh

# init.d support
PRODUCT_COPY_FILES += \
    vendor/cc/prebuilt/common/etc/init.d/00banner:system/etc/init.d/00banner \
    vendor/cc/prebuilt/common/bin/sysinit:system/bin/sysinit

# userinit support
PRODUCT_COPY_FILES += \
    vendor/cc/prebuilt/common/etc/init.d/90userinit:system/etc/init.d/90userinit

# Compcache/Zram support
PRODUCT_COPY_FILES += \
    vendor/cc/prebuilt/common/etc/init.local.rc:system/etc/init.local.rc \
    vendor/cc/prebuilt/common/bin/compcache:system/bin/compcache \
    vendor/cc/prebuilt/common/bin/handle_compcache:system/bin/handle_compcache

PRODUCT_COPY_FILES +=  \
    vendor/cc/proprietary/supersu/su:system/xbin/su

# Bring in camera effects
PRODUCT_COPY_FILES +=  \
    vendor/cc/prebuilt/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/cc/prebuilt/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Don't export PS1 in /system/etc/mkshrc.
PRODUCT_COPY_FILES += \
    vendor/cc/prebuilt/common/etc/mkshrc:system/etc/mkshrc \
    vendor/cc/prebuilt/common/etc/sysctl.conf:system/bin/sysctl.conf

PRODUCT_COPY_FILES += \
    vendor/cc/prebuilt/common/etc/init.d/00check:system/etc/init.d/00check \
    vendor/cc/prebuilt/common/etc/init.d/01zipalign:system/etc/init.d/01zipalign \
    vendor/cc/prebuilt/common/etc/init.d/02sysctl:system/etc/init.d/02sysctl \
    vendor/cc/prebuilt/common/etc/init.d/03firstboot:system/etc/init.d/03firstboot \
    vendor/cc/prebuilt/common/etc/init.d/05freemem:system/etc/init.d/05freemem \
    vendor/cc/prebuilt/common/etc/init.d/06removecache:system/etc/init.d/06removecache \
    vendor/cc/prebuilt/common/etc/init.d/07fixperms:system/etc/init.d/07fixperms \
    vendor/cc/prebuilt/common/etc/init.d/09cron:system/etc/init.d/09cron \
    vendor/cc/prebuilt/common/etc/init.d/10sdboost:system/etc/init.d/10sdboost \
    vendor/cc/prebuilt/common/etc/init.d/98tweaks:system/etc/init.d/98tweaks \
    vendor/cc/prebuilt/common/etc/init_trigger.disabled:system/etc/init_trigger.disabled \
    vendor/cc/prebuilt/common/etc/liberty.bsh:system/etc/liberty.bsh \
    vendor/cc/prebuilt/common/etc/sysctl.conf:system/etc/sysctl.conf    

PRODUCT_COPY_FILES += \
    vendor/cc/prebuilt/common/etc/cron/cron.conf:system/etc/cron/cron.conf \
    vendor/cc/prebuilt/common/etc/cron/cron.hourly/00drop_caches:system/etc/cron/cron.hourly/00drop_caches \
    vendor/cc/prebuilt/common/etc/cron/cron.daily/00drop_caches:system/etc/cron/cron.daily/00drop_caches \
    vendor/cc/prebuilt/common/etc/cron/cron.weekly/00drop_caches:system/etc/cron/cron.weekly/00drop_caches \
    vendor/cc/prebuilt/common/etc/cron/cron.hourly/01clear_cache:system/etc/cron/cron.hourly/01clear_cache \
    vendor/cc/prebuilt/common/etc/cron/cron.daily/01clear_cache:system/etc/cron/cron.daily/01clear_cache \
    vendor/cc/prebuilt/common/etc/cron/cron.weekly/01clear_cache:system/etc/cron/cron.weekly/01clear_cache 

#paronoid settings
PRODUCT_COPY_FILES += \
    vendor/cc/prebuilt/common/etc/paranoid/backup.conf:system/etc/paranoid/backup.conf \
    vendor/cc/prebuilt/common/etc/paranoid/properties.conf:system/etc/paranoid/properties.conf 

# Required packages
PRODUCT_PACKAGES += \
    Camera \
    Development \
    LatinIME \
    SpareParts \
    Superuser

# Optional packages
PRODUCT_PACKAGES += \
    SoundRecorder \
    Basic \
    HoloSpiralWallpaper \
    MagicSmokeWallpapers \
    NoiseField \
    Galaxy4 \
    LiveWallpapers \
    LiveWallpapersPicker \
    VisualizationWallpapers \
    PhaseBeam 

# Extra Optional packages
PRODUCT_PACKAGES += \
    Trebuchet \
    ParanoidPreferences 

# Extra tools
PRODUCT_PACKAGES += \
    openvpn \
    e2fsck \
    mke2fs \
    tune2fs

PRODUCT_PACKAGE_OVERLAYS += vendor/cc/overlay/dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/cc/overlay/common

# T-Mobile theme engine
include vendor/cc/config/themes_common.mk

PRODUCT_VERSION_MAJOR = 1
PRODUCT_VERSION_MINOR = 3
PRODUCT_VERSION_MAINTENANCE = 0


TARGET_CUSTOM_RELEASETOOL := \
	vendor/cc/tools/squisher

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_DISPLAY_ID=JZO54K

ifdef CNA_NIGHTLY
    PRODUCT_PROPERTY_OVERRIDES += \
        ro.cnaversion=Codename-Android-$(PRODUCT_VERSION_MAJOR)-NIGHTLY-$(shell date +%m%d%Y)
else
    ifdef CNA_RELEASE
        PRODUCT_PROPERTY_OVERRIDES += \
            ro.cnaversion=Codename-Android-$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR).$(PRODUCT_VERSION_MAINTENANCE)$(PRODUCT_VERSION_DEVICE_SPECIFIC)
    else
        PRODUCT_PROPERTY_OVERRIDES += \
            ro.cnaversion=Cookies&Cream-$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR).$(PRODUCT_VERSION_MAINTENANCE)
    #NIGHTLY-$(shell date +%m%d)
    endif
endif

ifdef CNA_NIGHTLY
    PRODUCT_PROPERTY_OVERRIDES += \
        ro.modversion=Codename-Android-$(PRODUCT_VERSION_MAJOR)-NIGHTLY-$(shell date +%m%d%Y)-$(PRODUCT_RELEASE_NAME)
else
    ifdef CNA_RELEASE
        PRODUCT_PROPERTY_OVERRIDES += \
            ro.modversion=Codename-Android-$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR).$(PRODUCT_VERSION_MAINTENANCE)$(PRODUCT_VERSION_DEVICE_SPECIFIC)-$(PRODUCT_RELEASE_NAME)
    else
        PRODUCT_PROPERTY_OVERRIDES += \
            ro.modversion=Cookies&Cream-$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR).$(PRODUCT_VERSION_MAINTENANCE)
    #NIGHTLY-$(shell date +%m%d)
    endif
endif
