include /usr/local/share/luggage/luggage.make

TITLE=SerializeAcrobatXPro
REVERSE_DOMAIN=com.Company
PACKAGE_VERSION=1.0.0
PAYLOAD=\
		pack-AdobeProvisioningTool\
		pack-script-postflight


pack-AdobeProvisioningTool: l_private
	@sudo mkdir ${WORK_D}/private/tmp
	@sudo ${CP} -R adobe_provisioning_tool.app ${WORK_D}/private/tmp
	@sudo chown -R root:admin ${WORK_D}/private/tmp/adobe_provisioning_tool.app
	@sudo chmod -R 775 ${WORK_D}/private/tmp/adobe_provisioning_tool.app
