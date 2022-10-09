#!/bin/bash

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
UWhite='\033[4;37m'       # White

echo -e "$Green [!] Compiling file $NC $URed $1 $NC $Green to Binary with name $NC $UYellow $2 $NC"
sleep 1
mkdir outp
shc -f $1
rm $1.x.c ; mv $1.x $2 ; cp $2 outp
(
	rm $2
)



