# Must have run install_essentials first !

install_vundle() {
  git clone https://github.com/VundleVim/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim
}

run_vundle() {
  vim +'PluginInstall' +qa
}

build_ycm() {
  cd $HOME/.vim/bundle/YouCompleteMe
  python install.py --clangd-completer --go-completer --rust-completer
  cd $DOTFILES_DIR
}

set_vim_symlinks() {
  ln -s $DOTFILES_DIR/vim $HOME/.vim
  ln -s $DOTFILES_DIR/vimrc $HOME/.vimrc
}

setup_vim() {
  set_vim_symlinks
  install_vundle
  run_vundle
  build_ycm
}
