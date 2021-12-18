sudo pacman -S xorg-server xorg-apps xorg-xinit
cd /usr/aur && git clone https://aur.archlinux.org/i3-gaps-rounded-git.git
cd i3-gaps-rounded-git && mkpkg -si

#sudo pacman -S i3-gaps i3blocks i3lock numlockx
sudo pacman -S lightdm lightdm-gtk-greeter --needed
sudo systemctl enable lightdm
sudo pacman -S noto-fonts ttf-ubuntu-font-family ttf-dejavu ttf-freefont ttf-liberation ttf-droid ttf-roboto terminus-font
sudo pacman -S rxvt-unicode ranger rofi dmenu --needed
sudo pacman -S firefox --needed


cd /usr/aur && git clone https://aur.archlinux.org/nomachine.git
cd nomachine && makepkg -si