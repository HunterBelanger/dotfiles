setup_sway() {
  # Copy configs to .config/sway
  cp $DOTFILES_DIR/sway.conf $HOME/.config/sway/config
  cp $DOTFILES_DIR/status.sh $HOME/.config/sway/status.sh
}
