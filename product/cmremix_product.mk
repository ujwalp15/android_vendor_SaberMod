# Copyright (C) 2015 The SaberMod Project
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

# Filter device
ifneq ($(filter %cmremix_hlte,$(TARGET_PRODUCT)),)
  TARGET_DEVICE := cmremix_hlte
endif

ifneq ($(filter %cmremix_hltespr,$(TARGET_PRODUCT)),)
  TARGET_DEVICE := cmremix_hltespr
endif

ifneq ($(filter %cmremix_hltetmo,$(TARGET_PRODUCT)),)
  TARGET_DEVICE := cmremix_hltetmo
endif

ifneq ($(filter %cmremix_hltevzw,$(TARGET_PRODUCT)),)
  TARGET_DEVICE := cmremix_hltevzw
endif

ifneq ($(filter %cmremix_togari,$(TARGET_PRODUCT)),)
  TARGET_DEVICE := cmremix_togari
endif

ifneq ($(filter %cmremix_trltespr,$(TARGET_PRODUCT)),)
  TARGET_DEVICE := cmremix_trltespr
endif

ifneq ($(filter %cmremix_trltetmo,$(TARGET_PRODUCT)),)
  TARGET_DEVICE := cmremix_trltetmo
endif

ifneq ($(filter %cmremix_trlteusc,$(TARGET_PRODUCT)),)
  TARGET_DEVICE := cmremix_trlteusc
endif

ifneq ($(filter %cmremix_trltexx,$(TARGET_PRODUCT)),)
  TARGET_DEVICE := cmremix_trltexx
endif

ifneq ($(filter %cmremix_trltevzw,$(TARGET_PRODUCT)),)
  TARGET_DEVICE := cmremix_trltevzw
endif

ifneq ($(filter %cmremix_falcon,$(TARGET_PRODUCT)),)
  TARGET_DEVICE := cmremix_falcon
endif

ifneq ($(filter %cmremix_titan,$(TARGET_PRODUCT)),)
  TARGET_DEVICE := cmremix_titan
endif

ifneq ($(filter %cmremix_shamu,$(TARGET_PRODUCT)),)
  TARGET_DEVICE := cmremix_shamu
endif

ifneq ($(filter %cmremix_jflteusc,$(TARGET_PRODUCT)),)
  TARGET_DEVICE := cmremix_jflteusc
endif

ifneq ($(filter %cmremix_sprout4,$(TARGET_PRODUCT)),)
  TARGET_DEVICE := cmremix_sprout4
endif

ifneq ($(filter %cmremix_huashan,$(TARGET_PRODUCT)),)
  TARGET_DEVICE := cmremix_huashan
endif

ifneq ($(filter %cmremix_ls990,$(TARGET_PRODUCT)),)
  TARGET_DEVICE := cmremix_ls990
endif

# General ROM strings

# -O3 disabled by default.  To enable it change here to := true,
# or enable in vendor/sm/device/sm_device.mk
export LOCAL_O3 := true
