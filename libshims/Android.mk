LOCAL_PATH := $(call my-dir)

#Include the ZTE camera Symbols
include $(CLEAR_VARS)
LOCAL_SHARED_LIBRARIES := liblog libcutils libgui libbinder libutils libsensor
# atomic calls for camera
include $(CLEAR_VARS)
LOCAL_SRC_FILES := \
    atomic/atomic.cpp
LOCAL_MODULE := libshim_atomic
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
include $(BUILD_SHARED_LIBRARY)

# skia
include $(CLEAR_VARS)
LOCAL_SRC_FILES := \
    skia/icu58.c
LOCAL_SHARED_LIBRARIES := libicuuc libicui18n liblog
LOCAL_MODULE := libshim_skia
LOCAL_MODULE_TAGS := optional
include $(BUILD_SHARED_LIBRARY)
