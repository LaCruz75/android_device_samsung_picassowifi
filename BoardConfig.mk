#
# Copyright (C) 2013 The CyanogenMod Project
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

LOCAL_PATH := device/samsung/picassowifi

# Platform
BOARD_VENDOR := samsung
TARGET_BOARD_PLATFORM := exynos5
TARGET_SLSI_VARIANT := cm
TARGET_SOC := exynos5420

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a15
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_CPU_VARIANT := cortex-a15

# Vold
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/class/android_usb/android0/f_mass_storage/lun%d/file

# Bionic
TARGET_USE_QCOM_BIONIC_OPTIMIZATION := true

# Bionic Tuning
ARCH_ARM_USE_MEMCPY_ALIGNMENT := true
BOARD_MEMCPY_ALIGNMENT := 64
BOARD_MEMCPY_ALIGN_BOUND := 32768

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_BLUEDROID_VENDOR_CONF := $(LOCAL_PATH)/bluetooth/libbt_vndcfg.txt
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(LOCAL_PATH)/bluetooth

# Bootloader
TARGET_OTA_ASSERT_DEVICE := picassowifi

# Camera
BOARD_CAMERA_SNUMINTS := 23
BOARD_NEEDS_MEMORYHEAPION := true
#BOARD_USE_SAMSUNG_CAMERAFORMAT_NV21 := true
COMMON_GLOBAL_CFLAGS += -DCAMERA_SNUMINTS=$(BOARD_CAMERA_SNUMINTS)
COMMON_GLOBAL_CFLAGS += -DDISABLE_HW_ID_MATCH_CHECK
COMMON_GLOBAL_CFLAGS += -DSAMSUNG_CAMERA_HARDWARE
COMMON_GLOBAL_CFLAGS += -DSAMSUNG_DVFS

# Force the screenshot path to CPU consumer
COMMON_GLOBAL_CFLAGS += -DFORCE_SCREENSHOT_CPU_PATH

BOARD_CAMERA_FRONT_ROTATION=0
BOARD_CAMERA_BACK_ROTATION=0

# Lights
#lacruz
TARGET_PROVIDES_LIBLIGHT := true


# Kernel
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048
TARGET_KERNEL_CONFIG := cyanogenmod_picassowifi_defconfig
TARGET_KERNEL_SOURCE := kernel/samsung/exynos5420
TARGET_KERNEL_CUSTOM_TOOLCHAIN := arm-eabi-4.8

# Charging mode
BOARD_CHARGER_SHOW_PERCENTAGE := true
BOARD_CHARGER_ENABLE_SUSPEND := true
BOARD_CHARGING_MODE_BOOTING_LPM := /sys/class/power_supply/battery/batt_lp_charging
BOARD_BATTERY_DEVICE_NAME := battery
BACKLIGHT_PATH := "/sys/class/backlight/panel/brightness"

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := universal5420
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

# Build the platform with Clang
USE_CLANG_PLATFORM_BUILD := true

# FIMG2D
BOARD_USES_SKIA_FIMGAPI := true

# Graphics
USE_OPENGL_RENDERER := true
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3

# Renderscript
BOARD_OVERRIDE_RS_CPU_VARIANT_32 := cortex-a53

# Exynos display
BOARD_USES_VIRTUAL_DISPLAY := true

# HWCServices
BOARD_USES_HWC_SERVICES := true

# Include path
TARGET_SPECIFIC_HEADER_PATH := $(LOCAL_PATH)/include

# Hardware
BOARD_HARDWARE_CLASS += device/samsung/picassowifi/cmhw
BOARD_HARDWARE_CLASS += hardware/samsung/cmhw

# Keymaster
BOARD_USES_TRUST_KEYMASTER := true

# Init
TARGET_NR_SVC_SUPP_GIDS := 20

# Media
COMMON_GLOBAL_CFLAGS += -DUSE_NATIVE_SEC_NV12TILED # use format from fw/native
COMMON_GLOBAL_CFLAGS += -DWIDEVINE_PLUGIN_PRE_NOTIFY_ERROR

# OpenMAX Video
#BOARD_USE_STOREMETADATA := true
#BOARD_USE_METADATABUFFERTYPE := true
#BOARD_USE_S3D_SUPPORT := true
#BOARD_USE_DMA_BUF := true
#BOARD_USE_ANB_OUTBUF_SHARE := true
#BOARD_USE_GSC_RGB_ENCODER := true
#BOARD_USE_IMPROVED_BUFFER := true
#BOARD_USE_CSC_HW := false
#BOARD_USE_H264_PREPEND_SPS_PPS := false
#BOARD_USE_QOS_CTRL := false
#BOARD_USE_VP8ENC_SUPPORT := true
#BOARD_USE_ENCODER_RGBINPUT_SUPPORT := true
#BOARD_USE_DUALDPB_MODE := true
BOARD_USE_STOREMETADATA := true
BOARD_USE_METADATABUFFERTYPE := true
BOARD_USE_DMA_BUF := true
BOARD_USE_ANB_OUTBUF_SHARE := true
BOARD_USE_IMPROVED_BUFFER := true
BOARD_USE_NON_CACHED_GRAPHICBUFFER := true
BOARD_USE_GSC_RGB_ENCODER := true
BOARD_USE_CSC_HW := true
BOARD_USE_QOS_CTRL := false
BOARD_USE_S3D_SUPPORT := true
BOARD_USE_VP8ENC_SUPPORT := true

# Sensors
# TARGET_NO_SENSOR_PERMISSION_CHECK := true

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 8388608
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 10485760
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2527068160
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12532580352
BOARD_FLASH_BLOCK_SIZE := 4096

WITH_DEXPREOPT_BOOT_IMG_ONLY ?= false
WITH_DEXPREOPT := false
DONT_DEXPREOPT_PREBUILTS := true

# Disable journaling on system.img to save space
BOARD_SYSTEMIMAGE_JOURNAL_SIZE := 0

# Unified PowerHAL
TARGET_POWERHAL_VARIANT := samsung

# Radio
BOARD_PROVIDES_LIBRIL := false

# Use these flags if the board has a ext4 partition larger than 2gb
BOARD_HAS_LARGE_FILESYSTEM := true

# Recovery
COMMON_GLOBAL_CFLAGS += -DNO_SECURE_DISCARD
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_23x41.h\"
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/ramdisk/fstab.universal5420
TARGET_RECOVERY_PIXEL_FORMAT := BGRA_8888
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_RECOVERY_SWIPE := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true

# Samsung Gralloc
TARGET_SAMSUNG_GRALLOC_EXTERNAL_USECASES := true

# Scaler
BOARD_USES_SCALER := true
BOARD_USES_GSC_VIDEO := true

# SELinux
BOARD_SEPOLICY_DIRS += \
	device/samsung/picassowifi/sepolicy

# SurfaceFlinger
BOARD_USES_SYNC_MODE_FOR_MEDIA := true


# Webkit
ENABLE_WEBGL := true

# WFD
BOARD_USES_WFD := true

# Wifi
BOARD_HAVE_SAMSUNG_WIFI          := true
BOARD_WLAN_DEVICE                := bcmdhd
WPA_SUPPLICANT_VERSION           := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER             := NL80211
BOARD_HOSTAPD_PRIVATE_LIB        := lib_driver_cmd_bcmdhd
WIFI_BAND                        := 802_11_ABG

WIFI_DRIVER_FW_PATH_PARAM        := "/sys/module/dhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_STA          := "/system/etc/wifi/bcmdhd_sta.bin"

WIFI_DRIVER_FW_PATH_AP           := "/system/etc/wifi/bcmdhd_apsta.bin"
WIFI_DRIVER_NVRAM_PATH_PARAM     := "/sys/module/dhd/parameters/nvram_path"
WIFI_DRIVER_NVRAM_PATH           := "/system/etc/wifi/nvram_net.txt"

# inherit from the proprietary version
-include vendor/samsung/picassowifi/BoardConfigVendor.mk