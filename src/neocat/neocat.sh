#################################################
##
#### NeoCat
##
####################### ( github.com/m3tozz ) ###
CURRDATE="$(date +%Y-%m-%d_%H-%M-%S)"
WORKDIR="/usr/share/neocat"
largethemes=($(ls $WORKDIR/themes/large))
smallthemes=($(ls $WORKDIR/themes/small))

. $WORKDIR/colors.conf



neohelp() {
	echo -e "Usage: $0 <args>\n
-i|--install <variant> <themename> : Install theme in $HOME/.config/neofetch
-l|--list                          : List themes
-s|--shell                         : Open NeoCat shell
-v|--version                       : Show NeoCat version
-h|--help                          : View this message
"
}



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



themelist() {
	case $@ in
		all)
			printf "%-20s | %-20s\n" "Large Themes" "Small Themes"
			echo "==========================================="
			[[ "${#largethemes[@]}" -gt "${#smallthemes[@]}" ]] && maxlength="${#largethemes[@]}" || maxlength="${#smallthemes[@]}"
			for a in $(seq 0 $(( $maxlength - 1 ))); do
				printf "%-20s | %-20s\n" "${largethemes[$a]}" "${smallthemes[$a]}"
			done
		;;
	esac

}



shellmenu2() {
	case $@ in
		large)
			for a in $(seq -w 1 ${#largethemes[@]}); do
				echo -e "${FG_CYAN}[$a]${COLOR_RESET}: ${FG_GREEN}${largethemes[$(( 10#$a - 1 ))]}${COLOR_RESET}"
			done
			echo -e "\n${FG_RED}m3tozz${FG_CYAN}@${FG_YELLOW}neocat${COLOR_RESET}"
			read -p "❯ " input
			
			NEOCAT_THEME_DIR="$WORKDIR/themes/large/${largethemes[$(( 10#$input - 1 ))]}"
			[[ -e "$NEOCAT_THEME_DIR/ascii.txt" ]] && NEOCAT_ASCII="true"
			[[ -e "$NEOCAT_THEME_DIR/config.conf" ]] && NEOCAT_CONFIG="true"
			neofetch ${NEOCAT_CONFIG:+--config $NEOCAT_THEME_DIR/config.conf} ${NEOCAT_ASCII:+--ascii $NEOCAT_THEME_DIR/ascii.txt}
		;;
		small)
			for a in $(seq -w 1 ${#smallthemes[@]}); do
				echo -e "${FG_CYAN}[$a]${COLOR_RESET}: ${FG_GREEN}${smallthemes[$(( 10#$a - 1 ))]}${COLOR_RESET}"
			done
			echo -e "\n${FG_RED}m3tozz${FG_CYAN}@${FG_YELLOW}neocat${COLOR_RESET}"
			read -p "❯ " input

			NEOCAT_THEME_DIR="$WORKDIR/themes/small/${smallthemes[$(( 10#$input - 1 ))]}"
			[[ -e "$NEOCAT_THEME_DIR/ascii.txt" ]] && NEOCAT_ASCII="true"
			[[ -e "$NEOCAT_THEME_DIR/config.conf" ]] && NEOCAT_CONFIG="true"
			neofetch ${NEOCAT_CONFIG:+--config $NEOCAT_THEME_DIR/config.conf} ${NEOCAT_ASCII:+--ascii $NEOCAT_THEME_DIR/ascii.txt}
		;;
	esac
}



shellmenu1() {
	echo -e "${FG_BLUE}[01]${COLOR_RESET}: ${FG_GREEN}Small Themes${COLOR_RESET}
${FG_MAGENTA}[02]${COLOR_RESET}: ${FG_GREEN}Large Themes${COLOR_RESET}
${FG_RED}[03]${COLOR_RESET}: ${FG_GREEN}Exit${COLOR_RESET}

${FG_RED}m3tozz${FG_CYAN}@${FG_YELLOW}neocat${COLOR_RESET}"
	read -p "❯ " input
	case $input in
		*1)
			shellmenu2 small
			exit
		;;
		*2)
			shellmenu2 large
			exit
		;;
		*3|x)
			exit
		;;
	esac
}



case $1 in
	-s|--shell)
		while true; do
			clear
			banner
			shellmenu1
		done
	;;
	-i|--install)
		if [[ ! -n "$2" ]] || [[ ! -n "$3" ]]; then
			echo "Missing -i|--install parameters"
			neohelp
		fi
		[[ ! -d "$WORKDIR/themes/$2/$3" ]] && echo "$WORKDIR/themes/$2/$3 does not exist..." && exit 1
		cp -r $HOME/.config/neofetch{,-backup_$CURRDATE}
		cp -r $WORKDIR/themes/$2/$3 $HOME/.config/neofetch
	;;
	-l|--list)
		themelist all
	;;
	-v|--version)
		banner
		[[ -e $WORKDIR/version ]] && echo "Version: $(cat $WORKDIR/version)" || echo "version: $(git tag | tail -n 1)"
	;;
	*)
		neohelp
	;;
esac
