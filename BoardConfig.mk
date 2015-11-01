#
# Copyright (C) 2014 The CyanogenMod Project
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

-include device/htc/msm8916-common/BoardConfigCommon.mk

DEVICE_PATH := device/htc/a31ul

TARGET_SPECIFIC_HEADER_PATH := $(DEVICE_PATH)/include

# Kernel
ifneq ($(FORCE_32_BIT),true)
TARGET_KERNEL_CONFIG := a31ul-64_defconfig
else
TARGET_KERNEL_CONFIG := a31ul_defconfig
endif

KERNEL_TOOLCHAIN_PREFIX:=$(ANDROID_BUILD_TOP)/prebuilts/gcc/linux-x86/arm/arm-eabi-4.7/bin/arm-eabi-

BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth

# Camera
USE_DEVICE_SPECIFIC_CAMERA := true

# CMHW
#BOARD_HARDWARE_CLASS += $(DEVICE_PATH)/cmhw/src

# CPU
TARGET_CPU_CORTEX_A53 := true

# GPS
TARGET_NO_RPC := true

# Lights
TARGET_PROVIDES_LIBLIGHT := true

# NFC
BOARD_NFC_CHIPSET := pn547

# Partitions
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_CACHEIMAGE_PARTITION_SIZE := 335544320
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2684354560
BOARD_USERDATAIMAGE_PARTITION_SIZE := 4429185024

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/fstab.qcom

BOARD_SEPOLICY_DIRS += \
    device/htc/a31ul/sepolicy

BOARD_SEPOLICY_UNION += \
    file.te \
    system_server.te \
    file_contexts

TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop

# inherit from the proprietary version
-include vendor/htc/a31ul/BoardConfigVendor.mk
