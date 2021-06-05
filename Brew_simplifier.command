#!/bin/bash

echo "To update run: brew update && brew upgrade. To upgrade a specific program do brew upgrade <name>"
echo -en '\033[1mDo you want to install (I) or uninstall (U): \033[0m' 
read -r IorU

if [ "$IorU" == "I" ]; then 
	printf "%s" "What program do you want to install? ⇢ " 
	read -r programname
	echo "";
	brew search $programname 2>&1 | tee /dev/tty; echo ""  

	if ! pgrep -x "brew" > /dev/null
	then
		 echo -en '\033[1mWhich one?: \033[0m'  
		 read -r theprogram 
		 brew install $theprogram
	fi

fi


if [ "$IorU" == "U" ]; then
	printf "%s" "What program do you want to remove? ⇢ " 
	read -r programname
	echo "";
	brew uninstall $programname 

fi


if [[ "$IorU" != 'I' && "$IorU" != 'U' ]]; then
		echo "Sorry. Try again next time."
		sleep 2; exit
fi

