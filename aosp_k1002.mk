#
# Copyright (C) 2021 The PixelExperience Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit from k1002 device
$(call inherit-product, device/unowhy/k1002/device.mk)

# Inherit some common PixelExperience stuff.
TARGET_BOOT_ANIMATION_RES := 720
TARGET_FACE_UNLOCK_SUPPORTED := false
TARGET_INCLUDE_LIVE_WALLPAPERS := false
TARGET_INCLUDE_STOCK_ARCORE := false
$(call inherit-product, vendor/aosp/config/common_full_tablet_wifionly.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := aosp_k1002
PRODUCT_DEVICE := k1002
PRODUCT_BRAND := UNOWHY
PRODUCT_MODEL := Y10G001S4M_EEA
PRODUCT_MANUFACTURER := unowhy

PRODUCT_GMS_CLIENTID_BASE := android-google

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="redfin-user 11 RQ3A.210905.001 7511028 release-keys "

BUILD_FINGERPRINT := google/redfin/redfin:11/RQ3A.210905.001/7511028:user/release-keys
