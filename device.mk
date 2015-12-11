#
# Copyright (C) 2015 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

$(call inherit-product, device/samsung/smdk4210-tab/device.mk)
$(call inherit-product-if-exists, vendor/samsung/i815/vendor.mk)

# Set preferred size for assets
PRODUCT_AAPT_PREF_CONFIG := tvdpi

# use init.smdk4210-lte.rc for i815
PRODUCT_COPY_FILES += \
	device/samsung/smdk4210-tab/rootdir/init.smdk4210-lte.rc:root/init.smdk4210.rc

# GPS
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/configs/etc/gps.conf:system/etc/gps.conf

# Radio
$(call inherit-product, build/target/product/telephony.mk)

PRODUCT_COPY_FILES += \
	device/samsung/smdk4210-tab/configs/etc/old-apns-conf.xml:system/etc/old-apns-conf.xml \
	frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml

# Samsung symbols
PRODUCT_PACKAGES += \
	libsamsung_symbols

# extra packages
PRODUCT_PACKAGES += \
	libsecril-client
