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

sudo pacman -S htop neofetch conky networkmanager picom

mkdir ~/.config/picom
cp /etc/xdg/picom.conf ~/.config/picom/picom.conf

mkdir ~/.local/share/fonts/

cp -r ~/.config/fonts/Terminus ~/.local/share/fonts/
cp -r ~/.config/fonts/MesloLGS ~/.local/share/fonts/

git clone https://github.com/powerline/fonts.git --depth=1

cd fonts && ./install.sh

cd .. && rm -rf fonts

cd /usr/aur

git clone https://aur.archlinux.org/ttf-font-awesome-4.git

cd ttf-font-awesome-4 && makepkg -si

cd ..

git clone https://aur.archlinux.org/nerd-fonts-complete.git

cd nerd-fonts-complete && makepkg -si

cd ~
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

sudo pacman -S nodejs-lts-gallium npm

cd /usr/aur

git clone https://aur.archlinux.org/code-minimap.git

cd code-minimap && makepkg -si