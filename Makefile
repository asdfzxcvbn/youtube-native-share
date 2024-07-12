TARGET := iphone:clang:latest:8.0
INSTALL_TARGET_PROCESSES = YouTube
ARCHS = arm64

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = YouTubeNativeShare

YouTubeNativeShare_FILES = Tweak.x
YouTubeNativeShare_CFLAGS = -fobjc-arc
$(TWEAK_NAME)_LOGOS_DEFAULT_GENERATOR = internal

include $(THEOS_MAKE_PATH)/tweak.mk

# https://github.com/theos/theos/issues/481
SHELL = /usr/bin/bash
