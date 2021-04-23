DEBUG = 0
FINALPACKAGE = 1
ARCHS = arm64 arm64e

TARGET := iphone:clang:latest:14.0
INSTALL_TARGET_PROCESSES = MobileNotes

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = BringBackTheTexture

BringBackTheTexture_FILES = Tweak.x
BringBackTheTexture_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
