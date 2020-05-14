# Platform
BOARD_VENDOR := samsung
TARGET_BOARD_PLATFORM := exynos5
TARGET_BOARD_PLATFORM_GPU := mali-g76
TARGET_SOC := exynos9820
TARGET_BOOTLOADER_BOARD_NAME := universal9820
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true
TARGET_USES_UEFI := true

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a53
TARGET_CPU_SMP := true

# Secondary Architecture
TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53

# Kernel
BOARD_BOOT_HEADER_VERSION := 1
BOARD_KERNEL_BASE := 0x10000000
# Ignored on exynos, those are set by our bootloader and/or dtb/o
BOARD_KERNEL_CMDLINE := androidboot.selinux=permissive androidboot.selinux=permissive
BOARD_KERNEL_IMAGE_NAME := Image
BOARD_KERNEL_PAGESIZE := 2048
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_CLANG_COMPILE := true
TARGET_KERNEL_CLANG_VERSION := $(shell ls -d prebuilts/clang/host/linux-x86/clang-* | egrep -v 'clang-stable' | xargs -n1 basename | tail -1 | cut -d "-" -f2-)
TARGET_KERNEL_CLANG_PATH := prebuilts/clang/host/linux-x86/clang-$(TARGET_KERNEL_CLANG_VERSION)
TARGET_KERNEL_SOURCE := kernel/samsung/universal9820
TARGET_KERNEL_CONFIG := exynos9820-beyond1lte_defconfig
BOARD_INCLUDE_RECOVERY_DTBO := true
BOARD_PREBUILT_DTBOIMAGE := device/samsung/beyond1lte/prebuilt/dtbo.img
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --tags_offset 0x00000100 --header_version 1

# File systems
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
BOARD_HAS_NO_REAL_SDCARD := true
BOARD_BUILD_SYSTEM_ROOT_IMAGE := true

# TWRP specific build flags
RECOVERY_VARIANT := twrp
ALLOW_MISSING_DEPENDENCIES=true
BOARD_SUPPRESS_SECURE_ERASE := true
TW_Y_OFFSET := 142
TW_H_OFFSET := -142
TW_THEME := portrait_hdpi
RECOVERY_SDCARD_ON_DATA := true
TARGET_RECOVERY_PIXEL_FORMAT := "ABGR_8888"
TW_BRIGHTNESS_PATH := "/sys/class/backlight/panel/brightness"
TW_MAX_BRIGHTNESS := 25500
TW_DEFAULT_BRIGHTNESS := 12800
TW_NO_REBOOT_BOOTLOADER := true
TW_HAS_DOWNLOAD_MODE := true
TW_INCLUDE_NTFS_3G := true
TW_EXCLUDE_SUPERSU := true
TW_EXTRA_LANGUAGES := true
TW_USE_NEW_MINADBD := true
TW_EXCLUDE_TWRPAPP := true

# Release related flags
PLATFORM_VERSION := 10
PLATFORM_SECURITY_PATCH := 2020-04-01

# SHRP flags
SHRP_PATH := device/samsung/beyond1lte
SHRP_MAINTAINER := corsicanu
SHRP_DEVICE_CODE := beyond1lte
SHRP_EDL_MODE := 0
SHRP_EXTERNAL := /external_sd
SHRP_INTERNAL := /sdcard
SHRP_OTG := /usb_otg
SHRP_FLASH := 1
SHRP_CUSTOM_FLASHLIGHT := true
SHRP_FONP_1 := /sys/devices/virtual/camera/flash/rear_flash
SHRP_FONP_2 := 
SHRP_FONP_3 := 
SHRP_FLASH_MAX_BRIGHTNESS := 1
SHRP_REC := /dev/block/platform/13d60000.ufs/by-name/recovery
SHRP_AB := false
SHRP_REC_TYPE := SAR
SHRP_DEVICE_TYPE := A_Only
SHRP_STATUSBAR_RIGHT_PADDING := 40
SHRP_STATUSBAR_LEFT_PADDING := 40
SHRP_EXPRESS := true

# Include
TARGET_SPECIFIC_HEADER_PATH := device/samsung/beyond1lte/include

