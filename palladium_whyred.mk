#
# Copyright (C) 2018-2019 The LineageOS Project
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
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)

# Inherit some common PalladiumOS stuff.
$(call inherit-product, vendor/palladium/config/common_full_phone.mk)

# PalladiumOS Properties
TARGET_INCLUDE_WIFI_EXT := true
TARGET_GAPPS_ARCH := arm64
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_INCLUDE_LIVE_WALLPAPERS := false
TARGET_INCLUDE_STOCK_ARCORE := true
PALLADIUM_BUILDTYPE := OFFICIAL

# Maintainer & Device Props
PRODUCT_PRODUCT_PROPERTIES += \
    ro.palladiumdevice.maintainer=P.M.SALMAN_KHAN \
    ro.palladiumdevice.cpu=SDM636\
    ro.palladiumdevice.display=5.99 \
    ro.palladiumdevice.displaytype=FULLHD+ \
    ro.palladiumdevice.battery=4000mAh \
    ro.palladiumdevice.camera=12MP+5MP

# Inherit from whyred device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Inherit from custom vendor.
$(call inherit-product, vendor/MiuiCamera/config.mk)

# Device Specfic
PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := whyred
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_NAME := palladium_whyred
PRODUCT_MODEL := Redmi Note 5

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

TARGET_VENDOR_PRODUCT_NAME := whyred

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE="whyred" \
    PRODUCT_NAME="whyred" \
    PRIVATE_BUILD_DESC="redfin-user 11 RQ2A.210405.005 7181113 release-keys"

#Build FP to be picked by both system and vendor
BUILD_FINGERPRINT := "google/redfin/redfin:11/RQ2A.210405.005/7181113:user/release-keys"

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)
