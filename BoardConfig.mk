# These two devices are the same, just different code names.

# Based on ro.board.platform=meson8, this is a device using an Amlogic chipset.
# We will configure the variables related to this platform.
TARGET_BOARD_PLATFORM := meson8

# CPU architecture
# Based on ro.product.cpu.abi=armeabi-v7a and ro.product.cpu.abi2=armeabi.
# This means that the main architecture is ARMv7-A.
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi

# CPU Type
TARGET_CPU_VARIANT := generic

# Memory
# BOARD_KERNEL_BASE := 0x80000000
# BOARD_KERNEL_PAGESIZE := 2048

# Filesystem
# Configure the size and type of filesystem for the partitions.
BOARD_FLASH_BLOCK_SIZE := 131072 # 128K
BOARD_VOLD_EMMC_SHARES_DEV_PATH := true
BOARD_VOLD_MAX_PARTITIONS := 20

# Kernel Configuration
# Kernel image name
# BOARD_KERNEL_IMAGE_NAME := zImage
# BOARD_KERNEL_CMDLINE := console=ttyS0,115200n8 androidboot.hardware=vnpt_smb_v2_aml

# Bluetooth and Wi-Fi configuration# Bluetooth and Wi-Fi configuration
# Based on wifi.interface=wlan0 and hw.has.bluetooth=false
BOARD_HAVE_WLAN := true
BOARD_WLAN_DEVICE := bcm
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcm
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_bcm

BOARD_HAVE_BLUETOOTH := false

# Recovery
# Configure recovery image.
# BOARD_HAS_NO_SELECT_BUTTON := true
# TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/recovery.fstab

# Other variables
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIO := true

# USB Configuration
# Based on gadget.nand.force_sync=true
BOARD_VBOOT_SUPPORT := true
