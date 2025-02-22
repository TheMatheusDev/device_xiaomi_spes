#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/xiaomi/spes

# Display
TARGET_SCREEN_DENSITY := 440

# HIDL
ODM_MANIFEST_SKUS += k7tn
ODM_MANIFEST_K7TN_FILES := $(DEVICE_PATH)/configs/hidl/manifest_k7tn.xml

# Init
TARGET_INIT_VENDOR_LIB := //$(DEVICE_PATH):init_xiaomi_spes
TARGET_RECOVERY_DEVICE_MODULES := init_xiaomi_spes

# Kernel
TARGET_KERNEL_CONFIG := vendor/spes-perf_defconfig
TARGET_KERNEL_SOURCE := kernel/xiaomi/sm6225

# OTA assert
TARGET_OTA_ASSERT_DEVICE := spes,spesn

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/configs/props/vendor.prop

# Inherit from sm6225-common
include device/xiaomi/sm6225-common/BoardConfigCommon.mk

# Inherit from the proprietary version
include vendor/xiaomi/spes/BoardConfigVendor.mk
