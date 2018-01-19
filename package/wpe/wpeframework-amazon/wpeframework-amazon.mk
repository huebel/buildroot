################################################################################
#
# wpeframework-amazon
#
################################################################################
WPEFRAMEWORK_AMAZON_VERSION = ea46ea101f436a9e5c3f533732a8f9328b6ae388
WPEFRAMEWORK_AMAZON_SITE_METHOD = git
WPEFRAMEWORK_AMAZON_SITE = git@github.com:Metrological/WPEPluginAmazon.git
WPEFRAMEWORK_AMAZON_INSTALL_STAGING = YES
WPEFRAMEWORK_AMAZON_DEPENDENCIES = wpeframework

WPEFRAMEWORK_AMAZON_CONF_OPTS += -DBUILD_REFERENCE=${WPEFRAMEWORK_AMAZON_VERSION}

ifeq ($(BR2_PACKAGE_WPEFRAMEWORK_DEBUG),y)
WPEFRAMEWORK_AMAZON_CONF_OPTS += -DCMAKE_BUILD_TYPE=Debug
endif

$(eval $(cmake-package))
