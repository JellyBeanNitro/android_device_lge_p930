$(call inherit-product-if-exists, vendor/lge/p930/p930-vendor.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

PRODUCT_TAGS += dalvik.gc.type-precise
$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)

DEVICE_PACKAGE_OVERLAYS += device/lge/p930/overlay

# This device is xhdpi.  However the platform doesn't
# currently contain all of the bitmaps at xhdpi density so
# we do this little trick to fall back to the hdpi version
# if the xhdpi doesn't exist.
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/config/media_profiles.xml:system/etc/media_profiles.xml \
    $(LOCAL_PATH)/config/media_codecs.xml:system/etc/media_codecs.xml \

$(call inherit-product, build/target/product/full.mk)

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/init.rc:root/init.rc \
    $(LOCAL_PATH)/init.iprj.rc:root/init.iprj.rc \
    $(LOCAL_PATH)/init.target.rc:root/init.target.rc \
    $(LOCAL_PATH)/init.iprj.usb.rc:root/init.iprj.usb.rc \
    $(LOCAL_PATH)/ueventd.iprj.rc:root/ueventd.iprj.rc \
    $(LOCAL_PATH)/fstab.iprj:root/fstab.iprj \

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/boot_logo_00000.rle:root/bootimages/boot_logo_00000.rle \
    $(LOCAL_PATH)/prebuilt/init.qcom.sh:root/init.qcom.sh \
    $(LOCAL_PATH)/prebuilt/init.qcom.post_boot.sh:system/etc/init.qcom.post_boot.sh \
    $(LOCAL_PATH)/prebuilt/init.qcom.modem_links.sh:system/etc/init.qcom.modem_links.sh \
    $(LOCAL_PATH)/prebuilt/init.qcom.mdm_links.sh:system/etc/init.qcom.mdm_links.sh \
    $(LOCAL_PATH)/prebuilt/init.qcom.bt.sh:system/etc/init.qcom.bt.sh \

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/charger:root/charger \

## Configs
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/config/vold.fstab:system/etc/vold.fstab \
    $(LOCAL_PATH)/config/thermald.conf:system/etc/thermald.conf \
    $(LOCAL_PATH)/config/audio_policy.conf:system/vendor/etc/audio_policy.conf \
    $(LOCAL_PATH)/config/hosts:system/etc/hosts \
    $(LOCAL_PATH)/config/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    $(LOCAL_PATH)/config/bcmdhd.cal:system/etc/wifi/bcmdhd.cal \
    $(LOCAL_PATH)/config/qosmgr_rules.xml:system/etc/qosmgr_rules.xml \
#    $(LOCAL_PATH)/config/p2p_supplicant.conf:system/etc/wifi/p2p_supplicant.conf \

## Configs
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/config/ats_input.kl:system/usr/keylayout/ats_input.kl \
    $(LOCAL_PATH)/config/synaptics_ts.kl:system/usr/keylayout/synaptics_ts.kl \
    $(LOCAL_PATH)/config/atcmd_virtual_kbd.kl:system/usr/keylayout/atcmd_virtual_kbd.kl \
    $(LOCAL_PATH)/config/ijb_skt-keypad.kl:system/usr/keylayout/ijb_skt-keypad.kl \
    $(LOCAL_PATH)/config/pmic8xxx_pwrkey.kl:system/usr/keylayout/pmic8xxx_pwrkey.kl \
    $(LOCAL_PATH)/config/touch_dev.kl:system/usr/keylayout/touch_dev.kl \
    $(LOCAL_PATH)/config/osp3-input.kl:system/usr/keylayout/osp3-input.kl \
    $(LOCAL_PATH)/config/touch_dev.idc:system/usr/idc/touch_dev.idc \
    $(LOCAL_PATH)/config/osp3-input.idc:system/usr/idc/osp3-input.idc \
	
# Permission files
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:/system/etc/permissions/android.software.live_wallpaper.xml \

PRODUCT_PACKAGES += \
    libFFTEm \
    libmlFIFO \
    libgenlock \
    libmemalloc \
    liboverlay \
    libqdutils \
    libhwcexternal \
    libhwcservice \
    libqdMetaData \
    libtilerenderer \
    libI420colorconvert \
    gralloc.msm8660 \
    hwcomposer.default \
    hwcomposer.msm8660 \
    copybit.msm8660 \
    lights.msm8660 \
    gps.msm8660 \
    libtinyalsa \
    libaudioutils \
    audio.a2dp.default \
    audio.usb.default \
    audio_policy.msm8660 \
    audio.primary.msm8660 \
    power.qcom \
    com.android.future.usb.accessory \

# OMX
PRODUCT_PACKAGES += \
    libstagefrighthw \
    libdivxdrmdecrypt \
    libmm-omxcore \
    libOmxCore \
    libOmxVdec \
    libOmxVenc \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxEvrcEnc \
    libOmxQcelp13Enc \

# OMX Open Source, using only for my build
PRODUCT_PACKAGES += \
    libmmosal \
    libmmparser \
    libASFParserLib \
    libaudcal \
    libacdbloader \
    libacdbmapper \
    libaudioalsa \
    libaudioparsers \
    libOmxAacDec \
    libOmxWmaDec \
    libqc-surfaceflinger \

PRODUCT_PACKAGES += \
    make_ext4fs \
    setup_fs \
	
PRODUCT_PACKAGES += \
    hcitool \
    hciconfig \
    hwaddrs \
    brcm_patchram_plus \
    org.codeaurora.Performance \
    org.codeaurora.Performance.xml \
    libgesture_client \
    libgestureservice \
    gestures.8660 \

PRODUCT_PACKAGES += \
    LiveWallpapers \
    LiveWallpapersPicker \
    MagicSmokeWallpapers \
    VisualizationWallpapers \
    librs_jni \

PRODUCT_PACKAGES += \
    Torch \
    NitroParts \
    LG-Notifications \

# Charger mode
PRODUCT_PACKAGES += \
    charger \
    charger_res_images \

# Common properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=320 \
    mobiledata.interfaces=rmnet_sdio0,rmnet_sdio1 \
    rild.libpath=/system/lib/libril-qc-qmi-1.so \
    ro.vendor.extension_library=/system/lib/libqc-opt.so \
    DEVICE_PROVISIONED=1 \
    ro.telephony.ril_class=LGEQualcommUiccRIL \
    ro.telephony.ril.v3=qcomuiccstack \
    wifi.interface=wlan0 \
    wifi.supplicant_scan_interval=120 \
    debug.sf.hw=1 \
    debug.egl.hw=1 \
    debug.enabletr=true \
    debug.composition.type=dyn \
    dev.pm.dyn_samplingrate=1 \
    persist.sys.usb.config=mtp,adb \
    ro.opengles.version=131072 \
    com.qc.hardware=true \
    ro.bt.bdaddr_path=/data/misc/bd_addr \
    ro.product.camera=lgp930 \
    debug.camera.landscape=true \
    ro.ril.shutdown=true \
    debug.mdpcomp.maxlayer=3 \
    debug.mdpcomp.logs=0 \
    ro.sf.compbypass.enable=1 \
    debug.hwc.dynThreshold=1.9 \
    debug.overlay.initialized=0 \
    ro.hwui.text_cache_width=1536 \
    ro.hwui.text_cache_height=256 \
    ro.hdmi.enable=true \
    hdmi.Landscape=0 \
    dalvik.vm.dexopt-data-only=1 \

ADDITIONAL_DEFAULT_PROPERTIES += \
    ro.secure=0 \
    ro.allow.mock.location=1 \
    ro.debuggable=1 \

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_MANUFACTURER := LGE
PRODUCT_BRAND := lge
PRODUCT_NAME := full_p930
PRODUCT_DEVICE := p930
PRODUCT_MODEL := LG-P930
