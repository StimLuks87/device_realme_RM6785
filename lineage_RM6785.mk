#
# Copyright (C) 2023-2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/non_ab_device.mk)

# Inherit from device makefile
$(call inherit-product, device/realme/RM6785/device.mk)

# Inherit some common risingOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# RisingOS flags
RISING_BUILDTYPE := Unofficial
PRODUCT_NO_CAMERA := false
WITH_GMS := true
TARGET_CORE_GMS := true
TARGET_CORE_GMS_EXTRAS := true
TARGET_DEFAULT_PIXEL_LAUNCHER := true
TARGET_ENABLE_PIXEL_FEATURES := true
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_ENABLE_BLUR := true
RISING_BATTERY := 5000mAh
RISING_DISPLAY := 1080X2400
RISING_CHIPSET :="Helio G95"
RISING_MAINTAINER :="Luks"

# Build_Prop
PRODUCT_BUILD_PROP_OVERRIDES += \
    RISING_CHIPSET="Helio G95" \
    RISING_MAINTAINER="Luks"

# Device Information
PRODUCT_DEVICE := RM6785
PRODUCT_NAME := lineage_$(PRODUCT_DEVICE)
PRODUCT_BRAND := realme
PRODUCT_MANUFACTURER := $(PRODUCT_BRAND)
PRODUCT_MODEL := RMX2155

PRODUCT_SYSTEM_NAME := RMX2155
PRODUCT_SYSTEM_DEVICE := RMX2155L1

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    PRODUCT_NAME=$(PRODUCT_SYSTEM_NAME) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME) \
    PRIVATE_BUILD_DESC="RMX2155-user 11 RP1A.200720.011 1614320228960 release-keys"

BUILD_FINGERPRINT := "realme/RMX2155/RMX2155:11/RP1A.200720.011/1614320228960:user/release-keys"
PRODUCT_PROPERTY_OVERRIDES := ro.build.fingerprint=$(BUILD_FINGERPRINT)
PRODUCT_GMS_CLIENTID_BASE := android-oppo
