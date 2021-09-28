"===============================================================================
" Vundle
set nocompatible  "required for vundle
filetype off	  "required for vundle

set rtp+=$HOME/.vim/bundle/Vundle.vim "required for vundle
call vundle#begin() "required for vundle ALL PLUGINS AFTER THIS STATEMENT

Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'ycm-core/YouCompleteMe'
Plugin 'HunterBelanger/vim-code-dark'
Plugin 'scrooloose/nerdtree'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'TagHighlight'

call vundle#end() "required for vundle ALL PLUGINS BEFORE THIS STATEMENT
filetype plugin indent on "required for vundle
"-------------------------------------------------------------------------------

"===============================================================================
" Syntax Highlighting and Completion

" Fortran options
let fortran_free_source=1
let fortran_have_tabs=1
let fortran_more_precise=1
let fortran_do_enddo=1
syntax enable "For syntax highlighting

" Options for TagHighlight which provides 
" extra highlighting good-ness in C/C++
if ! exists('g:TagHighlightSettings')
  let g:TagHighlightSettings = {}
endif
let g:TagHighlightSettings['TagFileName'] = 'tags'
let g:TagHighlightSettings['CtagsExecutable'] = 'ctags'

" YCM Config file
"let g:ycm_global_ycm_extra_conf = "~/.vim/ycm_extra_conf.py"

let g:cpp_class_scope_highlight = 1
let g:cpp_clas_decl_highlight = 1
let g:cpp_posix_standard = 1
let g:cpp_experimental_template_highlight = 1
"-------------------------------------------------------------------------------

"===============================================================================
" Editor Settings
colorscheme codedark
set completeopt -=preview
set number
set relativenumber

" Resizing Keybindings
noremap <silent> <C-S-H> :vertical resize +1<CR>
noremap <silent> <C-S-L> :vertical resize -1<CR>
noremap <silent> <C-S-J> :resize +1<CR>
noremap <silent> <C-S-K> :resize -1<CR>

" Ensure UTF-8 encoding
set encoding=utf-8

" Enable powerline font for vim-airline icons
let g:airline_powerline_fonts=1

" Set dark_plus theme for vim-airline
let g:airline_theme='codedark'

" NERD Tree controls
nmap <F6> :NERDTreeToggle<CR>

" Indentation settings
set tabstop=2 " Show tabs with 2 spaces
set shiftwidth=2 " when indenting with '>' use 2 spaces
set softtabstop=2
set expandtab " on pressing tab insert 2 spaces
filetype plugin indent on

" Fixes background issues with Kitty terminal emulator
let &t_ut=''

" Needed to keep 2 space indentation on python files
autocmd FileType python setlocal shiftwidth=2 tabstop=2 softtabstop=2 expandtab
"-------------------------------------------------------------------------------
