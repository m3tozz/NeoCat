# NeoCat Updater
remote_url="https://raw.githubusercontent.com/m3tozz/NeoCat/main/neocat.sh"
local_file="$0"
tmp_file=$(mktemp)

curl -s "$remote_url" -o "$tmp_file"

remote_ver=$(grep -E "^ *version=" "$tmp_file" | cut -d"'" -f2)
local_ver=$(grep -E "^ *version=" "$local_file" | cut -d"'" -f2)

rm "$tmp_file"

if [ "$remote_ver" != "$local_ver" ]; then
    echo "new version found: $local_ver → $remote_ver"

    if [ -d ".git" ]; then
        echo "updating... syncing entire repository"
        branch=$(git symbolic-ref --short HEAD 2>/dev/null)
        git fetch origin
        git reset --hard origin/$branch

        echo "update complete. restarting script..."
        chmod +x "$local_file"
        exec "$local_file" "$@"
        exit
    else
        echo -e "\e[1;33m[Warning]\e[0m Git repository not found. Skipping full update."
        echo -e "To update manually, run:\n\e[1;34mgit clone --depth 1 https://github.com/m3tozz/NeoCat.git && cd NeoCat && bash ./neocat.sh --shell\e[0m"
        sleep 2
    fi
fi

# neocat version
version='1.2.9.2' 

# Colors
red='\033[0;31m'
green='\033[0;32m'
yellow='\033[1;33m'
blue='\033[1;34m'
magenta='\033[0;35m'
cyan='\033[0;36m'
tp='\033[0m'  

neocat:version() {
echo "$version"
}

neocat:about() {
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
    echo -e "    Community Server    ":" $red discord.com/invite/sQwYCZer95$tp"
    echo -e "    Version             ":" $red ${version} $tp"
    echo -e "$blue##########################################################$tp"
    exit 1
}

neocat:backup() {
bash ./backup.sh
}

help() {
    echo -e "    
--shell: run the ${APP} .
--backup: back up your own neofetch configuration.
--version: show the version.
--about: about ${APP} project.
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
    git clone https://github.com/m3tozz/neocat-community-themes.git
    clear
    cd neocat-community-themes
    echo -e '\033[0;33mTo add your own neofetch configuration to the NeoCat community,'
    echo -e '\033[0;31mAdd your own configuration at https://github.com/m3tozz/neocat-community-themes'
    echo -e 'and submit a Pull Request..\e[0m'
    echo -e "\033[1;32m Themes Uploaded by Our Community:\033[01;35m"
    ls -d */
    echo -e '\033[0;33mYou need to manually install the themes in this folder into .config/neofetch.\033[0;31m'
    pwd
    echo -e '    \033[0m'
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
    echo -e "    Instagram           ":" $red @textzuhree$tp"
    echo -e "    Version             ":" $red ${version} $tp"
    echo -e "$blue##########################################################$tp"
    exit 1
elif [[ $islem == b || $islem == B ]]; then
bash ./backup.sh
else
    echo -e '\e[1;34m Wrong transaction number!\033[0m'
fi
}

# Argument Parser.
case "${1,,}" in
    "--shell"|"-s")
        shell
    ;;
    "--backup"|"-b")
        neocat:backup
    ;;
    "--about"|"-a")
        neocat:about
    ;;
    "--version"|"-v")
        neocat:version
    ;;
    *)
        help
    ;;
esac
