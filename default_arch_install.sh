# Set ability to install over ssh

# run passwd and enter new password

systemctl start sshd.service

ip address show

# get IP address and ssh in:

# ssh root@10.0.x.x

timedatectl set-ntp true

# set up disk
fdisk /dev/sda
n
p
default
default
-8G
n
p
default
default
default
t
2
82
w

mkfs.ext4 /dev/sda1
mkswap /dev/sda2
mount /dev/sda1 /mnt
swapon /dev/sda2

#add local mirrors
vim /etc/pacman.d/mirrorlist

## Australia
Server = https://mirror.aarnet.edu.au/pub/archlinux/$repo/os/$arch
Server = http://archlinux.mirror.digitalpacific.com.au/$repo/os/$arch
Server = https://archlinux.mirror.digitalpacific.com.au/$repo/os/$arch
Server = http://ftp.iinet.net.au/pub/archlinux/$repo/os/$arch
Server = http://mirror.internode.on.net/pub/archlinux/$repo/os/$arch
Server = http://arch.lucassymons.net/$repo/os/$arch
Server = https://arch.lucassymons.net/$repo/os/$arch
Server = http://syd.mirror.rackspace.com/archlinux/$repo/os/$arch
Server = https://syd.mirror.rackspace.com/archlinux/$repo/os/$arch
Server = http://ftp.swin.edu.au/archlinux/$repo/os/$arch

# install base
pacstrap /mnt base linux linux-firmware linux-headers base-devel neovim dhcpcd man-db man-pages texinfo networkmanager grub openssh zsh

# set fstab
genfstab -U /mnt >> /mnt/etc/fstab

# set new root
arch-chroot /mnt

# set timezone
ln -sf /usr/share/zoneinfo/Australia/Sydney /etc/localtime

hwclock --systohc

# localization
nvim /etc/locale.gen
#remove hash before the two en_AU items

locale-gen

# set hostname
echo "arch-linux" > /etc/hostname

passwd
#set a new root password

grub-install --target=i386-pc /dev/sda

grub-mkconfig -o /boot/grub/grub.cfg

systemctl enable dhcpcd
systemctl enable sshd

useradd -m -G wheel -s /bin/zsh andy
passwd andy

EDITOR=nvim visudo

#uncomment %wheel ALL=(ALL) NOPASSWD: ALL

nvim /etc/ssh/ssh_config
#unhash PasswordAuthentication yes

# local system - remove ssh details
vim ~/.ssh/known_hosts
# remove the details for the remote machine

