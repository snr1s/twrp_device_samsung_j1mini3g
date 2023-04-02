ifeq ($(TARGET_DEVICE), j1mini3g)

LOCAL_PATH:=$(call my-dir)
include $(call all-makefiles-under, $(LOCAL_PATH))

endif
