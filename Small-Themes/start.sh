# Made By M3TOZZ
loader ()
{
printf "\033[0m
NeoCat - NeoFetch Theme Pack!
[#####               ] 25%%  completed.\r"
sleep 0.3
clear
printf "
NeoCat - NeoFetch Theme Pack!
[###############     ] 75%%  completed.\r"
sleep 0.2
clear
printf "
NeoCat - NeoFetch Theme Pack!
[####################] 100%%  completed.\r"
sleep 0.2
}
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
\e[1;36m[20]\e[0;32mSheriff \e[1;34m[21]\e[0;32mGiraffe \033[1;33m[22]\e[0;32mDog \e[1;35m[23]\e[0;32mKittyCat \e[1;34m[24]\e[0;32m8-Bit
\e[1;35m[25]\e[0;32mRobo-Dog \033[1;33m[26]\e[0;32mArchtozz \e[1;34m[27]\e[0;32mDebiatozz \e[1;36m[28]\e[0;32mFedortozz
\033[1;33m[29]\e[0;32mUWU \e[1;36m[30]\e[0;32mMetoSpace \e[1;35m[31]\e[0;32mAwesome \e[1;34m[32]\e[0;32mPlay-Boy \e[1;36m[33]\e[0;32mSkull
\033[1;31m[x]Exit [D]Default-Theme
'
        echo -ne "\e[1;33mm3tozz\e[0;31m@\033[1;34mneocat\n\e[0;31m↳\e[1;36m " ; read islem
}



banner
if [[ $islem == 1 || $islem == 01 ]]; then
	sleep 1
	clear
        loader
rm -r /home/$USER/.config/neofetch
sleep 1
        cd Loki-Ranger/ && cp -r neofetch /home/$USER/.config
clear	

neofetch

elif [[ $islem == 2 || $islem == 02 ]]; then
	sleep 1
	clear
	loader
rm -r /home/$USER/.config/neofetch
sleep 1
        cd Fast-Snail/ && cp -r neofetch /home/$USER/.config
clear	

neofetch
 
elif [[ $islem == 3 || $islem == 03 ]]; then
	sleep 1
	clear
	loader
rm -r /home/$USER/.config/neofetch
sleep 1
        cd SpongeBob/ && cp -r neofetch /home/$USER/.config
clear

neofetch

elif [[ $islem == 4 || $islem == 04 ]]; then
        sleep 1
        clear
        loader
rm -r /home/$USER/.config/neofetch
sleep 1
        cd Dino-Rex/ && cp -r neofetch /home/$USER/.config
clear   
neofetch

elif [[ $islem == 5 || $islem == 05 ]]; then
        sleep 1
        clear
        loader
rm -r /home/$USER/.config/neofetch
sleep 1
        cd Smile/ && cp -r neofetch /home/$USER/.config
clear   
neofetch

elif [[ $islem == 6 || $islem == 06 ]]; then
        sleep 1
        clear
        loader
rm -r /home/$USER/.config/neofetch
sleep 1
        cd Crocodile/ && cp -r neofetch /home/$USER/.config
clear   
neofetch

elif [[ $islem == 7 || $islem == 07 ]]; then
        sleep 1
        clear
        loader
rm -r /home/$USER/.config/neofetch
sleep 1
        cd OWL/ && cp -r neofetch /home/$USER/.config
clear   
neofetch

elif [[ $islem == 8 || $islem == 08 ]]; then
        sleep 1
        clear
        loader
rm -r /home/$USER/.config/neofetch
sleep 1
        cd MotorCycle/ && cp -r neofetch /home/$USER/.config
clear   
neofetch

elif [[ $islem == 9 || $islem == 09 ]]; then
        sleep 1
        clear
        loader
rm -r /home/$USER/.config/neofetch
sleep 1
        cd Snake/ && cp -r neofetch /home/$USER/.config
clear   
neofetch

elif [[ $islem == 10 ]]; then
        sleep 1
        clear
        loader
rm -r /home/$USER/.config/neofetch
sleep 1
        cd Tux/ && cp -r neofetch /home/$USER/.config
clear   
neofetch

elif [[ $islem == 11 ]]; then
        sleep 1
        clear
        loader
rm -r /home/$USER/.config/neofetch
sleep 1
        cd Palm/ && cp -r neofetch /home/$USER/.config
clear   
neofetch

elif [[ $islem == 12 ]]; then
        sleep 1
        clear
        loader
rm -r /home/$USER/.config/neofetch
sleep 1
        cd Alien/ && cp -r neofetch /home/$USER/.config
clear   
neofetch

elif [[ $islem == 13 ]]; then
        sleep 1
        clear
        loader
rm -r /home/$USER/.config/neofetch
sleep 1
        cd Truck/ && cp -r neofetch /home/$USER/.config
clear   
neofetch

elif [[ $islem == 14 ]]; then
        sleep 1
        clear
        loader
rm -r /home/$USER/.config/neofetch
sleep 1
        cd Cocktail/ && cp -r neofetch /home/$USER/.config
clear   
neofetch

elif [[ $islem == 15 ]]; then
        sleep 1
        clear
        loader
rm -r /home/$USER/.config/neofetch
sleep 1
        cd Small-Buntu/ && cp -r neofetch /home/$USER/.config
clear   
neofetch

elif [[ $islem == 16 ]]; then
        sleep 1
        clear
        loader
rm -r /home/$USER/.config/neofetch
sleep 1
        cd Phone/ && cp -r neofetch /home/$USER/.config
clear   
neofetch

elif [[ $islem == 17 ]]; then
        sleep 1
        clear
        loader
rm -r /home/$USER/.config/neofetch
sleep 1
        cd Duck/ && cp -r neofetch /home/$USER/.config
clear   
neofetch

elif [[ $islem == 18 ]]; then
        sleep 1
        clear
        loader
rm -r /home/$USER/.config/neofetch
sleep 1
        cd Simba/ && cp -r neofetch /home/$USER/.config
clear   
neofetch

elif [[ $islem == 19 ]]; then
        sleep 1
        clear
        loader
rm -r /home/$USER/.config/neofetch
sleep 1
        cd Dinosaurs/ && cp -r neofetch /home/$USER/.config
clear   
neofetch

elif [[ $islem == 20 ]]; then
        sleep 1
        clear
        loader
rm -r /home/$USER/.config/neofetch
sleep 1
        cd Sheriff/ && cp -r neofetch /home/$USER/.config
clear   
neofetch

elif [[ $islem == 21 ]]; then
        sleep 1
        clear
        loader
rm -r /home/$USER/.config/neofetch
sleep 1
        cd Giraffe/ && cp -r neofetch /home/$USER/.config
clear   
neofetch

elif [[ $islem == 22 ]]; then
        sleep 1
        clear
        loader
rm -r /home/$USER/.config/neofetch
sleep 1
        cd Dog/ && cp -r neofetch /home/$USER/.config
clear   
neofetch

elif [[ $islem == 23 ]]; then
        sleep 1
        clear
        loader
rm -r /home/$USER/.config/neofetch
sleep 1
        cd KittyCat/ && cp -r neofetch /home/$USER/.config
clear   
neofetch

elif [[ $islem == 24 ]]; then
        sleep 1
        clear
        loader
rm -r /home/$USER/.config/neofetch
sleep 1
        cd 8-Bit/ && cp -r neofetch /home/$USER/.config
clear   
neofetch

elif [[ $islem == 25 ]]; then
        sleep 1
        clear
        loader
rm -r /home/$USER/.config/neofetch
sleep 1
        cd Robo-Dog/ && cp -r neofetch /home/$USER/.config
clear   
neofetch

elif [[ $islem == 26 ]]; then
        sleep 1
        clear
        loader
rm -r /home/$USER/.config/neofetch
sleep 1
        cd Archtozz/ && cp -r neofetch /home/$USER/.config
clear   
neofetch

elif [[ $islem == 27 ]]; then
        sleep 1
        clear
        loader
rm -r /home/$USER/.config/neofetch
sleep 1
        cd Debiatozz/ && cp -r neofetch /home/$USER/.config
clear   
neofetch
elif [[ $islem == 28 ]]; then
        sleep 1
        clear
        loader
rm -r /home/$USER/.config/neofetch
sleep 1
        cd Fedortozz/ && cp -r neofetch /home/$USER/.config
clear   
neofetch

elif [[ $islem == 29 ]]; then
        sleep 1
        clear
        loader
rm -r /home/$USER/.config/neofetch
sleep 1
        cd UWU/ && cp -r neofetch /home/$USER/.config
clear   
neofetch

elif [[ $islem == 30 ]]; then
        sleep 1
        clear
        loader
rm -r /home/$USER/.config/neofetch
sleep 1
        cd MetoSpace/ && cp -r neofetch /home/$USER/.config
clear   
neofetch

elif [[ $islem == 31 ]]; then
        sleep 1
        clear
        loader
rm -r /home/$USER/.config/neofetch
sleep 1
        cd Awesome/ && cp -r neofetch /home/$USER/.config
clear   
neofetch

elif [[ $islem == 32 ]]; then
        sleep 1
        clear
        loader
rm -r /home/$USER/.config/neofetch
sleep 1
        cd Play-Boy/ && cp -r neofetch /home/$USER/.config
clear   
neofetch

elif [[ $islem == 33 ]]; then
        sleep 1
        clear
        loader
rm -r /home/$USER/.config/neofetch
sleep 1
        cd Skull/ && cp -r neofetch /home/$USER/.config
clear   
neofetch
elif [[ $islem == D || $islem == d  ]]; then
        sleep 1
        clear
        loader
rm -r /home/$USER/.config/neofetch
sleep 1
        cd Default/ && cp -r neofetch /home/$USER/.config
clear   
neofetch

elif [[ $islem == x || $islem == X ]]; then
	clear
echo -e "\033[1;31m GoodBye\033[0m"
	exit 1
else
	echo -e '\033[36;40;1m Wrong transaction number!'	
fi
