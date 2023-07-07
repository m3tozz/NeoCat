# Made By M3TOZZ
# https://github.com/m3tozz/NeoCat.git
clear

banner(){
echo -e '\033[1;36m
 _   _             ____      _   
| \ | | ___  ___  / ___|__ _| |_ 
|  \| |/ _ \/ _ \| |   / _` | __|Install-Terminal-Icons
| |\  |  __/ (_) | |__| (_| | |_ 
|_| \_|\___|\___/ \____\__,_|\__|
                                     
'

        echo -ne "\e[0;32mInstall Terminal Icons (icons-in-terminal) (Y/N)" ; read islem
}

banner
if [[ $islem == y || $islem == Y ]]; then
	clear
	echo -e "\033[0;31mSetting Up...\033[1;36m"
	git clone https://github.com/sebastiencs/icons-in-terminal.git
	cd icons-in-terminal
	./install.sh
       	sleep 2
	./print_icons.sh
	echo -e "\033[1;31mInstalled! \033[1;36mNow Start A New Terminal\033[0m"

elif [[ $islem == n || $islem == N ]]; then
	clear
echo -e "\033[0m GoodBye."
	exit 1
 else
	echo -e '\033[36;40;1m Wrong transaction number!\033[0m'	
fi
