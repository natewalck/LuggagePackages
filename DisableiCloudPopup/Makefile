include /usr/local/share/luggage/luggage.make

TITLE=DisableiCloud
REVERSE_DOMAIN=com.Company
PACKAGE_VERSION=1.0.2
PAYLOAD=\
	pack-com.apple.SetupAssistant.plist\
	pack-script-postflight

pack-com.apple.SetupAssistant.plist: l_System_Library_User_Template_Non_Localized_Preferences
	@sudo ${CP} com.apple.SetupAssistant.plist ${WORK_D}/System/Library/User\ Template/Non_localized/Library/Preferences/
