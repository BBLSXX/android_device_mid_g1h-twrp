#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product-if-exists, $(SRC_TARGET_DIR)/product/gsi_keys.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product-if-exists, vendor/twrp/config/common.mk)

$(call inherit-product, device/mid/G1H/device.mk)

PRODUCT_DEVICE := G1H
PRODUCT_NAME := twrp_G1H
PRODUCT_BRAND := HRA
PRODUCT_MODEL := G1H
PRODUCT_MANUFACTURER := mid
PRODUCT_RELEASE_NAME := G1H

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="sfg1a8sa_1h10_ac-user 10 QP1A.190711.020 03212 release-keys"
BUILD_FINGERPRINT := alps/full_tb8321p2_bsp/tb8321p2_bsp:10/QP1A.190711.020/mp1V9332:userdebug/release-keys
