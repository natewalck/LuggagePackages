include /usr/local/share/luggage/luggage.make

TITLE=CrankdInstaller
REVERSE_DOMAIN=com.company.crankdinstaller
PAYLOAD=\
	unpack-pymacadmin-PyMacAdmin.tar.bz2\
	pack-pymacadmin-library\
	pack-usr-local-sbin-crankd.py
	




#use tar -jcvf tarname.tar.bz2 filetotar to tar a directory
unpack-pymacadmin-PyMacAdmin.tar.bz2:
	@sudo ${TAR} xzf PyMacAdmin.tar.bz2

pack-pymacadmin-library: 
	@sudo mkdir -p ${WORK_D}/Library/Application\ Support
	@sudo chown root:admin ${WORK_D}/Library/Application\ Support
	@sudo chmod 775 ${WORK_D}/Library/Application\ Support
	@sudo ${CP} -R ./PyMacAdmin ${WORK_D}/Library/Application\ Support/
	@sudo chmod -R 755 ${WORK_D}/Library/Application\ Support/
