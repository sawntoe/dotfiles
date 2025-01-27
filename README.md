# dotfiles

## Setup
Enable the multilib repo and install yay.

```
sed -i 's/#[multilib]/[multilib]/' /etc/pacman.conf
pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
```

```
yay -S sddm-git i3-git neovim pulseaudio pavucontrol python-i3ipc python-neovim npm fish starship pfetch neofetch polybar maim i3-volume brightnessctl xf86-video-intel discord betterdiscordctl kitty-git picom-git rofi-git ksuperkey firefox lxappearance meson dunst qt5 python-gobject xclip humanity-icon-theme yaru-icon-theme hicolor-icon-theme libnotify nitrogen noto-fonts ttf-dejavu ttf-liberation noto-fonts-emoji noto-fonts-cjk openresolv openvpn openvpn-update-systemd-resolved gef-git
```

## SDDM Setup
move `sugar-candy` to /usr/share/sddm/themes and add the following to /etc/sddm.conf

```
[Theme]
Current=sugar-candy
```

## ProtonVPN-OpenVPN setup

Make a file called login.conf where your vpn configs are, and put your username in the first line and your password on the second.
```
echo "auth-user-pass login.conf" | tee -a *.ovpn
echo "dhcp-option DOMAIN-ROUTE ." | tee -a *.ovpn
sed -i 's/\/etc\/openvpn\/update-resolv-conf/\/usr\/bin\/update-systemd-resolved/' *.ovpn
```

## GEF setup

```
echo source /usr/share/gef/gef.py >> ~/.gdbinit
```
