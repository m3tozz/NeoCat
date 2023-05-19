# Made By M3TOZZ
clear
case $1 in

esac
banner(){
echo -e '\033[1;36m⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀                                       ⠀⠀
 _   _             ____      _   
| \ | | ___  ___  / ___|__ _| |_ 
|  \| |/ _ \/ _ \| |   / _` | __|Install-Terminal-Icons
| |\  |  __/ (_) | |__| (_| | |_ 
|_| \_|\___|\___/ \____\__,_|\__|
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀                                       
'

        echo -ne "\e[0;32mInstall Terminal Icons (DroidSansMono-Icons) (Y/N)" ; read islem
}

banner
if [[ $islem == y || $islem == Y ]]; then
	clear
	echo -e "\033[0;31mSetting Up...\033[1;36m"
	mkdir -p ~/.local/share/fonts
	cd ~/.local/share/fonts && curl -fLO https://github.com/ryanoasis/nerd-fonts/raw/HEAD/patched-fonts/DroidSansMono/DroidSansMNerdFont-Regular.otf
	clear
	echo -e "\033[0m Installed"

elif [[ $islem == n || $islem == N ]]; then
	clear
echo -e "\033[0m GoodBye."
	exit 1
 else
	echo -e '\033[36;40;1m Wrong transaction number!\033[0m'	
fi