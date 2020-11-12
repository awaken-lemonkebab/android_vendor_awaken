# Include librsjni explicitly to workaround GMS issue
PRODUCT_PACKAGES += \
    librsjni

# Awaken Packages
PRODUCT_PACKAGES += \
    CustomDoze \
    StitchImage \
    ThemePicker \
    MatchmakerPrebuilt \
    WallpaperPickerGoogle \
    OmniJaws \
    WeatherIcons \
    TouchGestures

# Custom Overlays
# Settings
PRODUCT_PACKAGES += \
    SystemRavenBlackOverlay \
    SystemUIRavenBlackOverlay \
    SystemDarkGrayOverlay \
    SystemUIDarkGrayOverlay \
    SystemStyleOverlay \
    SystemUIStyleOverlay \
    SystemNightOverlay \
    SystemUINightOverlay \
    SystemAwakenClearOverlay \
    SystemUIAwakenClearOverlay \
    SystemMaterialOceanOverlay \
    SystemUIMaterialOceanOverlay \

# Local Updater
ifneq ($(AB_OTA_PARTITIONS),)
PRODUCT_PACKAGES += \
    LocalUpdater
endif

PRODUCT_PACKAGES += \
     AwakenOverlayStub

# Charger images
PRODUCT_PACKAGES += \
    charger_res_images

-include vendor/awaken/config/overlay.mk

# Google icons mess
PRODUCT_PACKAGES += \
    wellbeingconf \
    googleconf