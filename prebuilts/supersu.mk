PRODUCT_PACKAGES += SuperSU

$(call inherit-product, $(SM_VENDOR)/prebuilts/system/bin/supersu.mk)
$(call inherit-product, $(SM_VENDOR)/prebuilts/system/etc/supersu.mk)
$(call inherit-product, $(SM_VENDOR)/prebuilts/system/etc/init.d/supersu.mk)

# Check for arm or arm64
ifeq ($(strip $(LOCAL_ARCH)),arm)
  $(call inherit-product, $(SM_VENDOR)/prebuilts/system/lib/armeabi-v7a/supersu.mk)
  $(call inherit-product, $(SM_VENDOR)/prebuilts/system/xbin/armv7-a/supersu.mk)
endif

ifeq ($(strip $(LOCAL_ARCH)),arm64)
  $(call inherit-product, $(SM_VENDOR)/prebuilts/system/lib/arm64/supersu.mk)
  $(call inherit-product, $(SM_VENDOR)/prebuilts/system/xbin/arm64/supersu.mk)
endif
