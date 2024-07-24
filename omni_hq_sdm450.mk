#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from hq_sdm450 device
$(call inherit-product, device/lenovo/hq_sdm450/device.mk)

PRODUCT_DEVICE := hq_sdm450
PRODUCT_NAME := omni_hq_sdm450
PRODUCT_BRAND := Lenovo
PRODUCT_MODEL := 801LV
PRODUCT_MANUFACTURER := lenovo

PRODUCT_GMS_CLIENTID_BASE := android-lenovo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="hq_sdm450-user 9 PKQ1.181203.001 705 release-keys"

BUILD_FINGERPRINT := Lenovo/Lenovo801LV/801LV:9/PKQ1.181203.001/086_210929:user/release-keys
