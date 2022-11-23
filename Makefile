TARGET = iphone:latest:14.0
ARCHS = arm64e

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = LookinLoader 

LookinLoader_FILES = Tweak.xm
LookinLoader_FRAMEWORKS = UIKit
LookinLoader_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"