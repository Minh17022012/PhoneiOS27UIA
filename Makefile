ARCHS = arm64 arm64e
TARGET := iphone:clang:latest:15.0
THEOS_PACKAGE_SCHEME = roothide

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = PhoneiOS26UI

PhoneiOS26UI_FILES = Tweak.x
PhoneiOS26UI_CFLAGS = -fobjc-arc
PhoneiOS26UI_FRAMEWORKS = UIKit QuartzCore

include $(THEOS_MAKE_PATH)/tweak.mk
