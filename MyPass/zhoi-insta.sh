#!/bin/bash

if [ -d ~/ZHOI-INSTA ]; then
	echo ""
else
	mv ../ZHOI-INSTA ~
fi

if [ -d /data/data/com.termux/files/home ]; then
	echo ""
else
	if [ $(id -u) -ne 0 ]; then
		echo "This script must be ran as root"
		exit 1
	fi
	echo ""
fi

readthisone() {
        echo ""
        echo "######################################################"
        echo "######################################################"
        echo "##################### READ THIS ######################"
        echo "######################################################"
        echo "######################################################"
        echo "## Dear GitHub user, please do not copy this script ##"
        echo "######################################################"
        echo "##  All copyright under the laws of all countries   ##"
        echo "######################################################"
        echo "##        Copyright of  GH05T HUNTER5, 2023         ##"
        echo "######################################################"
        echo "######################################################"

}
clear

red="$(printf '\033[31m')"
green="$(printf '\033[32m')"
blue="$(printf '\033[34m')"
cyan="$(printf '\033[36m')"
white="$(printf '\033[37m')"
yellow="$(printf '\033[33m')"
restar='\033[0;35m'

main_install() {
        if [[ $(command -v python) && $(command -v python2) && $(command -v tor) && $(command -v wget) ]]; then
                echo -e "" >/dev/null 2>&1
        else
                pkgs=(php curl python python2 wget tor)
                for pkg in "${pkgs[@]}"; do
                type -p "$pkg" &>/dev/null || {
                echo -e ""
                if [[ $(command -v pkg) ]]; then
                        pkg install "$pkg" -y
                elif [[ $(command -v apt) ]]; then
                        sudo apt install "$pkg" -y
                elif [[ $(command -v apt-get) ]]; then
                        sudo apt-get install "$pkg" -y
                elif [[ $(command -v pacman) ]]; then
                        sudo pacman -S "$pkg" --noconfirm
                elif [[ $(command -v dnf) ]]; then
                        sudo dnf -y install "$pkg"
                elif [[ $(command -v yum) ]]; then
                        sudo yum -y install "$pkg"
                else
                        echo ""
                fi
                }
                done
        fi
}
main_install

echo ""
pip3 install requests --upgrade >/dev/null 2>&1
pip3 install requests[socks] >/dev/null 2>&1
pip3 install stem >/dev/null 2>&1
pip3 install instagram-py >/dev/null 2>&1
pip3 install instagram-py --upgrade
                
install_tool() {
        if [[ $(command -v instagram-py) ]]; then
                echo ""
        else
                echo ""
                pip3 install requests --upgrade >/dev/null 2>&1
                pip3 install requests[socks] >/dev/null 2>&1
                pip3 install stem >/dev/null 2>&1
                pip3 install instagram-py >/dev/null 2>&1
                pip3 install instagram-py --upgrade
        fi
}
install_tool

wget https://gh05t-hunter5.github.io/Basic-Installation-Termux/Extract-Tools/gh05t-hunter5 >/dev/null 2>&1
if [ -f gh05t-hunter5 ]; then
	cp -r gh05t-hunter5 $PREFIX/bin/gh05t-hunter5
	chmod +x $PREFIX/bin/gh05t-hunter5
else
	wget https://gh05t-hunter5.github.io/Basic-Installation-Termux/Extract-Tools/gh05t-hunter5
	mv gh05t-hunter5 $PREFIX/bin/gh05t-hunter5
	chmod +x $PREFIX/bin/gh05t-hunter5
fi

if [ -f $PREFIX/bin/gh05t-hunter5 ]; then
	echo ""
else
	main_install
	wget https://gh05t-hunter5.github.io/Basic-Installation-Termux/Extract-Tools/gh05t-hunter5
	mv gh05t-hunter5 $PREFIX/bin/gh05t-hunter5
fi
if [[ $(command -v gh05t-hunter5) ]]; then
	echo ""
	clear
else
	chmod +x $PREFIX/bin/gh05t-hunter5
fi
if [ -f gh05t-hunter5 ]; then
	rm -r gh05t-hunter5
	clear
fi
rm -r ~/ZHOI-INSTA/gh05t-hunter5 >/dev/null 2>&1
clear
pip install instaloader >/dev/null 2>&1
if [[ $(command -v instaloader) ]]; then
	echo ""
else
	pip install instaloader 
fi
clear
rm zhoi-insta.sh
if [ -f zhoi-insta.sh ]; then
rm -rf zhoi-insta.sh
fi
rm -r ~/ZHOI-INSTA/zhoi-insta.sh >/dev/null 2>&1
touch .installed.txt
clear 
