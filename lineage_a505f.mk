#
# Copyright (C) 2020-2021 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

## Inherit from generic products, most specific first
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

## Inherit from a505f device
$(call inherit-product, device/samsung/a505f/device.mk)

## Inherit some common lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

## Device identifier, this must come after all inclusions
PRODUCT_DEVICE := a505f
PRODUCT_NAME := lineage_a505f
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A505F
PRODUCT_MANUFACTURER := samsung
PRODUCT_SHIPPING_API_LEVEL := 28

PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_SYSTEM_NAME := OnePlus9
PRODUCT_SYSTEM_DEVICE := OnePlus9

## Use the latest CTS approved build identifiers
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    PRODUCT_NAME=$(PRODUCT_SYSTEM_NAME) \
    PRIVATE_BUILD_DESC="OnePlus9-user 13 TP1A.220905.001 R.107ea31_1-1947f release-keys"

BUILD_FINGERPRINT := OnePlus/OnePlus9/OnePlus9:13/TP1A.220905.001/R.107ea31_1-1947f:user/release-keys
