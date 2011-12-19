include /usr/local/share/luggage/luggage.make

TITLE=LabStats
REVERSE_DOMAIN=com.computerlabsolutions
PACKAGE_VERSION=5.0.11012.15
PAYLOAD=\
		pack-labstats\
		pack-script-preinstall\
		pack-script-postflight\

prepare-files: 
	# Tar up .app files because Make doesn't like bundles or folders
	@sudo mkdir -p ./preparedfiles
	@sudo ${TAR} -cvjf ./preparedfiles/Executable.tar.bz2 -C ./labstats-osxPkg-installer.pkg/Contents/Executable/ . 
	@sudo ${TAR} -cvjf ./preparedfiles/Bundles.tar.bz2 -C ./labstats-osxPkg-installer.pkg/Contents/Bundles/ . 

pack-labstats: prepare-files l_Applications l_Library_Application_Support l_Library_LaunchDaemons l_Library_LaunchAgents 
	# Create the necessary directories for the install
	@sudo mkdir -p ${WORK_D}/Applications/LabStats
	@sudo mkdir -p "${WORK_D}/Library/Application Support/LabStats"
	# Untars the files created in prepare-files section.  Installs Bundles and other files.
	@sudo ${TAR} xjf ./preparedfiles/Executable.tar.bz2 -C ${WORK_D}/Applications/LabStats/
	@sudo ${TAR} xjf ./preparedfiles/Bundles.tar.bz2 -C ${WORK_D}/Applications/LabStats/
	# Fix permissions on the installed files
	@sudo chmod -R 755 ${WORK_D}/Applications/LabStats
	@sudo chmod +x ${WORK_D}/Applications/LabStats/updater.sh
	@sudo chmod -R +x ${WORK_D}/Applications/LabStats/LabStatsUserSpace.app
	# Installs LaunchDaemon and applies proper permissions
	@sudo ${CP} "./labstats-osxPkg-installer.pkg/Contents/Launch Daemon/LabStats.plist" ${WORK_D}/Library/LaunchDaemons
	@sudo chmod 755 ${WORK_D}/Library/LaunchDaemons/LabStats.plist 
	# Installs LaunchAgent and applies proper Permissions
	@sudo ${CP} "./labstats-osxPkg-installer.pkg/Contents/Launch Agent/LabStats.plist" ${WORK_D}/Library/LaunchAgents
	@sudo chmod 755 ${WORK_D}/Library/LaunchAgents/LabStats.plist
	# Installs host.txt config file and corrects permissions on Application Support folder
	@sudo ${CP} "./labstats-osxPkg-installer.pkg/host.txt" "${WORK_D}/Library/Application Support/Labstats"
	@sudo chmod -R 644 "${WORK_D}/Library/Application Support/LabStats"
	@sudo chmod 755 "${WORK_D}/Library/Application Support/LabStats"
