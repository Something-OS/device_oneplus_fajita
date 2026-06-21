# BoardConfig.mk for OnePlus 6T (fajita)
# Replicates standard Android BoardConfig variables.

# Target architecture info
TARGET_ARCH := arm64
TARGET_CPU_ABI := arm64-v8a

# Device identification
BOARD_DEVICE_NAME := fajita

BOARD_KERNEL_DTB := qcom/sdm845-oneplus-fajita.dtb
BOARD_KERNEL_CMDLINE := console=ttyMSM0,115200 earlycon=msm_geni_serial,0xa84000 clk_ignore_unused regulator_ignore_unused pd_ignore_unused msm_drm.dsi_display0=dsi_samsung_s6e3fc2x01_cmd_display: androidboot.hw_version=43 rw rootwait

# Boot Image partition offsets and parameters
BOARD_BOOTIMG_BASE := 0x00000000
BOARD_BOOTIMG_KERNEL_OFFSET := 0x00008000
BOARD_BOOTIMG_RAMDISK_OFFSET := 0x01000000
BOARD_BOOTIMG_SECOND_OFFSET := 0x00f00000
BOARD_BOOTIMG_TAGS_OFFSET := 0x00000100
BOARD_BOOTIMG_PAGESIZE := 4096
BOARD_BOOTIMG_HEADER_VERSION := 0

# Rootfs & storage partitions
BOARD_UFS_PARTITION := /dev/sda17
BOARD_LOOP_OFFSET := 1048576
BOARD_ROOTFS_LABEL := ubuntu-fajita

# Kernel build configuration
BOARD_KERNEL_DIR := kernel/oneplus/sdm845/linux-sdm845
BOARD_KERNEL_DEFCONFIG := kernel/oneplus/sdm845/linux-sdm845/arch/arm64/configs/fajita_defconfig

# User Interface configuration
# Options: androidshell, phosh (Default: androidshell)
BOARD_DEFAULT_UI := androidshell




