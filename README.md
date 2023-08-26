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
yay -S sddm-git i3-git neovim pulseaudio pavucontrol python-i3ipc python-neovim npm fish starship pfetch neofetch polybar maim i3-volume brightnessctl xf86-video-intel discord betterdiscordctl kitty-git picom-git rofi-git ksuperkey firefox lxappearance meson dunst qt5 python-gobject xclip humanity-icon-theme yaru-icon-theme hicolor-icon-theme libnotify notify-send nitrogen noto-fonts ttf-dejavu ttf-liberation noto-fonts-emoji noto-fonts-cjk 
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


