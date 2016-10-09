LOCAL_PATH := $(call my-dir)

# UPDATE-SuperSU
include $(CLEAR_VARS)
LOCAL_MODULE := UPDATE-SuperSU.zip

ifneq ($(filter viskan blue,$(BOARD_VENDOR_PLATFORM)),)
LOCAL_SRC_FILES := addon.d/UPDATE-SuperSU-systemmode.zip
else
LOCAL_SRC_FILES := addon.d/UPDATE-SuperSU.zip
endif

LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_MODULE_PATH := $(TARGET_OUT)/addon.d
include $(BUILD_PREBUILT)
