#!/bin/bash
 
# This Script will make sure that macs on site get upates from a local server and off site
# they get them from Apple's servers.  This script also turns the firewall on or off depending if
# they are on or off site.
 
 
#This function either adds the on site SU server to the pref file or removes it
function setsu {
	#Reads what the software update server is currently set to
	case "$1" in
		#This deletes the on site SU Server out of the pref file
		0)
		defaults delete /Library/Preferences/com.apple.SoftwareUpdate \CatalogURL
		;;
 
		#This adds the On Site SU Server to the pref file.
		*)
		su=$(defaults read /Library/Preferences/com.apple.SoftwareUpdate \CatalogURL)
			if [ "$su" != "$1" ]
				then
					defaults write /Library/Preferences/com.apple.SoftwareUpdate \CatalogURL "$1"
			fi
		;;
 
	esac
}

function firewall {
	#Reads the current state of the firewall and stores it in variable fw
	fw=$(defaults read /Library/Preferences/com.apple.alf globalstate)
	if [ "$1" != "$fw" ]
		then
			defaults write /Library/Preferences/com.apple.alf globalstate -int $1
			#For Troubleshooting, insert say $1 here
	fi
}
 
 #Determines if resolv.conf exists.  
if test -e /var/run/resolv.conf
	then	
		#This stores the domain line of resolv.conf into variable NETWORK.
		NETWORK=$(awk '/domain/ {print $2}' /var/run/resolv.conf)
		#This case looks at $NETWORK for specific domains and runs commands accordingly
		case "$NETWORK" in
 
		#If on VPN, function firewall turns the firewall on if it isn't already on.
		vpn.company.com)
		firewall 1
		setsu 0
		;;
 
		#On any other company domain, function firewall turns firewall off if it isn't already off.
		*.company.com)
		firewall 0
		setsu "http://YourServer.domain.company.com:8088/index-leopard-snowleopard.merged-1.sucatalog"
		;;
 
		#On any other domain, function firewall turns firewall on if it isn't already on.
		*)
		firewall 1
		setsu 0
		;;
 
		esac
 
	else
		#If no network connection exists, function firewall turns the firewall on if it isn't already on.
		firewall 1	
		setsu 0
 
fi
 
 
