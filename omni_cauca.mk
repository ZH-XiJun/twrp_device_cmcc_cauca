#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from cauca device
$(call inherit-product, device/cmcc/cauca/device.mk)

PRODUCT_DEVICE := cauca
PRODUCT_NAME := omni_cauca
PRODUCT_BRAND := CMCC
PRODUCT_MODEL := CMCC C4s
PRODUCT_MANUFACTURER := cmcc

PRODUCT_GMS_CLIENTID_BASE := android-cmcc

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="cauca-user 7.1.1 CAUCXXXXX1000DPX1904020 eng.buildf.20190402.091032 test-keys"

BUILD_FINGERPRINT := CMCC/cauca/cauca:7.1.1/CAUCXXXXX1000DPX1904020/buildf04020910:user/test-keys
