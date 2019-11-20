#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '


# QT scaling requirments
#export QT_AUTO_SCREEN_SCALE_FACTOR=2
#export QT_FONT_DPI=180

# Use Clang and Clang++
export CC=clang
export CXX=clang++
export OMPI_MPICC=clang
export OMPI_MPICXX=clang++

# Increase the stacksize 
ulimit -s unlimited
 
# Add Software/bin to PATH
export PATH=$PATH:$HOME/Software/bin

# Number of OpenMP threads
export OMP_NUM_THREADS=8

# Additons for powerline-shell
function _update_ps1() {
        PS1=$(powerline-shell $?)
        
}

if [[ $TERM != linux && ! $PROMPT_COMMAND =~ _update_ps1  ]]; then
        PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi
# END Powerline-shell

neofetch
