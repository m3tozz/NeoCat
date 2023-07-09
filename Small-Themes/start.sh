# Made By Eminkrkt
clear

banner(){
echo -e '\033[0;36m
\033[0;31m  _   _             _____      _   
\033[0;33m | \ | |           / ____|    | |            
\033[0;34m |  \| | ___  ___ | |     __ _| |_ 
\033[0;35m | . ` |/ _ \/ _ \| |    / _` | __|\033[0;31mSmall-Themes
\033[0;36m | |\  |  __/ (_) | |___| (_| | |_ 
\033[0;31m |_| \_|\___|\___/ \_____\__,_|\__|⠀⠀⠀⠀⠀⠀⠀                                       
\e[1;34m[01]\e[0;32mLoki-Ranger \e[1;35m[02]\e[0;32mFast-Snail \e[1;31m[03]\e[0;32mSpongeBob \033[1;33m[04]\e[0;32mDino-Rex
\033[1;33m[05]\e[0;32mSmile \e[1;36m[06]\e[0;32mCrocodile \e[1;35m[07]\e[0;32mOWL \e[1;34m[08]\e[0;32mMotorCycle \e[1;36m[09]\e[0;32mSnake
\e[1;34m[10]\e[0;32mTux \e[1;35m[11]\e[0;32mPalm \e[1;36m[12]\e[0;32mAlien \033[1;33m[13]\e[0;32mTruck \e[1;35m[14]\e[0;32mCocktail
\033[1;33m[15]\e[0;32mSmall-Buntu \e[1;35m[16]\e[0;32mPhone \e[1;34m[17]\e[0;32mDuck \e[1;36m[18]\e[0;32mSimba \033[1;33m[19]\e[0;32mDinosaurs
\e[1;36m[20]\e[0;32mSheriff \e[1;34m[21]\e[0;32mGiraffe \033[1;33m[22]\e[0;32mDog \e[1;35m[23]\e[0;32mKittyCat
\033[1;31m[x]Exit [00]Menu [D]Default-Theme
'
        echo -ne "\e[1;33mm3tozz\e[0;31m@\033[1;34mneocat\n\e[0;31m↳\e[1;36m " ; read inputValue
}

banner

selectedThemeChange(){
    sleep 1
	clear

    echo -e '\033[0m 
  _   _             _____      _   
 | \ | |           / ____|    | |  
 |  \| | ___  ___ | |     __ _| |_ 
 | . ` |/ _ \/ _ \| |    / _` | __|'"$1"'
 | |\  |  __/ (_) | |___| (_| | |_ 
 |_| \_|\___|\___/ \_____\__,_|\__|                                       
'
rm -r /home/$USER/.config/neofetch
sleep 1
cd $1/ && cp -r neofetch /home/$USER/.config
}

if [[ $inputValue == 1 || $inputValue == 01 ]]; then
    selectedThemeChange Loki-Ranger

elif [[ $inputValue == 2 || $inputValue == 02 ]]; then
	selectedThemeChange Fast-Snail
 
elif [[ $inputValue == 3 || $inputValue == 03 ]]; then
	selectedThemeChange SpongeBob

elif [[ $inputValue == 4 || $inputValue == 04 ]]; then
    selectedThemeChange Dino-Rex

elif [[ $inputValue == 5 || $inputValue == 05 ]]; then
    selectedThemeChange Smile

elif [[ $inputValue == 6 || $inputValue == 06 ]]; then
    selectedThemeChange Crocodile

elif [[ $inputValue == 7 || $inputValue == 07 ]]; then
    selectedThemeChange OWL

elif [[ $inputValue == 8 || $inputValue == 08 ]]; then
    selectedThemeChange MotorCycle

elif [[ $inputValue == 9 || $inputValue == 09 ]]; then
    selectedThemeChange Snake

elif [[ $inputValue == 10 ]]; then
    selectedThemeChange Tux

elif [[ $inputValue == 11 ]]; then
    selectedThemeChange Palm

elif [[ $inputValue == 12 ]]; then
    selectedThemeChange Alien

elif [[ $inputValue == 13 ]]; then
    selectedThemeChange Truck

elif [[ $inputValue == 14 ]]; then
    selectedThemeChange Cocktail

elif [[ $inputValue == 15 ]]; then
    selectedThemeChange Small-Buntu

elif [[ $inputValue == 16 ]]; then
    selectedThemeChange Phone

elif [[ $inputValue == 17 ]]; then
    selectedThemeChange Duck

elif [[ $inputValue == 18 ]]; then
    selectedThemeChange Simba

elif [[ $inputValue == 19 ]]; then
    selectedThemeChange Dinosaurs

elif [[ $inputValue == 20 ]]; then
    selectedThemeChange Sheriff

elif [[ $inputValue == 21 ]]; then
    selectedThemeChange Giraffe

elif [[ $inputValue == 22 ]]; then
    selectedThemeChange Dog

elif [[ $inputValue == 23 ]]; then
    selectedThemeChange KittyCat

elif [[ $inputValue == D || $inputValue == d  ]]; then
    selectedThemeChange Default-Theme

elif [[ $inputValue == 0 || $inputValue == 00 ]]; then
    selectedThemeChange
    cd ..
    bash ./neocat.sh
elif [[ $inputValue == x || $inputValue == X ]]; then
	clear
echo -e "\033[1;31m GoodBye\033[0m"
	exit 1
else
	echo -e '\033[36;40;1m Wrong transaction number!'	
fi
    clear
    neofetch
