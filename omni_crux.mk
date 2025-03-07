#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from crux device
$(call inherit-product, device/xiaomi/crux/device.mk)

PRODUCT_DEVICE := crux
PRODUCT_NAME := omni_crux
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi9 Pro 5G
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="crux-user 11 RKQ1.200826.002 V13.0.1.0.RFXCNXM release-keys"

BUILD_FINGERPRINT := Xiaomi/crux/crux:11/RKQ1.200826.002/V13.0.1.0.RFXCNXM:user/release-keys
