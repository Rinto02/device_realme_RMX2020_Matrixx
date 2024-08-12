#
# Copyright (C) 2018-2022 ArrowOS
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/non_ab_device.mk)

# Inherit from device makefile
$(call inherit-product, device/realme/RMX2020/device.mk)

# Inherit some common Lineage stuff.
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_RMX2020
PRODUCT_DEVICE := RMX2020
PRODUCT_BRAND := realme
PRODUCT_MODEL := RMX2020
PRODUCT_MANUFACTURER := realme

PRODUCT_SYSTEM_MODEL := RMX2020
PRODUCT_SYSTEM_NAME := RMX2020
PRODUCT_SYSTEM_DEVICE := RMX2020

# PixelOS Additions
TARGET_BOOT_ANIMATION_RES := 720

# Matrixx Stuffs
MATRIXX_BUILD_TYPE := Official
MATRIXX_MAINTAINER := Rinto
MATRIXX_CHIPSET := mt6768
MATRIXX_BATTERY := 5000mAh
MATRIXX_DISPLAY := 720x1600
TARGET_ENABLE_BLUR := true
WITH_GMS := true
TARGET_EXCLUDES_AUDIOFX := true
TARGET_EXCLUDES_AUXIO := true

# Build info
BUILD_FINGERPRINT := "realme/RMX2020/RMX2020:11/RP1A.200720.011/1652239672541:user/release-keys"
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=RMX2020 \
    PRODUCT_NAME=RMX2020 \
    PRIVATE_BUILD_DESC="RMX2020-user 11 RP1A.200720.011 1652239672541 release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-oppo

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)
