# Made By Eminkrkt
clear

banner(){
echo -e '\033[0;36m
\033[0;31m  _   _             _____      _   
\033[0;33m | \ | |           / ____|    | |            
\033[0;34m |  \| | ___  ___ | |     __ _| |_ 
\033[0;35m | . ` |/ _ \/ _ \| |    / _` | __|\033[0;31mLarge-Themes
\033[0;36m | |\  |  __/ (_) | |___| (_| | |_ 
\033[0;31m |_| \_|\___|\___/ \_____\__,_|\__|                                       
\e[1;34m[01]\e[0;32mAvengers \e[1;35m[02]\e[0;32mCake-Man \e[1;31m[03]\e[0;32mRock \033[1;33m[04]\e[0;32mRick-Roll
\033[1;33m[05]\e[0;32mAnime-Girl \e[1;36m[06]\e[0;32mDeath \e[1;35m[07]\e[0;32mPikachu \033[1;33m[08]\e[0;32mCat \e[1;34m[09]\e[0;32mAnime-Boy
\e[1;35m[10]\e[0;32mF \e[1;34m[11]\e[0;32mPatRick \e[1;36m[12]\e[0;32mNaruto-Konaha \e[1;35m[13]\e[0;32mOne-Piece \033[1;33m[14]\e[0;32mWindows-7
\033[1;33m[15]\e[0;32mSpider-Man \e[1;34m[16]\e[0;32mMai \033[1;33m[17]\e[0;32mMetoCat \e[1;36m[18]\e[0;32mBatMan \e[1;34m[19]\e[0;32mHello-Kitty
\e[1;34m[20]\e[0;32mGarfield \e[1;35m[21]\e[0;32mDog \e[1;36m[22]\e[0;32mSonic \033[1;33m[23]\e[0;32mAstronaut \e[1;35m[24]\e[0;32mCryingTroll
\e[1;36m[25]\e[0;32mCreeper \033[1;33m[26]\e[0;32mGigaChad \e[1;35m[27]\e[0;32mBaymax \033[1;33m[28]\e[0;32mSoviet \e[1;36m[29]\e[0;32mArch-BTW
\e[1;35m[30]\e[0;32mPony \e[1;34m[31]\e[0;32mAnimo \e[1;36m[32]\e[0;32mAmongUS \033[1;33m[33]\e[0;32mOrigami \e[1;35m[34]\e[0;32mPixar-Lamp
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
    selectedThemeChange Avengers

elif [[ $inputValue == 2 || $inputValue == 02 ]]; then
    selectedThemeChange Cake-Man

elif [[ $inputValue == 3 || $inputValue == 03 ]]; then
    selectedThemeChange Rock

elif [[ $inputValue == 4 || $inputValue == 04 ]]; then
    selectedThemeChange Rick-Roll

elif [[ $inputValue == 5 || $inputValue == 05 ]]; then
    selectedThemeChange Anime-Girl

elif [[ $inputValue == 6 || $inputValue == 06 ]]; then
    selectedThemeChange Death

elif [[ $inputValue == 7 || $inputValue == 07 ]]; then
    selectedThemeChange Pikachu

elif [[ $inputValue == 8 || $inputValue == 08 ]]; then
    selectedThemeChange Cat

elif [[ $inputValue == 9 || $inputValue == 09 ]]; then
    selectedThemeChange Anime-Boy

elif [[ $inputValue == 10  ]]; then
    selectedThemeChange F

elif [[ $inputValue == 11  ]]; then
    selectedThemeChange PatRick

elif [[ $inputValue == 12  ]]; then
    selectedThemeChange Naruto-Konaha

elif [[ $inputValue == 13  ]]; then
    selectedThemeChange One-Piece

elif [[ $inputValue == 14  ]]; then
    selectedThemeChange Windows-7

elif [[ $inputValue == 15  ]]; then
    selectedThemeChange Spider-Man

elif [[ $inputValue == 16  ]]; then
    selectedThemeChange Mai

elif [[ $inputValue == 17  ]]; then
    selectedThemeChange MetoCat

elif [[ $inputValue == 18  ]]; then
    selectedThemeChange BatMan

elif [[ $inputValue == 19  ]]; then
    selectedThemeChange Hello-Kitty

elif [[ $inputValue == 20  ]]; then
    selectedThemeChange Garfield

elif [[ $inputValue == 21  ]]; then
    selectedThemeChange Dog

elif [[ $inputValue == 22  ]]; then
    selectedThemeChange Sonic

elif [[ $inputValue == 23  ]]; then
    selectedThemeChange Astronaut

elif [[ $inputValue == 24  ]]; then
    selectedThemeChange CryingTroll

elif [[ $inputValue == 25  ]]; then
    selectedThemeChange Creeper

elif [[ $inputValue == 26  ]]; then
    selectedThemeChange GigaChad

elif [[ $inputValue == 27  ]]; then
    selectedThemeChange Baymax

elif [[ $inputValue == 28  ]]; then
    selectedThemeChange Soviet

elif [[ $inputValue == 29  ]]; then
    selectedThemeChange Arch-BTW

elif [[ $inputValue == 30  ]]; then
    selectedThemeChange Pony

elif [[ $inputValue == 31  ]]; then
    selectedThemeChange Animo

elif [[ $inputValue == 32  ]]; then
    selectedThemeChange AmongUS

elif [[ $inputValue == 33  ]]; then
    selectedThemeChange Origami

elif [[ $inputValue == 34  ]]; then
    selectedThemeChange Pixar-Lamp

elif [[ $inputValue == D || $inputValue == d  ]]; then
    selectedThemeChange Default-Theme

elif [[ $inputValue == 0 || $inputValue == 00 ]]; then
        sleep 1
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
