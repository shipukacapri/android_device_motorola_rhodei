#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
TARGET_SUPPORTS_OMX_SERVICE := false
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from rhodei device
$(call inherit-product, device/motorola/rhodei/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_rhodei
PRODUCT_DEVICE := rhodei
PRODUCT_MANUFACTURER := motorola
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g62 5G

#Axion Stuff
TARGET_ENABLE_BLUR := true
AXION_CAMERA_REAR_INFO := 50,8,2
AXION_CAMERA_FRONT_INFO := 16
AXION_MAINTAINER := Shipu
AXION_PROCESSOR := SM6375

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="rhodei_g-user 13 T1SSIS33.1-75-7-16 3686b-585454 release-keys" \
    BuildFingerprint=motorola/rhodei_g/rhodei:13/T1SSIS33.1-75-7-16/3686b-585454:user/release-keys \
    DeviceProduct=rhodei_g
