#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2018 The LineageOS Project
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

# Inherit from msm8916-common
include device/LYF/msm8916-common/BoardConfigCommon.mk

DEVICE_PATH := device/LYF/zx55q05

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth

# Camera
BOARD_CAMERA_SENSORS := gc0310 hi256 imglib imx132 imx134 imx135 imx214 mt9m114 ov13850_q13v06k ov13850 ov16825 ov2680_5987fhq ov2680_cht852b ov2680 ov2680_zs2p80f1 ov2685 ov2720 ov5645 ov5648_oty5f03 ov5648_p5v18g ov5648_q5v22e ov5670_30010a3 ov5670_q5v41b ov5670_qc700 ov7695 ov8825 ov8858_q8v19w_30 ov8858_q8v19w ov8858 ov8865_q8v18a ov9724 pdafcamif pdaf s5k3l1yx s5k3m2xm S5K4E1_13P1BA s5k5e2_F5E2YAU s5k5e2_SFS5C7597 SKUAA_ST_gc0339 skuab_shinetech_gc0339 SKUAB_ST_s5k4e1 skuf_ov12830_p12v01c skuf_ov5648_p5v23c sp1628 t4kb3
USE_DEVICE_SPECIFIC_CAMERA := true

# Partitions
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x0002000000
BOARD_CACHEIMAGE_PARTITION_SIZE := 0x0010000000
BOARD_PERSISTIMAGE_PARTITION_SIZE := 0x0002000000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x0002000000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x0060000000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x0311bfbe00

#GPS
TARGET_NO_RPC := true
USE_DEVICE_SPECIFIC_GPS := true

# Init
TARGET_LIBINIT_MSM8916_DEFINES_FILE := $(DEVICE_PATH)/init/init_zx55q05.cpp

# Kernel
BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb
BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive
LZMA_RAMDISK_TARGETS := recovery
TARGET_KERNEL_SOURCE := kernel/LYF/zx55q05
TARGET_KERNEL_CONFIG := zx55q05_defconfig

# Properties
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop

# Lights
TARGET_PROVIDES_LIBLIGHT := true

# Recovery
TARGET_RECOVERY_DENSITY := xhdpi
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/fstab.qcom
TARGET_RECOVERY_PIXEL_FORMAT := ABGR_8888

# SELinux
BOARD_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy

# TWRP
ifeq ($(WITH_TWRP),true)
include $(DEVICE_PATH)/twrp.mk
endif

# Widevine
BOARD_WIDEVINE_OEMCRYPTO_LEVEL := 3

# Inherit from proprietary files
include vendor/LYF/zx55q05/BoardConfigVendor.mk
