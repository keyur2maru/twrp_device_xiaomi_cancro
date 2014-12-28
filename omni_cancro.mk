#
# Copyright 2012 The Android Open Source Project
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
#

# Sample: This is where we'd set a backup provider if we had one
# $(call inherit-product, device/sample/products/backup_overlay.mk)

# Get the prebuilt list of APNs
$(call inherit-product, vendor/omni/config/gsm.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

PRODUCT_PACKAGES += \
    charger_res_images \
    charger

PRODUCT_COPY_FILES += \
    device/xiaomi/cancro/kernel:kernel \
    device/xiaomi/cancro/img_info:img_info

PRODUCT_COPY_FILES += device/xiaomi/cancro/fstab.qcom:recovery/root/fstab.qcom

PRODUCT_NAME := omni_cancro
PRODUCT_DEVICE := cancro
PRODUCT_BRAND := xiaomi
PRODUCT_MANUFACTURER := xiaomi
PRODUCT_MODEL := MI 3W
## Use the latest approved GMS identifiers unless running a signed build
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=Xiaomi/cancro/cancro:4.4.2/KVT49L/KXDMIBE16.0:user/release-keys PRIVATE_BUILD_DESC="cancro-user 4.4.2 KVT49L KXDMIBE16.0 release-keys"

