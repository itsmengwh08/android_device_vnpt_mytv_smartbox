# These two devices are one, they are just renamed and software (one running AOSP and one deeply customized)

# This line inherits common properties from a base device.
# Based on 'ro.board.platform=meson8', this device likely uses an Amlogic chip.
# You might need to adjust this path depending on your specific source tree.
$(call inherit-product, device/amlogic/common/device-base.mk)

# Inherit from the Android Open Source Project's (AOSP) configuration for low-RAM devices.
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_lowram.mk)

# Define basic product properties
PRODUCT_MODEL := vnpt_smb_v2_aml
PRODUCT_BRAND := VNPTTechnology
PRODUCT_NAME := vnpt_smb_v2_aml
PRODUCT_DEVICE := vnpt_smb_v2_aml
PRODUCT_MANUFACTURER := VNPT Technology

# Define additional system properties.
# These properties are taken directly from your build.prop and are formatted for the Makefile.
# The build system will use these to populate the final build.prop file.
PRODUCT_PROPERTY_OVERRIDES += \
    # Build properties
    ro.build.id=VNT002SB \
    ro.build.display.id=VNPTT_SMB_AML_VER2_V1.0.0 \
    ro.build.version.incremental=20170215 \
    ro.build.version.sdk=19 \
    ro.build.version.release=4.4.2 \
    ro.build.type=user \
    ro.build.user=vnpttechnology \
    ro.build.host=ttcn \
    ro.build.tags=test-keys \
    ro.board.platform=meson8 \
    ro.build.characteristics=mbx \
    
    # Hardware and feature-related properties
    ro.sf.lcd_density=240 \
    keyguard.no_require_sim=1 \
    mbx.timeout.enable=false \
    sys.screensaver.enable=true \
    ro.statusbar.widget=false \
    ro.statusbar.button=false \
    ro.statusbar.yearmonthdayweek=false \
    hwui.render_dirty_regions=false \
    persist.sys.ui.hw=true \
    hw.nopm=true \
    hw.nobattery=true \
    hw.nophone=true \
    hw.novibrate=true \
    hw.nogps=true \
    hw.cameras=0 \
    hw.hasethernet=true \
    hw.hasusbcamera=true \
    hw.has.accelerometer=true \
    hw.has.bluetooth=false \
    ro.ethernet.default_on=true \
    ro.config.low_ram=false \
    media.amplayer.low_ram=true \
    ro.screen.has.timeout=false \
    ro.screen.has.brightness=false \
    ro.screen.has.tvout=true \
    ro.platform.has.security=false \
    ro.platform.has.tts=false \
    ro.platform.has.touch=false \
    ro.platform.has.mbxuimode=true \
    ro.platform.has.digitaudio=true \
    ro.platform.has.defaulttvfreq=false \
    ro.hw.ethernet.onboard=true \
    ro.platform.has.cvbsmode=false \
    ro.platform.hdmionly=true \
    ro.
    
