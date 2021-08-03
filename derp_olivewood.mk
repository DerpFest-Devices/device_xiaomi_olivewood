#
# Copyright (C) 2021 The Derpfest Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from olivewood device
$(call inherit-product, device/xiaomi/olivewood/device.mk)

# Inherit some derpfest stuff.
$(call inherit-product, vendor/derp/config/common.mk)

# Bootanimation Resolution
TARGET_BOOT_ANIMATION_RES := 1080

# OFFICAL STUFF
TARGET_FACE_UNLOCK_SUPPORTED = true

# Build Status
DERP_BUILDTYPE := Official

# Offline Charging
TARGET_INCLUDE_PIXEL_CHARGER := true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := derp_olivewood
PRODUCT_DEVICE := olivewood
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi 8A Dual
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="olivewood" \
    TARGET_DEVICE="olivewood"

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="redfin-user 11 RQ3A.210705.001 7380771 release-keys"
