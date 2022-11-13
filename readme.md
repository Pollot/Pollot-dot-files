# Screenshot
<img src="screenshots/update1.png">

# Table of contents
- [List of software](#list-of-software)
    - [Qtile](#qtile)
    - [Catppuccin](#catppuccin)
    - [Wallpapers](#wallpapers)
    - [Picom](#picom)
    - [Zsh](#zsh)
    - [Rofi](#rofi)
    - [Nerd Font](#nerd-font)
    - [Grub](#grub)
- Arch
    - [Installation](#installation)
        - [Basic configuration](#basic-configuration)
        - [Packages](#packages)
        - [Dotfiles](#dotfiles)
        - [Final steps](#final-steps)
    - [Post installation](#post-installation)
    - [Optional software](#optional-software)
        - [Recommended packages](#recommended-packages)
        - [Gaming](#gaming)
- Fedora

# List of software
- Window manager: [Qtile](#qtile)
- Colour scheme: [Catppuccin](#catppuccin)
- Wallpapers: [Catppuccin](#wallpapers)
- GTK theme: [Catppuccin](https://github.com/catppuccin/gtk)
- Cursor theme: [Volantes](https://www.gnome-look.org/p/1356095)
- Compositor: [Picom](#picom)
- Shell: [Zsh](#zsh)
- Terminal: [Kitty](https://sw.kovidgoyal.net/kitty/)
- Prompt: [Starship](https://starship.rs/)
- Launcher: [Rofi](#rofi)
- Fetch: [Neofetch](https://github.com/dylanaraps/neofetch)
- Notifications: [Dunst](https://dunst-project.org/)
- Nerd Font: [Fira Code](#nerd-font)
- Bootloader: [Grub](#grub)

## Catppuccin
Catppuccin is a community-driven pastel theme that aims to be the middle ground between low and high contrast themes. It consists of 4 soothing warm palettes with 26 eye-candy colors each, perfect for coding, designing, and much more!
- [Official repository](https://github.com/catppuccin/catppuccin)
- [Project's documentation](https://github.com/catppuccin/catppuccin/tree/dev/docs)

I use **Catppuccin Mocha** palette in my configurations.
## Qtile
#### Information:
- [Official website](http://www.qtile.org/)
- [Qtile documentation](http://docs.qtile.org/en/stable/)
- [Qtile extras documentation](https://qtile-extras.readthedocs.io/en/stable/index.html)
#### Dependencies:
- [Qtile extras](https://qtile-extras.readthedocs.io/en/stable/manual/install.html)
- [Psutil](https://pypi.org/project/psutil/)
- [Nerd font](#nerd-font)
- [Open Sans font](https://fonts.google.com/specimen/Open+Sans)

## Wallpapers
[Official repository](https://github.com/catppuccin/wallpapers). Wallpapers I use:
- Modified version (gimp file included) of [unicat](https://github.com/catppuccin/wallpapers/blob/main/minimalistic/black5_unicat.png) by [Pocco81](https://github.com/Pocco81)
- [Flatppuccin](https://github.com/catppuccin/wallpapers/blob/main/flatppuccin/flatppuccin_4k_macchiato.png) by [Adal Zanabria](https://github.com/AdalZanabria)

## Picom
There are a lot of Picom forks, but I decided to stick to the main one (made by [yshui](https://github.com/yshui)). However, the latest version is required. The easiest way to install it is by using the [AUR](https://aur.archlinux.org/).
- [Official repository](https://github.com/yshui/picom)
- [AUR package](https://aur.archlinux.org/packages/picom-git)

## Zsh
[Official website](https://www.zsh.org/). Plugins I use:
- [Autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
- [Syntax highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
- [Directory history](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/dirhistory)
- [Sudo](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/sudo)

## Rofi
I'm **not** an author of the Rofi config included in this repository. It's: [Catppuccin for Rofi - Siduck's Theme](https://github.com/catppuccin/rofi/tree/main/basic).

## Nerd Font
I use **Fira Code Nerd Font Mono**. You can download its latest release from: [Nerd Fonts website](https://www.nerdfonts.com/font-downloads).

**<p align="center">Remember to install the mono variant of chosen Nerd Font. Icons are not centered in the regular version.</p>**

## Grub
**Not included in my repository**. I use: [Catppuccin for Grub](https://github.com/catppuccin/grub).

---

<h1 align="center">Arch</h1>

# Installation

### Basic configuration
1. Install Arch using the [official installation guide](https://wiki.archlinux.org/title/installation_guide).

2. Enable multilib repository (required for 32-bit software and libraries on 64-bit installs). Uncomment the ```[multilib]``` section in ```/etc/pacman.conf```:
```
[multilib]
Include = /etc/pacman.d/mirrorlist
```

3. Uncomment the following line in ```/etc/sudoers``` to allow members of the wheel group to use sudo:
```
%wheel ALL=(ALL:ALL) ALL
```

4. Create a user and add it to the wheel group:
```
useradd -mG wheel [username]
```

5. Set user's password:
```
passwd [username]
```

6. Log out from the root account and log into the newly created one.

### Packages
1. Update system:
```
sudo pacman -Syu
```

2. Install base-devel package if you haven't already:
```
sudo pacman -S --needed base-devel
```

3. Install audio server:
```
sudo pacman -S pipewire lib32-pipewire pipewire-alsa pipewire-pulse \
pipewire-jack lib32-pipewire-jack wireplumber
```

4. Install basic packages:
```
sudo pacman -S xorg-server xorg-xinit git zsh kitty starship firefox rofi neofetch alsa-utils \
pavucontrol flameshot htop gnome-keyring lxsession-gtk3 lxappearance dunst pacman-contrib \
xss-lock
```

5. Install AUR helper *yay* :
```
git clone https://aur.archlinux.org/yay

cd yay

makepkg -si

cd
```

6. Install AUR packages:
```
yay -S qtile-git qtile-extras-git picom-git catppuccin-gtk-theme-mocha qt5-styleplugins \
betterlockscreen
```

7. Install drivers. On Nvidia graphics card follow [this guide](https://wiki.archlinux.org/title/NVIDIA). **For the Maxwell (NV110/GMXXX) series and newer:**
```
sudo pacman -S nvidia nvidia-settings lib32-nvidia-utils
```

### Dotfiles

1. Clone this repository:
```
git clone https://github.com/Pollot/dotfiles
```

2. Install dotfiles:
```
cd dotfiles/installation

./install-full.sh
```

### Final steps

1. Reboot:
```
reboot
```

2. X server session should automatically start up after logging in.

3. Use nvidia-settings to change your displays configuration.

4. Use lxappearance to change your GTK and cursor theme.

# Post installation
1. Change X11 keyboard layout in autostart.sh:
```
setxkbmap [your layout]
```

2. Install and enable [reflector](https://wiki.archlinux.org/title/reflector):
```
sudo pacman -S reflector

sudo systemctl enable reflector
```
Reflector service parameters are specified in ```/etc/xdg/reflector/reflector.conf```. Customize it to your preference.

3. Enable automatic unlocking gnome-keyring on login. Edit ```/etc/pam.d/login``` with root priviligies and add the following lines ([full guide](https://wiki.archlinux.org/title/GNOME/Keyring)):
```
auth       optional     pam_gnome_keyring.so

session    optional     pam_gnome_keyring.so auto_start

password   optional     pam_gnome_keyring.so
```

4. Configure your printer. Install required packages:
```
sudo pacman -S cups system-config-printer

sudo systemctl enable cups
```
Then open printer configuration software and add your printer.

# Optional software

### Recommended packages

- Flatpak: [flatpak](https://flatpak.org/setup/Arch)
- Nvidia VA-API driver: [libva-nvidia-driver](https://aur.archlinux.org/packages/libva-nvidia-driver)<sup>AUR</sup>
- Disk utility: [gnome-disk-utility](https://archlinux.org/packages/extra/x86_64/gnome-disk-utility/)
- GUI file manager: [nemo](https://wiki.archlinux.org/title/Nemo), [nemo-fileroller](https://archlinux.org/packages/?name=nemo-fileroller)
- TUI file manager: [lf](https://archlinux.org/packages/community/x86_64/lf/)
- Text/Code editor: [visual-studio-code-bin](https://aur.archlinux.org/packages/visual-studio-code-bin)<sup>AUR</sup>
- Password manager: [keepassxc](https://archlinux.org/packages/community/x86_64/keepassxc/)
- Github client: [github-cli](https://archlinux.org/packages/community/x86_64/github-cli/)
- Communication: [discord](https://wiki.archlinux.org/title/Discord), [signal-desktop](https://archlinux.org/packages/community/x86_64/signal-desktop/)
- Office suite: [libreoffice-fresh](https://wiki.archlinux.org/title/LibreOffice)
- Graphic design: [gimp](https://wiki.archlinux.org/title/GIMP)
- Video editing: [kdenlive](https://archlinux.org/packages/extra/x86_64/kdenlive/)

Installation:
```
sudo pacman -S flatpak gnome-disk-utility nemo nemo-fileroller lf keepassxc github-cli \
discord signal-desktop libreoffice-fresh gimp kdenlive

yay -S libva-nvidia-driver visual-studio-code-bin
```

### Gaming

- [steam](https://wiki.archlinux.org/title/steam)
- [lutris](https://archlinux.org/packages/community/any/lutris/)
- [ProtonUp-Qt](https://flathub.org/apps/details/net.davidotek.pupgui2)
- [xone-dkms](https://aur.archlinux.org/packages/xone-dkms)<sup>AUR</sup> (requires [linux-headers](https://archlinux.org/packages/core/x86_64/linux-headers/))

Installation:
```
sudo pacman -S steam lutris linux-headers

yay -S xone-dkms

flatpak install flathub net.davidotek.pupgui2
```

Lutris wine dependencies:
```
sudo pacman -S --needed wine-staging giflib lib32-giflib libpng lib32-libpng libldap lib32-libldap gnutls lib32-gnutls \
mpg123 lib32-mpg123 openal lib32-openal v4l-utils lib32-v4l-utils libpulse lib32-libpulse libgpg-error \
lib32-libgpg-error alsa-plugins lib32-alsa-plugins alsa-lib lib32-alsa-lib libjpeg-turbo lib32-libjpeg-turbo \
sqlite lib32-sqlite libxcomposite lib32-libxcomposite libxinerama lib32-libgcrypt libgcrypt lib32-libxinerama \
ncurses lib32-ncurses ocl-icd lib32-ocl-icd libxslt lib32-libxslt libva lib32-libva gtk3 \
lib32-gtk3 gst-plugins-base-libs lib32-gst-plugins-base-libs vulkan-icd-loader lib32-vulkan-icd-loader
```

---

<h1 align="center">Fedora</h1>