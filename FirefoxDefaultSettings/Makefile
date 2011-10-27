include /usr/local/share/luggage/luggage.make

TITLE=FirefoxDefaultSettings
REVERSE_DOMAIN=com.company
PACKAGE_VERSION=1.0.0
PAYLOAD=pack-Library-AppSupport-CCK

pack-Library-AppSupport-CCK: l_Library_Application_Support
	@sudo ${CP} -R ./Mozilla ${WORK_D}/Library/Application\ Support/
	@sudo chmod -R 755 ${WORK_D}/Library/Application\ Support/
