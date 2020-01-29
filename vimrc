set nocompatible  "required for vundle
filetype off	  "required for vundle

set rtp+=$HOME/.vim/bundle/Vundle.vim "required for vundle
call vundle#begin() "required for vundle ALL PLUGINS AFTER THIS STATEMENT

Plugin 'VundleVim/Vundle.vim' "Vundle packaged for package management
Plugin 'vim-airline/vim-airline' "vim status bar
Plugin 'valloric/youcompleteme' "completion engine for c/c++/python
Plugin 'scrooloose/nerdtree' "File tree option
Plugin 'terryma/vim-multiple-cursors' "Mutliple currsor to edits multiple instances of string
Plugin 'jiangmiao/auto-pairs' "Auto pair brackets and parentheses
Plugin 'octol/vim-cpp-enhanced-highlight' "enhanced c++ syntax highlighting

call vundle#end() "required for vundle ALL PLUGINS BEFORE THIS STATEMENT
filetype plugin indent on "required for vundle
colorscheme monokai
set completeopt -=preview
set number

" Settings for fortran editing
let fortran_free_source=1
let fortran_have_tabs=1
let fortran_more_precise=1
let fortran_do_enddo=1
syntax enable "For syntax highlighting

" Indentation settings
set tabstop=2 " Show tabs with 4 spaces
set shiftwidth=2 " when indenting with '>' use 4 spaces
set expandtab " on pressing tab insert 4 spaces

" Ensure UTF-8 encoding
set encoding=utf-8

" Enable powerline font for vim-airline icons
let g:airline_powerline_fonts=1

" Set glocal ycm config file
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"

" NERD Tree controls
nmap <F6> :NERDTreeToggle<CR>
