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
CORTEX_A15_TYPE := \
	cortex-a15 \
	krait \
	denver
ifneq ($(strip $(ENABLE_GCC_DEFAULTS)),true)
  ifneq (1,$(words $(filter $(LOCAL_DISABLE_TUNE), $(LOCAL_MODULE))))
   ifneq ($(strip $(LOCAL_IS_HOST_MODULE)),true)
    ifneq (,$(filter $(CORTEX_A15_TYPE),$(TARGET_$(combo_2nd_arch_prefix)CPU_VARIANT)))
      ifdef LOCAL_CFLAGS
        LOCAL_CFLAGS += -mcpu=cortex-a15 \
  	    -mtune=cortex-a15 
      else
        LOCAL_CFLAGS := -mcpu=cortex-a15 \
	    -mtune=cortex-a15
      endif
    endif

    ifeq ($(strip $(TARGET_$(combo_2nd_arch_prefix)CPU_VARIANT)),cortex-a9)
      ifdef LOCAL_CFLAGS
        LOCAL_CFLAGS += -mcpu=cortex-a9 \
	    -mtune=cortex-a9
      else
        LOCAL_CFLAGS := -mcpu=cortex-a9 \
	    -mtune=cortex-a9
    endif
  endif

    ifneq (,$(filter cortex-a8 scorpion,$(TARGET_$(combo_2nd_arch_prefix)CPU_VARIANT)))
      ifdef LOCAL_CFLAGS
        LOCAL_CFLAGS += -mcpu=cortex-a8 \
	    -mtune=cortex-a8
      else
        LOCAL_CFLAGS := -mcpu=cortex-a8 \
	    -mtune=cortex-a8
      endif
    endif

    ifeq ($(strip $(TARGET_$(combo_2nd_arch_prefix)CPU_VARIANT)),cortex-a7)
      ifdef LOCAL_CFLAGS
        LOCAL_CFLAGS += -mcpu=cortex-a7 \
	    -mtune=cortex-a7
    else
      LOCAL_CFLAGS := -mcpu=cortex-a7 \
	    -mtune=cortex-a7
      endif
    endif
   endif
  endif
endif
#####

