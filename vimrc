set nocompatible              " be iMproved
filetype off                  " required!

colorscheme Tomorrow-Night-Bright
"set background=dark
"colorscheme solarized

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" My bundles here:
" original repos on GitHub
Plugin 'Valloric/YouCompleteMe'
Plugin 'kien/ctrlp.vim'
Plugin 'bling/vim-airline'
Plugin 'chriskempson/tomorrow-theme'
Plugin 'scrooloose/syntastic'

call vundle#end()   "required

set number
filetype plugin on
set ofu=syntaxcomplete#Complete

syntax on
set background=dark "light

set tabstop=4
set expandtab
set softtabstop=4
set shiftwidth=4
filetype indent plugin on

"syntastic will use pyflakes for python (instead of flake8 default)
"let g:pyflakes_use_quickfix = 0

" If you prefer the Omni-Completion tip window to close when a selection is
" " made, these lines close it on movement in insert mode or when leaving
" " insert mode
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif


"map <F2> :NERDTreeToggle<CR>
"map <F3> ::TlistToggle<CR>

set backspace=indent,eol,start

set laststatus=2


" syntastic
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1

"let g:syntastic_check_on_wq = 0

set colorcolumn=80

set ignorecase
set smartcase
set incsearch
