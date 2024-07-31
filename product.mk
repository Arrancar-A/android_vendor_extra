# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
 $(MY_LOCAL_PATH)

# SystemUI Clocks
ifeq ($(INCLUDE_CLOCKS), true)
PRODUCT_PACKAGES += \
    SystemUIClocks-BigNum \
    SystemUIClocks-Calligraphy \
    SystemUIClocks-Flex \
    SystemUIClocks-Growth \
    SystemUIClocks-Inflate \
    SystemUIClocks-Metro \
    SystemUIClocks-NumOverlap 
endif

ifeq ($(INCLUDE_LAWNCHAIR), true)
PRODUCT_PACKAGES += \
    Lawnchair \
    LawnchairOverlay
endif
