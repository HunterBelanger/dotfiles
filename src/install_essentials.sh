install_essentials_fedora() {
  # Good for Fedora 30 or later, this installs all dependencies for my own
  # development, and also things I need to build i3-gaps, and use i3 and such.
  sudo dnf install cmake gcc make python-devel git ctags vim alacritty zsh \
    xbacklight feh xorg-x11-drv-libinput xorg-x11-server-utils \
    xorg-x11-drivers xorg-x11-xinit zip unzip i3status dmenu
}
