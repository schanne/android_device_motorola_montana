#
# Copyright (C) 2015-2017 The Android Open-Source Project
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

DEVICE_PATH := device/motorola/montana

-include device/motorola/msm8937-common/BoardConfigCommon.mk

TARGET_RECOVERY_FSTAB       := $(DEVICE_PATH)/recovery/root/etc/twrp.fstab

# Partitions
BOARD_FLASH_BLOCK_SIZE              := 131072
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE   := ext4
BOARD_BOOTIMAGE_PARTITION_SIZE      := 16777216    # mmcblk0p37
BOARD_CACHEIMAGE_PARTITION_SIZE     := 268435456   # mmcblk0p52
BOARD_PERSISTIMAGE_PARTITION_SIZE := 33554432      # mmcblk0p30
BOARD_RECOVERYIMAGE_PARTITION_SIZE  := 16879616    # mmcblk0p38
BOARD_SYSTEMIMAGE_PARTITION_SIZE    := 3623878656  # mmcblk0p53
BOARD_USERDATAIMAGE_PARTITION_SIZE  := 26403126784 # mmcblk0p54

# Kernel
TARGET_KERNEL_CONFIG := montana_defconfig
