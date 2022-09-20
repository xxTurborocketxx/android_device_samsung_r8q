# Inherit common board flags
include device/samsung/sm8250-common/BoardConfigCommon.mk

DEVICE_PATH := device/samsung/r8q

# Platform
TARGET_SPECIFIC_HEADER_PATH += $(DEVICE_PATH)/include

# Assert
TARGET_OTA_ASSERT_DEVICE := r8q

# Kernel
TARGET_KERNEL_CONFIG := vendor/rr8q_eur_open_defconfig

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth/include

# Display
TARGET_SCREEN_DENSITY := 600

# Properties
TARGET_PRODUCT_PROP += $(DEVICE_PATH)/product.prop



# Inherit from the proprietary version
-include vendor/samsung/r8q/BoardConfigVendor.mk