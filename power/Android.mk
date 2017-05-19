LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE_RELATIVE_PATH := hw
LOCAL_PROPRIETARY_MODULE := true
LOCAL_SHARED_LIBRARIES := liblog libcutils libdl
LOCAL_SRC_FILES := power.c metadata-parser.c utils.c list.c hint-data.c

ifeq ($(call is-board-platform-in-list, msm8974), true)
LOCAL_SRC_FILES += power-8974.c
endif

ifneq ($(TARGET_POWERHAL_SET_INTERACTIVE_EXT),)
LOCAL_CFLAGS += -DSET_INTERACTIVE_EXT
LOCAL_SRC_FILES += ../../../../$(TARGET_POWERHAL_SET_INTERACTIVE_EXT)
endif

ifneq ($(TARGET_TAP_TO_WAKE_NODE),)
  LOCAL_CFLAGS += -DTAP_TO_WAKE_NODE=\"$(TARGET_TAP_TO_WAKE_NODE)\"
endif

ifeq ($(TARGET_POWER_SET_FEATURE_LIB),)
  LOCAL_SRC_FILES += power-feature-default.c
else
  LOCAL_STATIC_LIBRARIES += $(TARGET_POWER_SET_FEATURE_LIB)
endif


LOCAL_MODULE := power.g3
LOCAL_MODULE_TAGS := optional
include $(BUILD_SHARED_LIBRARY)
