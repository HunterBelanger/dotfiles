install_essentials_fedora() {
  # Good for Fedora 30 or later
  sudo dnf install cmake gcc make python-devel git ctags vim alacritty zsh
}

install_essentials_ubuntu() {
  # Good for Ubuntu 16.04 or later
  sudo apt install build-essential cmake python3-dev git ctags vim alacritty zsh
}
