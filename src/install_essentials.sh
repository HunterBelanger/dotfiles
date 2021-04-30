install_essentials_fedora() {
  # Good for Fedora 30 or later, this installs all dependencies for my own
  # development, and also things I need to build i3-gaps, and use i3 and such.
  sudo dnf install cmake gcc make python-devel git ctags vim alacritty zsh \
    xbacklight feh xorg-x11-drv-libinput xorg-x11-server-utils libxcb-devel \
    xcb-util-keysyms-devel xcb-util-devel xcb-util-wm-devel xcb-util-xrm-devel \
    yajl-devel libXrandr-devel startup-notification-devel libev-devel \
    xcb-util-cursor-devel libXinerama-devel libxkbcommon-devel \
    libxkbcommon-x11-devel pcre-devel pango-devel automake zip unzip
}
