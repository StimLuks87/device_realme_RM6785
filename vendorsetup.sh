# Cloning required repositories for making rum:

# Vendor
git clone https://github.com/realme-mt6785-devs/proprietary_vendor_realme_RM6785-common -b lineage-21 vendor/realme/RM6785

# Kernel
git clone https://github.com/StimLuks87/android_kernel_realme_mt6785 -b lineage-21 kernel/realme/mt6785

# SEpolicy
git clone https://github.com/LineageOS/android_device_mediatek_sepolicy_vndr -b lineage-21 device/mediatek/sepolicy_vndr

# Hardware
git clone https://github.com/LineageOS/android_hardware_mediatek -b lineage-21 hardware/mediatek

# ViPER4AndroidFX:
git clone https://github.com/StimLuks87/VIPER_apps_ViPER4AndroidFX packages/apps/ViPER4AndroidFX

# Bcr
git clone https://github.com/StimLuks87/vendor_bcr vendor/bcr

# CameraGo
unzip device/realme/RM6785/CameraGo/CameraGo.zip -d device/realme/RM6785/CameraGo && rm device/realme/RM6785/CameraGo/CameraGo.zip

# Make the build faster using ccache
export USE_CCACHE=1
export CCACHE_COMPRESS=1
export CCACHE_EXEC=/usr/bin/ccache
export CCACHE_MAXSIZE=50G

# Disable and stop systemd-oomd service.
systemctl disable --now systemd-oomd
