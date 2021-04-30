# First get the current location to use in install
export DOTFILES_DIR="$(pwd)"

source src/install_essentials.sh
source src/setup_vim.sh
source src/setup_alacritty.sh
source src/setup_zsh.sh
source src/setup_fonts.sh

# Get fonts
printf "\nGrabbing nerd fonts...\n"
setup_fonts

# Setup vim
printf "\nSetting up vim...\n"
setup_vim

# Setup alacritty
printf "\nSetting up alacritty...\n"
setup_alacritty

# Setup zsh
printf "\nSetting up zsh...\n"
setup_zsh
