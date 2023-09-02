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
yay -S sddm-git i3-git neovim pulseaudio pavucontrol python-i3ipc python-neovim npm fish starship pfetch neofetch polybar maim i3-volume brightnessctl xf86-video-intel discord betterdiscordctl kitty-git picom-git rofi-git ksuperkey firefox lxappearance meson dunst qt5 python-gobject xclip humanity-icon-theme yaru-icon-theme hicolor-icon-theme libnotify notify-send nitrogen noto-fonts ttf-dejavu ttf-liberation noto-fonts-emoji noto-fonts-cjk openresolv openvpn openvpn-update-systemd-resolved gef-git
```

## SDDM Setup
move `sugar-candy` to /usr/share/sddm/themes and add the following to /etc/sddm.conf

```
[Theme]
Current=sugar-candy
```

## Neovim Setup

Install vim-plug for neovim.
```
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

Open Neovim and run `:PlugInstall`. Restart when you see an error on ":TSUpdate". Run `:Mason` and search for pyright. Press `i` to install pyright.

## ProtonVPN-OpenVPN setup

Make a file called login.conf where your vpn configs are, and put your username in the first line and your password on the second.
```
echo "auth-user-pass login.conf" | tee -a *.ovpn
echo "dhcp-option DOMAIN-ROUTE ." | tee -a *.ovpn
sed -i 's/\/etc\/openvpn\/update-resolv-conf/\/usr\/bin\/update-systemd-resolved/' *.ovpn
```

## Firefox Config Setup

Get Firefox UWP from [here](https://github.com/Guerra24/Firefox-UWP-Style/archive/refs/heads/nightly.zip)

Unzip this in your profile's chrome folder.

Options:

toolkit.legacyUserProfileCustomizations.stylesheets true

uwp.sun-valley true

## GEF setup

```
echo source /usr/share/gef/gef.py >> ~/.gdbinit
```
