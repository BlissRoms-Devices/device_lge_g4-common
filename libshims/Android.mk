# Copyright 2016 The CyanogenMod Project
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

LOCAL_PATH := $(call my-dir)

# LIBCNE SHIM
include $(CLEAR_VARS)
LOCAL_SRC_FILES := libcne_shim.cpp
LOCAL_MODULE := libcne_shim
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_PROPRIETARY_MODULE := true
LOCAL_CFLAGS_arm64 += -DLIBSHIMS_64BIT
include $(BUILD_SHARED_LIBRARY)

# RILD SOCKET SHIM
include $(CLEAR_VARS)
LOCAL_SRC_FILES := rild_socket.c
LOCAL_MODULE := rild_socket
LOCAL_MODULE_TAGS := optional
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_SHARED_LIBRARY)

# QSAP
include $(CLEAR_VARS)
LOCAL_SRC_FILES := libqsap_shim.c
LOCAL_SHARED_LIBRARIES := libqsap_sdk liblog
LOCAL_C_INCLUDES := $(TOP)/system/qcom/softap/sdk
LOCAL_MODULE := libqsap_shim
LOCAL_MODULE_TAGS := optional
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_SHARED_LIBRARY)

# cameraclient
include $(CLEAR_VARS)
LOCAL_SRC_FILES := cameraclient_shim.cpp

LOCAL_MODULE := libshim_cameraclient
LOCAL_MODULE_TAGS := optional
include $(BUILD_SHARED_LIBRARY)

# LIBCAMERA SHIM
include $(CLEAR_VARS)
LOCAL_SRC_FILES := camera.cpp
LOCAL_MULTILIB := 32
LOCAL_MODULE := libcamera_shim
LOCAL_MODULE_TAGS := optional
include $(BUILD_SHARED_LIBRARY)
