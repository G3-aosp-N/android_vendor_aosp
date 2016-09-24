# AOSP Apps
PRODUCT_PACKAGES += \
    BluetoothExt \
    LatinIME \
    Launcher3 \
    LiveWallpapers \
    LiveWallpapersPicker \
    ThemeInterfacer \
    OTAUpdates \
    Stk \
    masquerade \
    tinymix \
    messaging \
    CellBroadcastReceiver \
    Exchange2

# Extra tools AOSP
PRODUCT_PACKAGES += \
    e2fsck \
    mke2fs \
    tune2fs \
    mount.exfat \
    fsck.exfat \
    mkfs.exfat \
    mkfs.f2fs \
    fsck.f2fs \
    fibmap.f2fs \
    mkfs.ntfs \
    fsck.ntfs \
    mount.ntfs

# Enable Google Assistant.
PRODUCT_PROPERTY_OVERRIDES += \
   ro.opa.eligible_device=true

# World APN list
PRODUCT_COPY_FILES += \
    vendor/aosp/apns-conf.xml:system/etc/apns-conf.xml

# Bootanimation
PRODUCT_COPY_FILES += \
    vendor/aosp/bootanimation.zip:system/media/bootanimation.zip

# BatteryStat apk
PRODUCT_COPY_FILES += \
    vendor/aosp/Turbo.apk:system/priv-app/Turbo.apk

# Substratum Verified
PRODUCT_PROPERTY_OVERRIDES := \
    ro.substratum.verified=true

PRODUCT_PROPERTY_OVERRIDES := \
    ro.opa.eligible_device=true

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Stagefright FFMPEG plugin
PRODUCT_PACKAGES += \
    libffmpeg_extractor \
    libffmpeg_omx \
    media_codecs_ffmpeg.xml

PRODUCT_PROPERTY_OVERRIDES += \
    media.sf.omx-plugin=libffmpeg_omx.so \
    media.sf.extractor-plugin=libffmpeg_extractor.so

# Telephony packages
PRODUCT_PACKAGES += \
    telephony-ext

PRODUCT_BOOT_JARS += \
    telephony-ext

# Custom off-mode charger
ifneq ($(WITH_CM_CHARGER),false)
PRODUCT_PACKAGES += \
    charger_res_images \
    cm_charger_res_images \
    font_log.png \
    libhealthd.cm
endif

# Glove mode
PRODUCT_PACKAGES += \
    DeviceSettings

# include definitions for SDCLANG
include vendor/aosp/sdclang/sdclang.mk
