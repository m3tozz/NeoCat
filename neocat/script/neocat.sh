########################################
# Made By M3TOZZ                       #
# https://m3tozz.github.io             #
########################################
# https://github.com/m3tozz/NeoCat.git #
# https://m3tozz.github.io/NeoCat      #
########################################

# NeoCat Version
    version='NeoCat- 1.2.8'

#Colors
    red='\e[1;31m'
    yellow='\e[1;33m'
    blue='\e[1;34m'
    tp='\e[0m'
    green='\e[0;32m'
    bgreen='\033[1;32m'

# Blink
    blink='\e[5m'

if ! command -v neofetch
then
    	clear
    	echo -e "\033[1;31m
NeoFetch Not Found!\033[1;33m
To use NeoCat, you must first download NeoFetch :)

\033[1;31mNeoFetch Installation:
\033[1;36m
Debian or Ubuntu using APT
→ sudo apt install neofetch
\033[1;32m
Installing Neofetch in Arch Linux is easy as well
→ sudo pacman -S neofetch
\033[1;35m
You can install Neofetch on RHEL-based distributions using DNF
→ sudo dnf install neofetch

\033[1;91m${blink}Press CTRL+C To Exit
    	\033[0m"
    	sleep 99999
fi
clear
banner(){
echo -e '\033[1;36m
⠀⠀⠀⢠⣾⣷⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⣰⣿⣿⣿⣿⣷⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⢰⣿⣿⣿⣿⣿⣿⣷⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⢀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣤⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣤⣄⣀⣀⣤⣤⣶⣾⣿⣿⣿⡷
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠁
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠁⠀
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠏⠀⠀⠀
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠏⠀⠀⠀⠀    \033[0;31m    _   _             _____      _  \033[1;36m 
⣿⣿⣿⡇⠀⡾⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠁⠀⠀⠀⠀⠀    \033[0;31m   | \ | |           / ____|    | | \033[1;36m 
⣿⣿⣿⣧⡀⠁⣀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀    \033[0;31m   |  \| | ___  ___ | |     __ _| |_ \033[1;36m
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⠉⢹⠉⠙⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀    \033[0;31m   | . ` |/ _ \/ _ \| |    / _` | __|\033[1;36m
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣀⠀⣀⣼⣿⣿⣿⣿   ⠀          \033[0;31m | |\  |  __/ (_) | |___| (_| | |_ \033[1;36m 
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠋⠀⠀⠀⠀⠀⠀⠀⠀    \033[0;31m   |_| \_|\___|\___/ \_____\__,_|\__|\033[1;36m
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠛⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀    \033[0;36m    NeoFetch Theme Pack.\033[1;36m 
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠛⠀⠤⢀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⣿⣿⣿⣿⠿⣿⣿⣿⣿⣿⣿⣿⠿⠋⢃⠈⠢⡁⠒⠄⡀⠈⠁⠀⠀⠀⠀⠀⠀⠀
⣿⣿⠟⠁⠀⠀⠈⠉⠉⠁⠀⠀⠀⠀⠈⠆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀                                       
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀                                       
'
echo -e '
\e[1;34m[01]\e[0;32mSmall Themes \e[1;35m[02]\e[0;32mLarge Themes\e[1;34m \033[0;33m[C]\e[0;32mCommunity-Themes \e[1;31m[A]\e[0;32mAbout \e[1;31m[B]\e[0;32mBackup \e[1;31m[x]\e[0;32mExit
'
        echo -ne "\e[1;31mm3tozz\033[0;36m@\033[1;33mneocat\n\e \033[0;36m↳\033[0m " ; read islem
}




banner
if [[ $islem == 1 || $islem == 01 ]]; then
	clear
	cd Small-Themes/
	bash start.sh

elif [[ $islem == 2 || $islem == 02 ]]; then
	clear
	cd Large-Themes/
	bash start.sh
 elif [[ $islem == c || $islem == C ]]; then
    clear
    echo -e '\033[0;33mTo add your own neofetch configuration to the NeoCat community,'
    echo -e '\033[0;31mAdd your own configuration at https://github.com/m3tozz/neocat-community-themes'
    echo -e 'and submit a Pull Request..\e[0m'
    echo -e "\e[3m\e[1;34mThis folder is currently empty\e[0m"
    echo -e "$red ${blink}                Press CTRL+C To Exit $tp"
	sleep 99999
 elif [[ $islem == a || $islem == A ]]; then
	clear
echo -e '
    _   _             ____      _   
   | \ | | ___  ___  / ___|__ _| |_ 
   |  \| |/ _ \/ _ \| |   / _` | __|NeoFetch Theme Pack
   | |\  |  __/ (_) | |__| (_| | |_ 
   |_| \_|\___|\___/ \____\__,_|\__|                                  
'
    echo -e "$blue##########################################################$tp"
    echo -e "    Create by           ":" $red M3TOZZ$tp"
    echo -e "    Github              ":" $red https://github.com/m3tozz$tp"
    echo -e "    Instagram           ":" $red @textzuhree$tp"
    echo -e "    Version             ":" $red ${version} $tp"
    echo -e "$blue##########################################################$tp"
    echo -e "$red ${blink}                Press CTRL+C To Exit $tp"
	sleep 99999
elif [[ $islem == b || $islem == B ]]; then
    clear
    echo -e "\033[0;31mBacking Up...\033[1;36m"
    cd
    mkdir NeoCat-Backup
    cd NeoCat-Backup
    mkdir -p Backup-$(date +%Y-%m-%d-%H:%M:%S)  
    cp -r /home/$USER/.config/neofetch Backup-$(date +%Y-%m-%d-%H:%M:%S)
    cd Backup-$(date +%Y-%m-%d-%H:%M:%S)
    clear
    echo -e "\033[31m Backed Up!\033[0m"
    pwd
    cd ..
    echo -e "$red ${blink}                Press CTRL+C To Exit $tp"
    sleep 99999
elif [[ $islem == x || $islem == X ]]; then
	clear
echo -e "\033[0m GoodBye."
	exit 1
else
	echo -e '\033[36;40;1m Wrong transaction number!'	
fi
# metinzuhre
