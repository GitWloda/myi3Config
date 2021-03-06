#!/bin/bash
sudo cp ./pacman.conf /etc/pacman.conf
sudo pacman -Suyy
sudo pacman --noconfirm -S --needed lxappaearance dunst discord python-gobject imagemagick xsettingsd playerctl obs-studio alsa-utils fd unzip ffmpegthumbnailer python-pdftotext  ueberzug ranger bat feh git python-pywal ttf-dejavu alacritty discord nemo htop pulseaudio pavucontrol picom dunst numlockx chromium noto-fonts-emoji zsh-autosuggestions

#NVIDIA -KernelLinux :
#sudo pacman --noconfirm -S --needed nvidia nvidia-utils nvidia-settings opencl-nvidia xorg-server xorg-fonts-encodings xorg-server-common xorg-setxkbmap xorg-xauth xorg-xinit xorg-xkbcomp xorg-xmodmap xorg-xprop xorg-xrandr xorg-xrdb xorg-xset

sudo pacman --noconfirm -S --needed xorg-server xorg-fonts-encodings xorg-server-common xorg-setxkbmap xorg-xauth xorg-xinit xorg-xkbcomp xorg-xmodmap xorg-xprop xorg-xrandr xorg-xrdb xorg-xset 

mkdir -p ~/git

sudo pacman --noconfirm -S --needed base-devel curl gzip jq skim
mkdir -p ~/git/shaur
git clone https://github.com/x7429/shaur.git ~/git/shaur
cd ~/git/shaur
sudo make install
shaur -y
cd -
shaur -S i3-gaps-rounded-git
cp -r ./i3 ~/.config
chmod 777 ./contInst.sh
echo "i3-sensible-terminal -e \"./contInst.sh\" & " > ~/.xinitrc
echo "exec i3" >> ~/.xinitrc
startx
