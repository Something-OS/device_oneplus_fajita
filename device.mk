# Product specifications for OnePlus 6T (fajita)
PRODUCT_BRAND := OnePlus
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_MODEL := OnePlus 6T
PRODUCT_NAME := something_fajita
PRODUCT_DEVICE := fajita

# Specify system packages to build for this device
PRODUCT_PACKAGES := androidshell

# Inherit proprietary vendor files
$(call inherit-product, vendor/oneplus/fajita/fajita-vendor.mk)

