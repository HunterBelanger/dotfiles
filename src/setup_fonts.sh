setup_fonts() {
  # We first go download the NerdFonts that I like
  mkdir $HOME/.fonts
  cd $HOME/.fonts
  wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/DejaVuSansMono.zip
  unzip DejaVuSansMono.zip
  rm DejaVuSansMono.zip
  cd $DOTFILES_DIR
}
