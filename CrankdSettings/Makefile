include /usr/local/share/luggage/luggage.make

TITLE=CrankdSettings
REVERSE_DOMAIN=com.company.crankdsettings
PAYLOAD=\
	pack-Library-Preferences-com.company.crankd.plist\
	l_Library_Scripts_Company_crankd\
	pack-Library-LaunchDaemons-crankdlaunchd.plist




l_Library_Scripts_Company_crankd:
	@sudo mkdir -p ${WORK_D}/Library/Scripts/company/crankd
	@sudo chown root:admin ${WORK_D}/Library/Scripts/company/crankd
	@sudo chmod 775 ${WORK_D}/Library/Scripts/company/crankd
	@sudo ${CP} NetworkSwitch.sh ${WORK_D}/Library/Scripts/company/crankd
