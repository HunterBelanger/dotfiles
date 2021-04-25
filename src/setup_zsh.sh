install_powerlevel10k() {
  git clone --depth=1 https://github.com/romkatv/powerlevel10k.git
}

set_zsh_symlinks() {
  ln -s $DOTFILES_DIR/zshrc $HOME/.zshrc
  ln -s $DOTFILES_DIR/p10k.zsh $HOME/.p10k.zsh
}

edit_zshrc() {
 sed -i '1d' zshrc
 sed -i '1iexport DOTFILES_DIR='"$DOTFILES_DIR" zshrc
}

setup_zsh() {
  install_powerlevel10k
  edit_zshrc
  set_zsh_symlinks
}
