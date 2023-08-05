#################################################
##
#### NeoCat
##
####################### ( github.com/m3tozz ) ###
WORKDIR="/usr/share/neocat"

args=($@)
if [[ "${#args[@]}" == "2" ]]; then
	case ${args[0]} in
		-s|--small)
			NEOCAT_THEME_DIR="$WORKDIR/themes/small/${args[1]}"
			[[ -e "$NEOCAT_THEME_DIR/ascii.txt" ]] && NEOCAT_ASCII="true"
			[[ -e "$NEOCAT_THEME_DIR/config.conf" ]] && NEOCAT_CONFIG="true"
			[[ ! -d "$NEOCAT_THEME_DIR" ]] && echo "Theme \"${args[1]}\" not found in $WORKDIR/themes/small..." && echo "Available Themes: $(ls ${NEOCAT_THEME_DIR%${args[1]}} | xargs echo | sed 's/ /, /g')" && exit
			neofetch ${NEOCAT_CONFIG:+--config $NEOCAT_THEME_DIR/config.conf} ${NEOCAT_ASCII:+--ascii $NEOCAT_THEME_DIR/ascii.txt}
		;;
		-l|--large)
			NEOCAT_THEME_DIR="$WORKDIR/themes/large/${args[1]}"
			[[ -e "$NEOCAT_THEME_DIR/ascii.txt" ]] && NEOCAT_ASCII="true"
			[[ -e "$NEOCAT_THEME_DIR/config.conf" ]] && NEOCAT_CONFIG="true"
			[[ ! -d "$NEOCAT_THEME_DIR" ]] && echo "Theme \"${args[1]}\" not found in $WORKDIR/themes/large..." && echo "Available Themes: $(ls ${NEOCAT_THEME_DIR%${args[1]}} | xargs echo | sed 's/ /, /g')" && exit
			neofetch ${NEOCAT_CONFIG:+--config $NEOCAT_THEME_DIR/config.conf} ${NEOCAT_ASCII:+--ascii $NEOCAT_THEME_DIR/ascii.txt}
		;;
		*)
			echo "Wrong usage..."
		;;
	esac
else
	echo "Missing parameters..."
fi
