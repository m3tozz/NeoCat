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

# Define Constants.
export APP="NeoCat" 		# Project Name
export CWD="${PWD}"			# Current Work Directory
export BASENAME="${0##*/}"	# Base Name of This Script


# Functions.
help() {
	echo -e "Wrong usage, there is 3 arguments for ${BASENAME}\n
\t${BASENAME} --install: it's install's the ${APP} project on your distrubution.
\t${BASENAME} --uninstall: it's uninstall's the ${APP} project on your distrubution.
\t${BASENAME} --shell: run the ${APP} project without installing it in your distribution.
\t${BASENAME} --backup: back up your own neofetch configuration.
\t${BASENAME} --version: show the version.
\t${BASENAME} --help: show this page.
"

}

neocat:version() {
echo "$version"
}

neocat:backup() {
bash ./backup.sh
}

neocat:install() {
sudo make install
clear
echo -e "\033[1;31m ${APP} has been uploaded to your distribution!\033[0m"
exit
}

neocat:uninstall() {
sudo make uninstall
clear
echo -e "\033[1;31m ${APP} has been removed to your distribution!\033[0m"
exit
}

help() {
	echo -e "	 
--install: it's install's the ${APP} project on your distrubution.
--uninstall: it's uninstall's the ${APP} project on your distrubution.
--shell: run the ${APP} project without installing it in your distribution.
--backup: back up your own neofetch configuration.
--version: show the version.
--help: show this page."
}


shell(){
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
→ sudo dnf install neofetch"
exit 1
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
\e[1;34m[01]\e[0;32mSmall Themes \e[1;35m[02]\e[0;32mLarge Themes\e[1;34m \e[1;31m[A]\e[0;32mAbout \e[1;31m[x]\e[0;32mExit
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
 
elif [[ $islem == x || $islem == X ]]; then
	clear

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
    echo -e "    Instagram           ":" $red @metinzuhree$tp"
    echo -e "    Version             ":" $red ${version} $tp"
    echo -e "$blue##########################################################$tp"
	exit 1
else
	echo -e '\033[36;40;1m Wrong transaction number!'	
fi
}

# Argument Parser.
case "${1,,}" in
	"--install"|"-i")
		neocat:install
	;;
	"--uninstall"|"-u")
		neocat:uninstall
	;;
	"--shell"|"-s")
		shell
	;;
	"--backup"|"-b")
		neocat:backup
	;;
	"--version"|"-v")
		neocat:version
	;;
	*)
		help
	;;
esac
