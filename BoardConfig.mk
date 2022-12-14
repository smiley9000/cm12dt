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

# Inherit from the proprietary version
-include vendor/samsung/j1pop3g/BoardConfigVendor.mk

# Platform
TARGET_ARCH := arm
TARGET_BOARD_PLATFORM := sc8830
TARGET_BOARD_PLATFORM_GPU := mali-400 MP
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a7
TARGET_CPU_SMP := false
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_BOOTLOADER_BOARD_NAME := SC7727S
TARGET_GLOBAL_CFLAGS += -mtune=cortex-a7 -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mtune=cortex-a7 -mfpu=neon -mfloat-abi=softfp
BOARD_VENDOR := samsung

# Config u-boot
TARGET_NO_BOOTLOADER := true

BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1111490560
BOARD_USERDATAIMAGE_PARTITION_SIZE := 2457862144
BOARD_CACHEIMAGE_PARTITION_SIZE := 209715200
BOARD_FLASH_BLOCK_SIZE := 131072
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_HAS_LARGE_FILESYSTEM := true

# RIL
BOARD_RIL_CLASS := ../../../device/samsung/j1pop3g/ril

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
SPRD_WCNBT_CHISET := marlin
BOARD_SPRD_WCNBT_MARLIN := true

BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(PLATFORM_PATH)/configs/bluetooth
BOARD_BLUEDROID_VENDOR_CONF := $(PLATFORM_PATH)/configs/bluetooth/libbt_vndcfg.txt
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/samsung/j1pop3g/bluetooth
# healthd
BOARD_HAL_STATIC_LIBRARIES := libhealthd-vivalto5mve3g.sc8830

# WIFI configs
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
WPA_SUPPLICANT_VERSION      := VER_2_1_DEVEL
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_sprdwl
BOARD_HOSTAPD_DRIVER        := NL80211
BOARD_HOSTAPD_PRIVATE_LIB   := lib_driver_cmd_sprdwl
BOARD_WLAN_DEVICE           := sc2341
WIFI_DRIVER_FW_PATH_PARAM   := "/data/misc/wifi/fwpath"
WIFI_DRIVER_FW_PATH_STA     := "sta_mode"
WIFI_DRIVER_FW_PATH_P2P     := "p2p_mode"
WIFI_DRIVER_FW_PATH_AP      := "ap_mode"
WIFI_DRIVER_MODULE_PATH     := "/system/lib/modules/sprdwl.ko"
WIFI_DRIVER_MODULE_NAME     := "sprdwl"

# Hardware rendering
BOARD_EGL_CFG := device/samsung/j1pop3g/configs/egl.cfg
BOARD_USE_MHEAP_SCREENSHOT := true
BOARD_EGL_WORKAROUND_BUG_10194508 := true
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true
HWUI_COMPILE_FOR_PERF := true
USE_SPRD_HWCOMPOSER := true
USE_OPENGL_RENDERER := true
USE_OVERLAY_COMPOSER_GPU := true
DEVICE_FORCE_VIDEO_GO_OVERLAYCOMPOSER := true
COMMON_GLOBAL_CFLAGS += -DSC8830_HWC

# Resolution
TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 480

# Audio
BOARD_USES_GENERIC_AUDIO := true
BOARD_USES_TINYALSA_AUDIO := true
BOARD_USES_ALSA_AUDIO := false
BUILD_WITH_ALSA_UTILS := false
BOARD_AUDIO_OLD_MODEM := false

# Media
COMMON_GLOBAL_CFLAGS += -DADD_LEGACY_ACQUIRE_BUFFER_SYMBOL
COMMON_GLOBAL_CFLAGS += -DBOARD_CANT_REALLOCATE_OMX_BUFFERS

# Board specific features
#BOARD_USE_VETH := true
#BOARD_SPRD_RIL := true
#BOARD_SAMSUNG_RIL := true
BOARD_USE_SAMSUNG_COLORFORMAT := true
BOARD_NEEDS_MEMORYHEAPION_SPRD := true
COMMON_GLOBAL_CFLAGS += -DSPRD_HARDWARE

# healthd
#BOARD_HAL_STATIC_LIBRARIES := libhealthd.sc8830

# camera configs
USE_CAMERA_STUB := true
BOARD_USE_SPRD_COLORFORMAT := true
#back camera rotation capture
TARGET_BOARD_BACK_CAMERA_ROTATION := false
#front camera rotation capture
TARGET_BOARD_FRONT_CAMERA_ROTATION := false
# camera sensor type
CAMERA_SENSOR_TYPE_BACK := "s5k4h5yc_mipi"
CAMERA_SENSOR_TYPE_FRONT := "s5k5e3yx_mipi"
# select camera 2M,3M,5M,8M
CAMERA_SUPPORT_SIZE := 8M
FRONT_CAMERA_SUPPORT_SIZE := 5M
TARGET_BOARD_CAMERA_SMJ320 := true
TARGET_BOARD_NO_FRONT_SENSOR := false
TARGET_BOARD_CAMERA_FLASH_CTRL := false
#read otp method 1:from kernel 0:from user
TARGET_BOARD_CAMERA_READOTP_METHOD := 1
#face detect
TARGET_BOARD_CAMERA_FACE_DETECT := true
TARGET_BOARD_CAMERA_FD_LIB := omron
#hdr
TARGET_BOARD_CAMERA_HDR_CAPTURE := true
#sensor interface
TARGET_BOARD_BACK_CAMERA_INTERFACE := mipi
TARGET_BOARD_FRONT_CAMERA_INTERFACE := mipi
#select camera zsl cap mode
TARGET_BOARD_CAMERA_CAPTURE_MODE := true
#select camera zsl force cap mode
TARGET_BOARD_CAMERA_FORCE_ZSL_MODE := true
#sprd zsl feature
TARGET_BOARD_CAMERA_SPRD_PRIVATE_ZSL := false
#rotation capture
TARGET_BOARD_CAMERA_ROTATION_CAPTURE := false
#select camera not support autofocus
TARGET_BOARD_CAMERA_NO_AUTOFOCUS_DEV := false
#uv denoise enable
TARGET_BOARD_CAMERA_CAPTURE_DENOISE := false
#y denoise enable
TARGET_BOARD_CAMERA_Y_DENOISE := true
#select continuous auto focus
TARGET_BOARD_CAMERA_CAF := true
TARGET_BOARD_CAMERA_NO_FLASH_DEV := false
#image angle in different project
TARGET_BOARD_CAMERA_ADAPTER_IMAGE := 0
#pre_allocate capture memory
TARGET_BOARD_CAMERA_PRE_ALLOC_CAPTURE_MEM := true
#sc8830g isp ver 0;sc9630 isp ver 1;sp9832a_2h11 isp version 2
TARGET_BOARD_CAMERA_ISP_SOFTWARE_VERSION := 2
#set hal version to 1.0
TARGET_USES_MEDIA_EXTENSIONS := true
TARGET_BOARD_CAMERA_HAL_VERSION := 1.0
#support auto anti-flicker
TARGET_BOARD_CAMERA_ANTI_FLICKER := true
#multi cap memory mode
TARGET_BOARD_MULTI_CAP_MEM := true
#low capture memory
TARGET_BOARD_LOW_CAPTURE_MEM := true
#select the vcm chip driver BU64241GWZ
TARGET_VCM_BU64241GWZ := true
#select mipi d-phy mode(none, phya, phyb, phyab)
TARGET_BOARD_FRONT_CAMERA_MIPI := phyb
TARGET_BOARD_BACK_CAMERA_MIPI := phya
#select ccir pclk src(source0, source1)
TARGET_BOARD_FRONT_CAMERA_CCIR_PCLK := source0
TARGET_BOARD_BACK_CAMERA_CCIR_PCLK := source0
#third lib
TARGET_BOARD_USE_THRID_LIB := true
TARGET_BOARD_USE_THIRD_AWB_LIB_A := true
TARGET_BOARD_USE_ALC_AE_AWB := false
TARGET_BOARD_USE_THIRD_AF_LIB_A := true


# Kernel
TARGET_PREBUILT_KERNEL   := device/samsung/j1pop3g/zImage
TARGET_PREBUILT_DTB      := device/samsung/j1pop3g/dt
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_CMDLINE := console=ttyS1,115200n8 androidboot.selinux=permissive
BOARD_KERNEL_PAGESIZE := 2048
#TARGET_KERNEL_CONFIG := cyanogenmod_j1pop3g_defconfig
#TARGET_KERNEL_SOURCE := kernel/samsung/j1pop3g
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --tags_offset 0x00000100 --dt device/samsung/j1pop3g/dt

# Init
TARGET_NR_SVC_SUPP_GIDS := 24
TARGET_PROVIDES_INIT_RC := true

# Recovery
BOARD_HAS_NO_REAL_SDCARD := true
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"

# Assert
TARGET_OTA_ASSERT_DEVICE := j1pop3g,j110H,J110H,SM-J110H

# SELinux
#BOARD_SEPOLICY_DIRS += device/samsung/j1pop3g/sepolicy
#BOARD_SEPOLICY_UNION :=	\
#	file.te	\
#	file_contexts \
#	seapp_contexts \
#	theme.te \
#	healthd.te \
#	init.te \
#	init_shell.te \
#	installd.te \
#	netd.te \
#	shell.te \
#	system.te \
#	untrusted_app.te \
#	vold.te	\
#	zygote.te

# Use dmalloc() for such low memory devices like us
MALLOC_IMPL := dlmalloc

# Use prebuilt webviewchromium to cut down build time
PRODUCT_PREBUILT_WEBVIEWCHROMIUM := yes

# Enable dex-preoptimization to speed up the first boot sequence
WITH_DEXPREOPT := true
WITH_DEXPREOPT_PIC := true
WITH_DEXPREOPT_COMP := false

# CMHW
BOARD_HARDWARE_CLASS := device/samsung/j1pop3g/cmhw/

# TWRP
RECOVERY_GRAPHICS_USE_LINELENGTH := true
SP1_NAME := "internal_sd"
SP1_BACKUP_METHOD := files
SP1_MOUNTABLE := 1
TW_INTERNAL_STORAGE_PATH := "/data/media/0"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
TW_DEFAULT_EXTERNAL_STORAGE := true
TW_FLASH_FROM_STORAGE := true
TW_NO_REBOOT_BOOTLOADER := true
TW_CUSTOM_CPU_TEMP_PATH := "/sys/devices/platform/sec-thermistor/temperature"
TWHAVE_SELINUX := true
TARGET_RECOVERY_INITRC := device/samsung/j1pop3g/etc/init.rc
TARGET_RECOVERY_FSTAB := device/samsung/j1pop3g/ramdisk/recovery.fstab
TW_HAS_DOWNLOAD_MODE := true
DEVICE_RESOLUTION := 480x800
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_10x18.h\"
-include device/samsung/j1pop3g/modules.mk

# UMS
BOARD_UMS_LUNFILE := "/sys/devices/virtual/android_usb/android0/f_mass_storage/lun/file"
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/virtual/android_usb/android0/f_mass_storage/lun/file"
