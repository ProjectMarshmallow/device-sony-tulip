# Copyright (C) 2014 The CyanogenMod Project
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

# Resolution
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Kernel properties
TARGET_KERNEL_CONFIG := cyanogenmod_kanuti_tulip_defconfig

# Assert
TARGET_OTA_ASSERT_DEVICE := E2303,tulip

# Recovery
TARGET_RECOVERY_FSTAB := device/sony/kanuti/rootdir/fstab.kanuti

# Inherit from eagle device
$(call inherit-product, device/sony/tulip/aosp_e2303.mk)

# Inherit from common resources
$(call inherit-product, device/sony/common/resources.mk)

# Inherit CM common stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=D2303 \
    BUILD_FINGERPRINT=Sony/E2303/E2303:5.0/26.1.A.2.167/938651970:user/release-keys \
    PRIVATE_BUILD_DESC="E2303-user 5.0 26.1.A.2.167 938651970 release-keys"

PRODUCT_NAME := cm_tulip
PRODUCT_DEVICE := tulip

