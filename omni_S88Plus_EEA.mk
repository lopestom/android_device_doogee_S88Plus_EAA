PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
#$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
#$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Inherit from S88Plus_EEA device
$(call inherit-product, device/doogee/S88Plus_EEA/device.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)
#$(call inherit-product, vendor/twrp/config/gsm.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := S88Plus_EEA
PRODUCT_NAME := omni_S88Plus_EEA
PRODUCT_BRAND := DOOGEE
PRODUCT_MODEL := S88Plus
PRODUCT_MANUFACTURER := DOOGEE
PRODUCT_RELEASE_NAME := DOOGEE S88Plus

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=S88Plus \
    PRODUCT_NAME=S88Plus_EEA \
    PRIVATE_BUILD_DESC="S88Plus_EEA-user 10 QP1A.190711.020 1611208748 release-keys"

BUILD_FINGERPRINT := DOOGEE/S88Plus_EEA/S88Plus:10/QP1A.190711.020/1611208748:user/release-keys

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.build.version.base_os=DOOGEE/S88Plus_EEA/S88Plus:10/QP1A.190711.020/1609406262:user/release-keys
