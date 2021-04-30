export DOTFILES_DIR=/home/hunter/Software/dotfiles

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Created by newuser for 5.8
source "$DOTFILES_DIR/powerlevel10k/powerlevel10k.zsh-theme"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Personal settings
export EDITOR="vim" 
export MANPATH="$MANPATH:$HOME/share/man"
export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:$HOME/lib:/home/hunter/lib64"
export C_INCLUDE_PATH="$C_INCLUDE_PATH:$HOME/include"
export CPLUS_INCLUDE_PATH="$CPLUS_INCLUDE_PATH:$HOME/include"
export CC=gcc
export CXX=g++
export FC=gfortran
export GOPATH="$HOME/go"
export PYTHONPATH="$HOME/lib64/python3.9/site-packages:$PYTHONPATH"
export OPENMC_CROSS_SECTIONS="/home/hunter/data/openmc_data/endfb80_hdf5/cross_sections.xml"
export CHENILLE_XS_PATH="$HOME/data/ace_data/Lib80x"

alias g="git"
