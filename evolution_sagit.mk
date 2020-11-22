#
# Copyright (C) 2017-2018 The LineageOS Project
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

# Inherit from sagit device
$(call inherit-product, device/xiaomi/sagit/device.mk)

# Inherit some common Evolution-X stuff.
$(call inherit-product, vendor/evolution/config/common_full_phone.mk)
EVO_MAINTAINER := Android Open Source Project Sagit
EVO_SUPPORT_URL := https://pay.cooluc.com
TARGET_BOOT_ANIMATION_RES := 1080

# GMS
$(call inherit-product-if-exists, vendor/gapps/gapps.mk)
$(call inherit-product-if-exists, vendor/apps/GoogleCamera/config.mk)

# Face Unlock (AOSP-11)
PRODUCT_PACKAGES += \
    FaceUnlockService
PRODUCT_COPY_FILES += \
    vendor/apps/FaceUnlock/prebuilt/product/etc/default-permissions/facesense-default-permissions.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/default-permissions/facesense-default-permissions.xml
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.face.sense_service=true

# OTA
PRODUCT_GENERIC_PROPERTIES += \
    org.evolution.ota.version_code=eleven \
    sys.ota.disable_uncrypt=1
PRODUCT_PACKAGES += \
    Updates

PRODUCT_NAME := evolution_sagit
PRODUCT_DEVICE := sagit
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := MI 6
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="sagit-user 8.0.0 OPR1.170623.027 V9.2.3.0.OCAMIEK release-keys"

BUILD_FINGERPRINT := Xiaomi/sagit/sagit:8.0.0/OPR1.170623.027/V9.2.3.0.OCAMIEK:user/release-keys
