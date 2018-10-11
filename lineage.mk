# Copyright (C) 2017 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from hwcan device.
$(call inherit-product, device/huawei/hwcan/device.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_hwcan
PRODUCT_DEVICE := hwcan
PRODUCT_BRAND := HUAWEI
PRODUCT_MODEL := NOVA CAN-L11
PRODUCT_MANUFACTURER := HUAWEI

PRODUCT_GMS_CLIENTID_BASE := android-huawei

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="CAN-L11-user 7.0 HUAWEICAN-L11 C432B382 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
    BUILD_FINGERPRINT=HUAWEI/CAN-L11/HWCAN:7.0/HUAWEICAN-L11/C432B382:user/release-keys
