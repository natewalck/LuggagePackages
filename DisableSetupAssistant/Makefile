include /usr/local/share/luggage/luggage.make

TITLE=DisableSetupAssistant
REVERSE_DOMAIN=com.Company
PAYLOAD=pack-applesetupdone
PACKAGE_VERSION=1.0.1

pack-applesetupdone: l_var_db
	@sudo ${CP} .AppleSetupDone ${WORK_D}/var/db
