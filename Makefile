TARGET := iphone:clang:latest:11.0
PACKAGE_VERSION = 1.11.7
INSTALL_TARGET_PROCESSES = YouTube
ARCHS = arm64

API_URL = "https://returnyoutubedislikeapi.com"
TWEAK_NAME = "Return YouTube Dislike"

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = YouTubeDislikesReturn
$(TWEAK_NAME)_FILES = Settings.x API.x Tweak.x
$(TWEAK_NAME)_CFLAGS = -fobjc-arc -DAPI_URL="\"${API_URL}\"" -DTWEAK_NAME="\"${TWEAK_NAME}\""

include $(THEOS_MAKE_PATH)/tweak.mk
