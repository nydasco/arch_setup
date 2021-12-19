sudo pacman -S xorg-server xorg-apps xorg-xinit
sudo pacman -S i3-gaps

sudo pacman -S lightdm lightdm-gtk-greeter --needed
sudo systemctl enable lightdm
sudo pacman -S noto-fonts ttf-ubuntu-font-family ttf-dejavu ttf-freefont ttf-liberation ttf-droid ttf-roboto terminus-font
sudo pacman -S rxvt-unicode ranger rofi dmenu --needed
sudo pacman -S firefox --needed


cd /usr/aur && git clone https://aur.archlinux.org/nomachine.git
cd nomachine && makepkg -si

cd /usr/aur && git clone https://aur.archlinux.org/polybar.git
cd polybar && makepkg -si

sudo pacman -S xorg-fonts-misc

sudo pacman -S feh

cd /usr/aur && git clone https://aur.archlinux.org/rofi-dmenu.git
cd rofi-dmenu && makepkg -si

sudo pacman -S docker docker-compose
sudo systemctl enable docker

sudo pacman -S htop neofetch conky

ln -s ~/.config/Xresources ~/.Xresources