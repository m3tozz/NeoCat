# Made By M3TOZZ
clear

banner(){
echo -e '\033[0;36m
|\---/|
| o_o |NeoCat-Termux
 \_^_/                                    
\e[1;34m[01]\e[0;32mLoki-Ranger
\e[1;35m[02]\e[0;32mFast-Snail
\e[1;31m[03]\e[0;32mSpongeBob
\e[1;34m[04]\e[0;32mDino-Rex
\033[1;33m[05]\e[0;32mSmile
\e[1;36m[06]\e[0;32mCrocodile
\e[1;35m[07]\e[0;32mOWL
\e[1;34m[08]\e[0;32mMotorCycle
\e[1;36m[09]\e[0;32mSnake
\e[1;34m[10]\e[0;32mTux
\e[1;35m[11]\e[0;32mPalm
\e[1;36m[12]\e[0;32mAlien
\033[1;33m[13]\e[0;32mTruck
\e[1;35m[14]\e[0;32mCocktail
\033[1;33m[15]\e[0;32mSmall-Android
\e[1;35m[16]\e[0;32mPhone
\e[1;34m[17]\e[0;32mSimba
\033[1;33m[18]\e[0;32mDuck
\033[1;31m[x]Exit 
[D]Default-Theme
'
        echo -ne "\e[1;33mm3tozz\e[0;31m@\033[1;34mNeoCat-Termux\n\e[0;31m↳\e[1;36m " ; read islem
}




banner
if [[ $islem == 1 || $islem == 01 ]]; then
	sleep 1
	clear
		echo -e '\033[0m 
|\---/|
| o_o |Loki-Ranger
 \_^_/                                       
'
rm -r /data/data/com.termux/files/home/.config/neofetch
sleep 1
        cd Themes/Loki-Ranger/ && cp -r neofetch /data/data/com.termux/files/home/.config/neofetch
clear	

neofetch

elif [[ $islem == 2 || $islem == 02 ]]; then
	sleep 1
	clear
		echo -e '\033[0m 
|\---/|
| o_o |Fast-Snail
 \_^_/                                       
'
rm -r /data/data/com.termux/files/home/.config/neofetch
sleep 1
        cd Themes/Fast-Snail/ && cp -r neofetch /data/data/com.termux/files/home/.config/neofetch
clear	

neofetch
 
elif [[ $islem == 3 || $islem == 03 ]]; then
	sleep 1
	clear
		echo -e '\033[0m 
|\---/|
| o_o |SpongeBob
 \_^_/                                      
'
rm -r /data/data/com.termux/files/home/.config/neofetch
sleep 1
        cd Themes/SpongeBob/ && cp -r neofetch /data/data/com.termux/files/home/.config/neofetch
clear

neofetch

elif [[ $islem == 4 || $islem == 04 ]]; then
        sleep 1
        clear
                echo -e '\033[0m 
|\---/|
| o_o |Dino-Rex
 \_^_/                                        
'
rm -r /data/data/com.termux/files/home/.config/neofetch
sleep 1
        cd Themes/Dino-Rex/ && cp -r neofetch /data/data/com.termux/files/home/.config/neofetch
clear   
neofetch

elif [[ $islem == 5 || $islem == 05 ]]; then
        sleep 1
        clear
                echo -e '\033[0m 
|\---/|
| o_o |Smile
 \_^_/ 
'
rm -r /data/data/com.termux/files/home/.config/neofetch
sleep 1
        cd Themes/Smile/ && cp -r neofetch /data/data/com.termux/files/home/.config/neofetch
clear   
neofetch

elif [[ $islem == 6 || $islem == 06 ]]; then
        sleep 1
        clear
                echo -e '\033[0m 
|\---/|
| o_o |Crocodile
 \_^_/                                     
'
rm -r /data/data/com.termux/files/home/.config/neofetch
sleep 1
        cd Themes/Crocodile/ && cp -r neofetch /data/data/com.termux/files/home/.config/neofetch
clear   
neofetch

elif [[ $islem == 7 || $islem == 07 ]]; then
        sleep 1
        clear
                echo -e '\033[0m 
|\---/|
| o_o |OWL
 \_^_/                                     
'
rm -r /data/data/com.termux/files/home/.config/neofetch
sleep 1
        cd Themes/OWL/ && cp -r neofetch /data/data/com.termux/files/home/.config/neofetch
clear   
neofetch

elif [[ $islem == 8 || $islem == 08 ]]; then
        sleep 1
        clear
                echo -e '\033[0m 
|\---/|
| o_o |MotorCycle
 \_^_/                                    
'
rm -r /data/data/com.termux/files/home/.config/neofetch
sleep 1
        cd Themes/MotorCycle/ && cp -r neofetch /data/data/com.termux/files/home/.config/neofetch
clear   
neofetch

elif [[ $islem == 9 || $islem == 09 ]]; then
        sleep 1
        clear
                echo -e '\033[0m 
|\---/|
| o_o |Snake
 \_^_/ 
'
rm -r /data/data/com.termux/files/home/.config/neofetch
sleep 1
        cd Themes/Snake/ && cp -r neofetch /data/data/com.termux/files/home/.config/neofetch
clear   
neofetch

elif [[ $islem == 10 ]]; then
        sleep 1
        clear
                echo -e '\033[0m 
|\---/|
| o_o |Tux
 \_^_/                                      
'
rm -r /data/data/com.termux/files/home/.config/neofetch
sleep 1
        cd Themes/Tux/ && cp -r /data/data/com.termux/files/home/.config/neofetch
clear   
neofetch

elif [[ $islem == 11 ]]; then
        sleep 1
        clear
                echo -e '\033[0m 
|\---/|
| o_o |Palm
 \_^_/                                     
'
rm -r /data/data/com.termux/files/home/.config/neofetch
sleep 1
        cd Themes/Palm/ && cp -r neofetch /data/data/com.termux/files/home/.config/neofetch
clear   
neofetch

elif [[ $islem == 12 ]]; then
        sleep 1
        clear
                echo -e '\033[0m 
|\---/|
| o_o |Alien
 \_^_/                                    
'
rm -r /data/data/com.termux/files/home/.config/neofetch
sleep 1
        cd Themes/Alien/ && cp -r neofetch /data/data/com.termux/files/home/.config/neofetch
clear   
neofetch

elif [[ $islem == 13 ]]; then
        sleep 1
        clear
                echo -e '\033[0m 
|\---/|
| o_o |Truck
 \_^_/                                     
'
rm -r /data/data/com.termux/files/home/.config/neofetch
sleep 1
        cd Themes/Truck/ && cp -r neofetch /data/data/com.termux/files/home/.config/neofetch
clear   
neofetch

elif [[ $islem == 14 ]]; then
        sleep 1
        clear
                echo -e '\033[0m 
|\---/|
| o_o |Cocktail
 \_^_/                                      
'
rm -r /data/data/com.termux/files/home/.config/neofetch
sleep 1
        cd Themes/Cocktail/ && cp -r neofetch /data/data/com.termux/files/home/.config/neofetch
clear   
neofetch

elif [[ $islem == 15 ]]; then
        sleep 1
        clear
                echo -e '\033[0m 
|\---/|
| o_o |Small-Android
 \_^_/                                      
'
rm -r /data/data/com.termux/files/home/.config/neofetch
sleep 1
        cd Themes/Small-Android/ && cp -r neofetch /data/data/com.termux/files/home/.config/neofetch
clear   
neofetch

elif [[ $islem == 16 ]]; then
        sleep 1
        clear
                echo -e '\033[0m 
|\---/|
| o_o |Phone
 \_^_/                                     
'
rm -r /data/data/com.termux/files/home/.config/neofetch
sleep 1
        cd Themes/Phone/ && cp -r neofetch /data/data/com.termux/files/home/.config/neofetch
clear   
neofetch

elif [[ $islem == 17 ]]; then
        sleep 1
        clear
                echo -e '\033[0m 
|\---/|
| o_o |Simba
 \_^_/                                     
'
rm -r /data/data/com.termux/files/home/.config/neofetch
sleep 1
        cd Themes/Simba/ && cp -r neofetch /data/data/com.termux/files/home/.config/neofetch
clear   
neofetch

elif [[ $islem == 18 ]]; then
        sleep 1
        clear
                echo -e '\033[0m 
|\---/|
| o_o |Duck
 \_^_/                                     
'
rm -r /data/data/com.termux/files/home/.config/neofetch
sleep 1
        cd Themes/Duck/ && cp -r neofetch /data/data/com.termux/files/home/.config/neofetch
clear   
neofetch


elif [[ $islem == D || $islem == d  ]]; then
        sleep 1
        clear
                echo -e '\033[0m 
|\---/|
| o_o |Default-Theme
 \_^_/                                      
'
rm -r /data/data/com.termux/files/home/.config/neofetch
sleep 1
        cd Themes/Default/ && cp -r neofetch /data/data/com.termux/files/home/.config/neofetch
clear   
neofetch


elif [[ $islem == x || $islem == X ]]; then
	clear
echo -e "\033[1;31m GoodBye\033[0m"
	exit 1
else
	echo -e '\033[36;40;1m Wrong transaction number!'	
fi
