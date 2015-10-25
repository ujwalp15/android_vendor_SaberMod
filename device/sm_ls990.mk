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
#
  # Sabermod configs
  TARGET_ARCH := arm
  TARGET_NDK_VERSION := 4.9
  TARGET_SM_AND := 4.9
  TARGET_SM_KERNEL := 4.9
  USE_CLANG_QCOM := true
  USE_CLANG_QCOM_VERBOSE := false
  USE_CLANG_QCOM_POLLY := true
  CLANG_QCOM_COMPILE_ART := false
  CLANG_QCOM_COMPILE_BIONIC := true
  CLANG_QCOM_COMPILE_MIXED := true
  LS990_THREADS := 4
  PRODUCT_THREADS := $(LS990_THREADS)
  LOCAL_STRICT_ALIASING := true
  LOCAL_O3 := true
  export ENABLE_PTHREAD := false
  LOCAL_LTO := true
  LTO_COMPRESSION_LEVEL := 3

GRAPHITE_KERNEL_FLAGS := \
    -floop-parallelize-all \
    -ftree-parallelize-loops=$(PRODUCT_THREADS) \
    -fopenmp

# Extra SaberMod GCC C flags for arch target and Kernel
EXTRA_SABERMOD_GCC_VECTORIZE := \
         -mvectorize-with-neon-quad

ifeq ($(strip $(LOCAL_STRICT_ALIASING)),true)

  # Enable strict-aliasing kernel flags
export CONFIG_ARCH_MSM8974_LS990_STRICT_ALIASING := y

  # Check if something is already set in product/sm_products.mk
  ifndef LOCAL_DISABLE_STRICT_ALIASING
    LOCAL_DISABLE_STRICT_ALIASING := \
      libmmcamera_interface\
      camera.msm8974
  else
    LOCAL_DISABLE_STRICT_ALIASING += \
      libmmcamera_interface\
      camera.msm8974
  endif
endif
