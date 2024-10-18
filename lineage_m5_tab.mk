#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common AOSP stuff
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_mini_tablet_wifionly.mk)

# Inherit device configuration
$(call inherit-product, $(LOCAL_PATH)/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_BRAND := bananapi
PRODUCT_DEVICE := m5_tab
PRODUCT_GMS_CLIENTID_BASE := android-askey-tv
PRODUCT_MANUFACTURER := bananapi
PRODUCT_MODEL := BPI-M5
PRODUCT_NAME := lineage_m5_tab
PRODUCT_SYSTEM_NAME := m5

PRODUCT_GMS_CLIENTID_BASE := android-droid-tv

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="adt3-user 13 TTT1.230205.001 9565391 release-keys" \
    BuildFingerprint=ADT-3/adt3/adt3:13/TTT1.230205.001/9565391:user/release-keys \
    DeviceProduct=adt3 \
    SystemDevice=m5 \
    SystemName=m5
