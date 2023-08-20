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
\033[0;35m | . ` |/ _ \/ _ \| |    / _` | __|\033[0;31mLarge-Themes
\033[0;36m | |\  |  __/ (_) | |___| (_| | |_ 
\033[0;31m |_| \_|\___|\___/ \_____\__,_|\__|⠀⠀⠀⠀⠀⠀                                       
\e[1;34m[01]\e[0;32mAvengers \e[1;35m[02]\e[0;32mCake-Man \e[1;31m[03]\e[0;32mRock \033[1;33m[04]\e[0;32mRick-Roll
\033[1;33m[05]\e[0;32mAnime-Girl \e[1;36m[06]\e[0;32mDeath \e[1;35m[07]\e[0;32mPikachu \033[1;33m[08]\e[0;32mCat \e[1;34m[09]\e[0;32mAnime-Boy
\e[1;35m[10]\e[0;32mF \e[1;34m[11]\e[0;32mPatRick \e[1;36m[12]\e[0;32mNaruto-Konaha \e[1;35m[13]\e[0;32mOne-Piece \033[1;33m[14]\e[0;32mWindows-7
\033[1;33m[15]\e[0;32mSpider-Man \e[1;34m[16]\e[0;32mMai \033[1;33m[17]\e[0;32mMetoCat \e[1;36m[18]\e[0;32mBatMan \e[1;34m[19]\e[0;32mHello-Kitty
\e[1;34m[20]\e[0;32mGarfield \e[1;35m[21]\e[0;32mDog \e[1;36m[22]\e[0;32mSonic \033[1;33m[23]\e[0;32mAstronaut \e[1;35m[24]\e[0;32mCryingTroll
\e[1;36m[25]\e[0;32mCreeper \033[1;33m[26]\e[0;32mGigaChad \e[1;35m[27]\e[0;32mBaymax \033[1;33m[28]\e[0;32mSoviet \e[1;36m[29]\e[0;32mArch-BTW
\e[1;35m[30]\e[0;32mPony \e[1;34m[31]\e[0;32mAnimo \e[1;36m[32]\e[0;32mAmongUS \033[1;33m[33]\e[0;32mOrigami \e[1;35m[34]\e[0;32mPixar-Lamp
\033[1;33m[35]\e[0;32mPentagram \e[1;35m[36]\e[0;32mSimpsons \e[1;34m[37]\e[0;32mArch-OLD \e[1;36m[38]\e[0;32mUbuntu-OLD
\e[1;35m[39]\e[0;32mTux \e[1;34m[40]\e[0;32mHeisenberg \033[1;33m[41]\e[0;32mInspector-Gadget \e[1;34m[42]\e[0;32mSuperman
\e[1;36m[43]\e[0;32mDeadPool \033[1;33m[44]\e[0;32mRed-Green \e[1;35m[45]\e[0;32mJoker \033[1;33m[46]\e[0;32mSuse-Icons \e[1;36m[47]\e[0;32mVenom
\e[1;34m[48]\e[0;32mAzur \e[1;35m[49]\e[0;32mBill-Cipher \e[1;36m[50]\e[0;32mDipper \033[1;33m[51]\e[0;32mSaturn
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
        cd Avengers/ && cp -r neofetch /home/$USER/.config
clear	

neofetch

elif [[ $islem == 2 || $islem == 02 ]]; then
	sleep 1
	clear
	loader
rm -r /home/$USER/.config/neofetch
sleep 1
        cd Cake-Man/ && cp -r neofetch /home/$USER/.config
clear	

neofetch
 
elif [[ $islem == 3 || $islem == 03 ]]; then
	sleep 1
	clear
	loader
rm -r /home/$USER/.config/neofetch
sleep 1
        cd Rock/ && cp -r neofetch /home/$USER/.config
clear
neofetch

elif [[ $islem == 4 || $islem == 04 ]]; then
        sleep 1
        clear
        loader
rm -r /home/$USER/.config/neofetch
sleep 1
        cd Rick-Roll/ && cp -r neofetch /home/$USER/.config
clear   
neofetch

elif [[ $islem == 5 || $islem == 05 ]]; then
        sleep 1
        clear
        loader
rm -r /home/$USER/.config/neofetch
sleep 1
        cd Anime-Girl/ && cp -r neofetch /home/$USER/.config
clear   
neofetch

elif [[ $islem == 6 || $islem == 06 ]]; then
        sleep 1
        clear
        loader
rm -r /home/$USER/.config/neofetch
sleep 1
        cd Death/ && cp -r neofetch /home/$USER/.config
clear   
neofetch

elif [[ $islem == 7 || $islem == 07 ]]; then
        sleep 1
        clear
        loader
rm -r /home/$USER/.config/neofetch
sleep 1
        cd Pikachu/ && cp -r neofetch /home/$USER/.config
clear   
neofetch

elif [[ $islem == 8 || $islem == 08 ]]; then
        sleep 1
        clear
        loader
rm -r /home/$USER/.config/neofetch
sleep 1
        cd Cat/ && cp -r neofetch /home/$USER/.config
clear   
neofetch

elif [[ $islem == 9 || $islem == 09 ]]; then
        sleep 1
        clear
        loader
rm -r /home/$USER/.config/neofetch
sleep 1
        cd Anime-Boy/ && cp -r neofetch /home/$USER/.config
clear   
neofetch

elif [[ $islem == 10  ]]; then
        sleep 1
        clear
        loader
rm -r /home/$USER/.config/neofetch
sleep 1
        cd F/ && cp -r neofetch /home/$USER/.config
clear   
neofetch

elif [[ $islem == 11  ]]; then
        sleep 1
        clear
        loader
rm -r /home/$USER/.config/neofetch
sleep 1
        cd PatRick/ && cp -r neofetch /home/$USER/.config
clear   
neofetch

elif [[ $islem == 12  ]]; then
        sleep 1
        clear
        loader
rm -r /home/$USER/.config/neofetch
sleep 1
        cd Naruto-Konaha/ && cp -r neofetch /home/$USER/.config
clear   
neofetch

elif [[ $islem == 13  ]]; then
        sleep 1
        clear
        loader
rm -r /home/$USER/.config/neofetch
sleep 1
        cd One-Piece/ && cp -r neofetch /home/$USER/.config
clear   
neofetch

elif [[ $islem == 14  ]]; then
        sleep 1
        clear
        loader
rm -r /home/$USER/.config/neofetch
sleep 1
        cd Windows-7/ && cp -r neofetch /home/$USER/.config
clear   
neofetch

elif [[ $islem == 15  ]]; then
        sleep 1
        clear
        loader
rm -r /home/$USER/.config/neofetch
sleep 1
        cd Spider-Man/ && cp -r neofetch /home/$USER/.config
clear   
neofetch

elif [[ $islem == 16  ]]; then
        sleep 1
        clear
        loader
rm -r /home/$USER/.config/neofetch
sleep 1
        cd Mai/ && cp -r neofetch /home/$USER/.config
clear   
neofetch

elif [[ $islem == 17  ]]; then
        sleep 1
        clear
        loader
rm -r /home/$USER/.config/neofetch
sleep 1
        cd MetoCat/ && cp -r neofetch /home/$USER/.config
clear   
neofetch

elif [[ $islem == 18  ]]; then
        sleep 1
        clear
        loader
rm -r /home/$USER/.config/neofetch
sleep 1
        cd BatMan/ && cp -r neofetch /home/$USER/.config
clear   
neofetch

elif [[ $islem == 19  ]]; then
        sleep 1
        clear
        loader
rm -r /home/$USER/.config/neofetch
sleep 1
        cd Hello-Kitty/ && cp -r neofetch /home/$USER/.config
clear   
neofetch

elif [[ $islem == 20  ]]; then
        sleep 1
        clear
        loader
rm -r /home/$USER/.config/neofetch
sleep 1
        cd Garfield/ && cp -r neofetch /home/$USER/.config
clear   
neofetch

elif [[ $islem == 21  ]]; then
        sleep 1
        clear
        loader
rm -r /home/$USER/.config/neofetch
sleep 1
        cd Dog/ && cp -r neofetch /home/$USER/.config
clear   
neofetch

elif [[ $islem == 22  ]]; then
        sleep 1
        clear
        loader
rm -r /home/$USER/.config/neofetch
sleep 1
        cd Sonic/ && cp -r neofetch /home/$USER/.config
clear   
neofetch

elif [[ $islem == 23  ]]; then
        sleep 1
        clear
        loader
rm -r /home/$USER/.config/neofetch
sleep 1
        cd Astronaut/ && cp -r neofetch /home/$USER/.config
clear   
neofetch

elif [[ $islem == 24  ]]; then
        sleep 1
        clear
        loader
rm -r /home/$USER/.config/neofetch
sleep 1
        cd CryingTroll/ && cp -r neofetch /home/$USER/.config
clear   
neofetch

elif [[ $islem == 25  ]]; then
        sleep 1
        clear
        loader
rm -r /home/$USER/.config/neofetch
sleep 1
        cd Creeper/ && cp -r neofetch /home/$USER/.config
clear   
neofetch

elif [[ $islem == 26  ]]; then
        sleep 1
        clear
        loader
rm -r /home/$USER/.config/neofetch
sleep 1
        cd GigaChad/ && cp -r neofetch /home/$USER/.config
clear   
neofetch

elif [[ $islem == 27  ]]; then
        sleep 1
        clear
        loader
rm -r /home/$USER/.config/neofetch
sleep 1
        cd Baymax/ && cp -r neofetch /home/$USER/.config
clear   
neofetch


elif [[ $islem == 28  ]]; then
        sleep 1
        clear
        loader
rm -r /home/$USER/.config/neofetch
sleep 1
        cd Soviet/ && cp -r neofetch /home/$USER/.config
clear   
neofetch

elif [[ $islem == 29  ]]; then
        sleep 1
        clear
        loader
rm -r /home/$USER/.config/neofetch
sleep 1
        cd Arch-BTW/ && cp -r neofetch /home/$USER/.config
clear   
neofetch

elif [[ $islem == 30  ]]; then
        sleep 1
        clear
        loader
rm -r /home/$USER/.config/neofetch
sleep 1
        cd Pony/ && cp -r neofetch /home/$USER/.config
clear   
neofetch

elif [[ $islem == 31  ]]; then
        sleep 1
        clear
        loader
rm -r /home/$USER/.config/neofetch
sleep 1
        cd Animo/ && cp -r neofetch /home/$USER/.config
clear   
neofetch

elif [[ $islem == 32  ]]; then
        sleep 1
        clear
        loader
rm -r /home/$USER/.config/neofetch
sleep 1
        cd AmongUS/ && cp -r neofetch /home/$USER/.config
clear   
neofetch

elif [[ $islem == 33  ]]; then
        sleep 1
        clear
        loader
rm -r /home/$USER/.config/neofetch
sleep 1
        cd Origami/ && cp -r neofetch /home/$USER/.config
clear   
neofetch

elif [[ $islem == 34  ]]; then
        sleep 1
        clear
        loader
rm -r /home/$USER/.config/neofetch
sleep 1
        cd Pixar-Lamp/ && cp -r neofetch /home/$USER/.config
clear   
neofetch

elif [[ $islem == 35  ]]; then
        sleep 1
        clear
        loader
rm -r /home/$USER/.config/neofetch
sleep 1
        cd Pentagram/ && cp -r neofetch /home/$USER/.config
clear   
neofetch

elif [[ $islem == 36  ]]; then
        sleep 1
        clear
        loader
rm -r /home/$USER/.config/neofetch
sleep 1
        cd Simpsons/ && cp -r neofetch /home/$USER/.config
clear   
neofetch

elif [[ $islem == 37  ]]; then
        sleep 1
        clear
        loader
rm -r /home/$USER/.config/neofetch
sleep 1
        cd Arch-OLD/ && cp -r neofetch /home/$USER/.config
clear   
neofetch

elif [[ $islem == 38  ]]; then
        sleep 1
        clear
        loader
rm -r /home/$USER/.config/neofetch
sleep 1
        cd Ubuntu-OLD/ && cp -r neofetch /home/$USER/.config
clear   
neofetch

elif [[ $islem == 39  ]]; then
        sleep 1
        clear
        loader
rm -r /home/$USER/.config/neofetch
sleep 1
        cd Tux/ && cp -r neofetch /home/$USER/.config
clear   
neofetch

elif [[ $islem == 40  ]]; then
        sleep 1
        clear
        loader
rm -r /home/$USER/.config/neofetch
sleep 1
        cd Heisenberg/ && cp -r neofetch /home/$USER/.config
clear   
neofetch

elif [[ $islem == 41  ]]; then
        sleep 1
        clear
        loader
rm -r /home/$USER/.config/neofetch
sleep 1
        cd Inspector-Gadget/ && cp -r neofetch /home/$USER/.config
clear   
neofetch

elif [[ $islem == 42  ]]; then
        sleep 1
        clear
        loader
rm -r /home/$USER/.config/neofetch
sleep 1
        cd Superman/ && cp -r neofetch /home/$USER/.config
clear   
neofetch

elif [[ $islem == 41  ]]; then
        sleep 1
        clear
        loader
rm -r /home/$USER/.config/neofetch
sleep 1
        cd Inspector-Gadget/ && cp -r neofetch /home/$USER/.config
clear   
neofetch

elif [[ $islem == 42  ]]; then
        sleep 1
        clear
        loader
rm -r /home/$USER/.config/neofetch
sleep 1
        cd Superman/ && cp -r neofetch /home/$USER/.config
clear   
neofetch

elif [[ $islem == 43  ]]; then
        sleep 1
        clear
        loader
rm -r /home/$USER/.config/neofetch
sleep 1
        cd DeadPool/ && cp -r neofetch /home/$USER/.config
clear   
neofetch

elif [[ $islem == 44  ]]; then
        sleep 1
        clear
        loader
rm -r /home/$USER/.config/neofetch
sleep 1
        cd Red-Green/ && cp -r neofetch /home/$USER/.config
clear   
neofetch

elif [[ $islem == 45  ]]; then
        sleep 1
        clear
        loader
rm -r /home/$USER/.config/neofetch
sleep 1
        cd Joker/ && cp -r neofetch /home/$USER/.config
clear   
neofetch

elif [[ $islem == 46  ]]; then
        sleep 1
        clear
        loader
rm -r /home/$USER/.config/neofetch
sleep 1
        cd Suse-Icons/ && cp -r neofetch /home/$USER/.config
clear   
neofetch

elif [[ $islem == 47  ]]; then
        sleep 1
        clear
        loader
rm -r /home/$USER/.config/neofetch
sleep 1
        cd Venom/ && cp -r neofetch /home/$USER/.config
clear   
neofetch

elif [[ $islem == 48  ]]; then
        sleep 1
        clear
        loader
rm -r /home/$USER/.config/neofetch
sleep 1
        cd Azur/ && cp -r neofetch /home/$USER/.config
clear   
neofetch

elif [[ $islem == 49  ]]; then
        sleep 1
        clear
        loader
rm -r /home/$USER/.config/neofetch
sleep 1
        cd Bill-Cipher/ && cp -r neofetch /home/$USER/.config
clear   
neofetch

elif [[ $islem == 50  ]]; then
        sleep 1
        clear
        loader
rm -r /home/$USER/.config/neofetch
sleep 1
        cd Dipper/ && cp -r neofetch /home/$USER/.config
clear   
neofetch

elif [[ $islem == 51  ]]; then
        sleep 1
        clear
        loader
rm -r /home/$USER/.config/neofetch
sleep 1
        cd Saturn/ && cp -r neofetch /home/$USER/.config
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
