#!/bin/bash
#################################################
## 
#### NeoCat Setup Script
##
#################################################
CURRDATE="$(date +%Y-%m-%d_%H-%M-%S)"
ORIGIN_URL="m3tozz/neocat"
VERSION="$(git tag | tail -n 1)"

[[ "$(id -u)" != "0" ]] && echo "Please run this script with administrative privilleges..." && exit 1 

. $PWD/src/neocat/colors.conf

banner(){
echo -e "$FG_CYAN
⠀⠀⠀⢠⣾⣷⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⣰⣿⣿⣿⣿⣷⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⢰⣿⣿⣿⣿⣿⣿⣷⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⢀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣤⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣤⣄⣀⣀⣤⣤⣶⣾⣿⣿⣿⡷
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠁
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠁⠀
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠏⠀⠀⠀
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠏⠀⠀⠀⠀    $FG_RED    _   _             _____      _      $FG_CYAN 
⣿⣿⣿⡇⠀⡾⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠁⠀⠀⠀⠀⠀    $FG_RED   | \\ | |           / ____|    | |    $FG_CYAN 
⣿⣿⣿⣧⡀⠁⣀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀    $FG_RED   |  \\\| | ___  ___ | |     __ _| |_  $FG_CYAN
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⠉⢹⠉⠙⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀    $FG_RED   | . \` |/ _ \/ _ \| |    / _\` | __| $FG_CYAN
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣀⠀⣀⣼⣿⣿⣿⣿   ⠀        $FG_RED   | |\  |  __/ (_) | |___| (_| | |_    $FG_CYAN 
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠋⠀⠀⠀⠀⠀⠀⠀⠀    $FG_RED   |_| \_|\___|\___/ \_____\__,_|\__|   $FG_CYAN
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠛⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀    $FG_CYAN   NeoFetch Theme Pack.$FG_CYAN 
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠛⠀⠤⢀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⣿⣿⣿⣿⠿⣿⣿⣿⣿⣿⣿⣿⠿⠋⢃⠈⠢⡁⠒⠄⡀⠈⠁⠀⠀⠀⠀⠀⠀⠀
⣿⣿⠟⠁⠀⠀⠈⠉⠉⠁⠀⠀⠀⠀⠈⠆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀                                       ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀                                       
" $COLOR_RESET
}

banner

installer() {
	[[ ! -n $(command -v neofetch) ]] && echo "Neofetch package is not found..." && exit
	[[ -e /usr/share/neocat/version ]] && echo "NeoCat $(cat /usr/share/neocat/version) is already installed..." && exit
	echo "Installing NeoCat..."
	cp -r $PWD/src/applications/neocat.desktop /usr/share/applications/
	cp -r $PWD/src/icons/neocat.png /usr/share/icons/
	cp -r $PWD/src/neocat /usr/share/
	ln -sf /usr/share/neocat/neocat.sh /usr/local/bin/neocat
	chmod +x /usr/share/neocat/neocat.sh
	echo $VERSION > /usr/share/neocat/version
}

updater() {
	[[ ! -d /usr/share/neocat ]] && echo "NeoCat is not installed..." && exit
	INSTALLED_VERSION="$(cat /usr/share/neocat/version)"
	REMOTE_VERSION="$(curl -fsSL https://api.github.com/repos/$ORIGIN_URL/tags | sort -Vr | head -n 1)"

	IV="$(echo $INSTALLED_VERSION | tr -dc [:digit:])"
	RV="$(echo $REMOTE_VERSION | tr -dc [:digit:])"

	if [[ "$IV" == "$RV" ]]; then
		echo "NeoCat is already installed..."
		exit
	elif [[ "$RV" > "$IV" ]]; then
		echo "NeoCat update is available: $REMOTE_VERSION"
		exit
	elif [[ "$RV" < "$IV" ]]; then
		echo "NeoCat downgrade required..."
		exit
	fi
}

remover() {
	[[ ! -d /usr/share/neocat ]] && echo "NeoCat is not installed..." && exit
	echo "Removing NeoCat..."
	rm -rf /usr/share/applications/neocat.desktop /usr/share/icons/neocat.desktop /usr/share/neocat /usr/local/bin/neocat
}

case $@ in
	-i|--install)
		installer
	;;
	-u|--update)
		updater
	;;
	-r|--remove)
		remover
	;;
	*)
		echo "Unknown parameter"
		echo -e "-i|--install: Install NeoCat"
		echo -e "-u|--update : Update NeoCat "
		echo -e "-r|--remove : Remove NeoCat "
	;;
esac
