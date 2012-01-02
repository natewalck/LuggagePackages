include /usr/local/share/luggage/luggage.make

TITLE=CrankdInstaller
REVERSE_DOMAIN=com.company.crankdinstaller
PACKAGE_VERSION=1.0.0
PAYLOAD=\
	unpack-pymacadmin-PyMacAdmin.tar.bz2\
	pack-pymacadmin-library\
	pack-usr-local-sbin-crankd.py
	




#use tar -jcvf tarname.tar.bz2 filetotar to tar a directory
unpack-pymacadmin-PyMacAdmin.tar.bz2:
	@sudo ${TAR} xzf PyMacAdmin.tar.bz2

pack-pymacadmin-library: l_Library_Application_Support 
	@sudo mkdir -p ${WORK_D}/Library/Application\ Support/crankd
	@sudo ${CP} -R ./PyMacAdmin ${WORK_D}/Library/Application\ Support/crankd/
	@sudo chmod -R 755 ${WORK_D}/Library/Application\ Support/crankd
