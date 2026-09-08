PRODUCT_PACKAGES += \
    amdgpu.ids.redroid \
    libgallium_dri \
    libglapi \
    libEGL_mesa \
    libGLESv1_CM_mesa \
    libGLESv2_mesa \
    vulkan.broadcom \
    vulkan.freedreno \
    vulkan.radeon \
    vulkan.virtio \
    vulkan.lvp \
    vulkan.nouveau \
    uinputd \
    vncserver

# Keep the upstream redroid composer available to products that do not select
# the Floral physical display HAL.
ifneq ($(REDROID_USE_FLORAL_HWC),true)
PRODUCT_PACKAGES += hwcomposer.redroid
endif


# vaapi
PRODUCT_PACKAGES += avcenc h264encode hevcencode jpegenc vp8enc vp9enc vainfo
