#
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
#

DEVICE_PACKAGE_OVERLAYS += device/samsung/i815/overlay

# Include common smdk4210-tab configuration
-include device/samsung/smdk4210-tab/BoardConfigCommon.mk

TARGET_OTA_ASSERT_DEVICE := i815,SCH-I815

TARGET_KERNEL_CONFIG := cyanogenmod_i815_defconfig

BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/samsung/i815/bluetooth
# @daniel added
BOARD_USES_BH1721FVC := true
TARGET_TOROPLUS_RADIO := true

TARGET_INVENSENSE_SENSOR := 60xx
