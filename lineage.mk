# Copyright (C) 2014 The CyanogenMod Project
# Copyright (C) 2018 The LineageOS Project
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

$(call inherit-product, device/LYF/zx55q05/full_zx55q05.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_mini_phone.mk)

# Must define platform variant before including any common things
TARGET_BOARD_PLATFORM_VARIANT := msm8939

PRODUCT_NAME := lineage_zx55q05
BOARD_VENDOR := LYF
PRODUCT_DEVICE := zx55q05

PRODUCT_GMS_CLIENTID_BASE := android-zte

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="zx55q05_64-user 5.1.1 LMY47V LS-5504_J144_20160629.165959 release-keys" \
    PRODUCT_NAME=LS-5504 \
    TARGET_DEVICE=LS-5504

BUILD_FINGERPRINT := LYF/zx55q05_64/zx55q05_64:5.1.1/LMY47V/LS-5504_J144_20160629.165959:user/release-keys
