LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional

LOCAL_SRC_FILES := $(call all-java-files-under, src) \
	src/com/android/emusic/IMediaPlaybackService.aidl

LOCAL_PACKAGE_NAME := Music

LOCAL_PROGUARD_ENABLED := disabled

LOCAL_SDK_VERSION := current

LOCAL_STATIC_JAVA_LIBRARIES += android-support-v4 android-support-v7-cardview android-support-v7-appcompat
LOCAL_RESOURCE_DIR = $(LOCAL_PATH)/res frameworks/support/v7/appcompat/res \
	frameworks/support/v7/cardview/res
LOCAL_AAPT_FLAGS := --auto-add-overlay --extra-packages android.support.v7.cardview

include $(BUILD_PACKAGE)

# Use the folloing include to make our test apk.
include $(call all-makefiles-under,$(LOCAL_PATH))
