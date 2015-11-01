# Copyright (C) 2014 The CyanogenMod Project
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

$(call inherit-product, device/htc/a31ul/full_a31ul.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

PRODUCT_NAME := cm_a31ul
BOARD_VENDOR := htc
PRODUCT_DEVICE := a31ul

TARGET_VENDOR_PRODUCT_NAME := a31ul
TARGET_VENDOR_DEVICE_NAME := a31ul
PRODUCT_BUILD_PROP_OVERRIDES += TARGET_DEVICE=a31ul PRODUCT_NAME=a31ul

## Use the latest approved GMS identifiers unless running a signed build
ifneq ($(SIGN_BUILD),true)
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=htc/a31ul_htc_europe/htc_a31ul:4.4.4/KTU84P/439895.1:user/release-keys \
    PRIVATE_BUILD_DESC="1.02.401.1 CL439895 release-keys"
endif
