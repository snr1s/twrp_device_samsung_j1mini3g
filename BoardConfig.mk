DEVICE_PATH:=device/samsung/j1mini3g

ALLOW_MISSING_DEPENDENCIES:=true

TARGET_NO_BOOTLOADER:=true
TARGET_BOOTLOADER_BOARD_NAME:=SC7727SE # WYSI

TARGET_BOARD_PLATFORM:=sc8830
TARGET_BOARD_PLATFORM_GPU:=mali-400mp

TARGET_ARCH:=arm
TARGET_ARCH_VARIANT:=armv7-a-neon
TARGET_CPU_ABI:=armeabi-v7a
TARGET_CPU_ABI2:=armeabi
TARGET_CPU_VARIANT:=cortex-a7

# Some of those flags are generally not needed, but whatever
BOARD_KERNEL_BASE:=0x00000000
BOARD_KERNEL_PAGESIZE:=2048
BOARD_KERNEL_CMDLINE:=console=ttyS1,115200n8
BOARD_KERNEL_OFFSET:=0x00008000
BOARD_KERNEL_TAGS_OFFSET:=0x00000100
BOARD_SECOND_OFFSET:=0x00f00000
BOARD_RAMDISK_OFFSET:=0x01000000
TARGET_PREBUILT_DT:=$(DEVICE_PATH)/dt
BOARD_MKBOOTIMG_ARGS:=--kernel_offset $(BOARD_KERNEL_OFFSET) --tags_offset $(BOARD_KERNEL_TAGS_OFFSET) --second_offset $(BOARD_SECOND_OFFSET) --ramdisk_offset $(BOARD_RAMDISK_OFFSET) --dt $(TARGET_PREBUILT_DT)
BOARD_KERNEL_IMAGE_NAME:=zImage
TARGET_KERNEL_CONFIG:=j1mini3g-dt_defconfig
TARGET_KERNEL_SOURCE:=kernel/samsung/j1mini3g

BOARD_HAS_LARGE_FILESYSTEM:=true
RECOVERY_SDCARD_ON_DATA:=true

TARGET_RECOVERY_PIXEL_FORMAT:=ABGR_8888
TARGET_SCREEN_WIDTH:=480
TARGET_SCREEN_HEIGHT:=800
RECOVERY_GRAPHICS_FORCE_SINGLE_BUFFER:=true

COMMON_COMPILE_FLAGS:=-mtune=cortex-a7 -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CFLAGS+=$(COMMON_COMPILE_FLAGS)
TARGET_GLOBAL_CPPFLAGS+=$(COMMON_COMPILE_FLAGS)

TARGET_RECOVERY_FSTAB:=$(DEVICE_PATH)/recovery.fstab
TARGET_USE_CUSTOM_LUN_FILE_PATH:=/sys/class/android_usb/android0/f_mass_storage/lun/file

TW_HAS_DOWNLOAD_MODE:=true
TW_NO_REBOOT_BOOTLOADER:=true
TW_NO_SCREEN_BLANK:=true
TW_CUSTOM_CPU_TEMP_PATH:=/sys/class/thermal/thermal_zone1/temp
TW_MTP_DEVICE:=/dev/usb_mtp_gadget
