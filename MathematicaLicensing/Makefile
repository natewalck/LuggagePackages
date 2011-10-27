include /usr/local/share/luggage/luggage.make

TITLE=MathematicaLicensing
REVERSE_DOMAIN=com.company
PACKAGE_VERSION=8.0.1.0
PAYLOAD=pack-MathematicaLicensing

pack-MathematicaLicensing: l_Library
	@sudo mkdir -p ${WORK_D}/Library/Mathematica/Licensing
	@sudo ${CP} mathpass ${WORK_D}/Library/Mathematica/Licensing/
	@sudo chown -R root:admin ${WORK_D}/Library/Mathematica
	@sudo chmod -R 755 ${WORK_D}/Library/Mathematica
