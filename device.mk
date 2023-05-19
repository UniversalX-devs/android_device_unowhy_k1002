#
# Copyright (C) 2020 The PixelExperience Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Setup dalvik vm configs
$(call inherit-product, frameworks/native/build/phone-xhdpi-2048-dalvik-heap.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 1280

# Camera
PRODUCT_PACKAGES += \
    Snap

# Keylayout
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/mtk-kpd.kl:$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout/mtk-kpd.kl

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.controls.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.software.controls.xml \
    frameworks/native/data/etc/android.software.secure_lock_screen.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.software.secure_lock_screen.xml

# Product characteristics
PRODUCT_CHARACTERISTICS := tablet

# Screen density
PRODUCT_AAPT_CONFIG := xhdpi hdpi mdpi ldpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# Remove unwanted packages
PRODUCT_PACKAGES += \
    RemovePackages

# Ramdisk
PRODUCT_PACKAGES += \
    factory_init.connectivity.rc \
    factory_init.project.rc \
    factory_init.rc \
    init.aee.rc \
    init.ago.rc \
    init.connectivity.rc \
    init.modem.rc \
    init.mt8167.rc \
    init.mt8167.usb.rc \
    init.project.rc \
    init.sensor_1_0.rc \
    meta_init.connectivity.rc \
    meta_init.modem.rc \
    meta_init.project.rc \
    meta_init.rc \
    multi_init.rc \
    fstab.mt8167 \
    ueventd.qcom.rc \

# Soong
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Verity
PRODUCT_SYSTEM_VERITY_PARTITION := /dev/block/platform/bootdevice/by-name/system
PRODUCT_VENDOR_VERITY_PARTITION := /dev/block/platform/bootdevice/by-name/vendor
$(call inherit-product, build/target/product/verity.mk)

# VNDK
PRODUCT_EXTRA_VNDK_VERSIONS := 28
PRODUCT_TARGET_VNDK_VERSION := 28

# OSS Vendor
$(call inherit-product-if-exists, vendor/unowhy/k1002/k1002-vendor.mk)
