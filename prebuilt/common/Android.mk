LOCAL_PATH := $(call my-dir)

# UPDATE-SuperSU
include $(CLEAR_VARS)
LOCAL_MODULE := UPDATE-SuperSU.zip

ifeq ($(BOARD_VENDOR),sony)
LOCAL_SRC_FILES := etc/UPDATE-SuperSU-2.52.zip
else
LOCAL_SRC_FILES := etc/UPDATE-SuperSU.zip
endif

LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_MODULE_PATH := $(TARGET_OUT)/addon.d
include $(BUILD_PREBUILT)
