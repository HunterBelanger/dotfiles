setup_alacritty_symlinks() {
  ln -s $DOTFILES_DIR/alacritty.yml $HOME/.alacritty.yml
}

setup_alacritty() {
  setup_alacritty_symlinks
}
