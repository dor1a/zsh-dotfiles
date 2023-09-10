"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  Vim initializations                                                                                                                By. Dor1  "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"+===============================================================+==============================================================================+
"| General                                                       | Comment                                                                      +
"+===============================================================+==============================================================================+
scriptencoding utf-8                                             " 
                                                                 " 
set clipboard=unnamed                                            " 
set backspace=indent,eol,start                                   " allow backspaces over everything
set autoindent                                                   " 
set smartindent                                                  " 
set textwidth=0                                                  " disable automatic line breaking
set tabstop=4                                                    " 
set shiftwidth=4                                                 " 
set softtabstop=4                                                " 
set showtabline=2                                                " always show tab pannel
set scrolloff=3                                                  " 
set ignorecase                                                   " case-insensitive by default
set smartcase                                                    " case-sensitive if keyword contains both uppercase and lowercase
set expandtab                                                    " use spaces for tabbing, by default
set splitbelow                                                   " :split  opens window below (:belowright split), including preview windows
set splitright                                                   " :vsplit opens window right (:belowright vsplit)
set completeopt=menuone,preview,longest                          " show preview and pop-up menu
set noswapfile                                                   " no fucking swap files
set nobackup                                                     " no fucking backup files
set paste                                                        " no fucking stair paste
set hls                                                          " 
                                                                 "
"+===============================================================+==============================================================================+
"+ UI                                                            | Comment                                                                      +
"+===============================================================+==============================================================================+
set number                                                       " show line numbers
set ruler                                                        " 
set cursorline                                                   " 
set lazyredraw                                                   " no redrawing during macro execution
set incsearch                                                    " 
set hlsearch                                                     " 
set showcmd                                                      " 
set showmode                                                     " 
set visualbell                                                   " 
                                                                 "
set t_Co=256                                                     " 
                                                                 "
color codedark                                                   " 
syntax on                                                        " 
                                                                 " 
"+===============================================================+==============================================================================+
"+ Plug-In                                                       | Comment                                                                      +
"+===============================================================+==============================================================================+

"+---------------------------------------------------------------+------------------------------------------------------------------------------+
"+ 0. Vundle Manager                                             |                                                                              +
"+---------------------------------------------------------------+------------------------------------------------------------------------------+
set nocompatible                                                 " be iMproved, required
filetype off                                                     " required
set rtp+=~/.vim/bundle/Vundle.vim                                " 
                                                                 "
call vundle#begin()                                              " 
  Plugin 'VundleVim/Vundle.vim'                                  " let Vundle manage Vundle, required
  Plugin 'vim-airline/vim-airline'                               " vim-airline
  Plugin 'vim-airline/vim-airline-themes'                        " vim-airline-themes
call vundle#end()                                                " 
                                                                 "
filetype plugin indent on                                        " required
                                                                 "
"+---------------------------------------------------------------+------------------------------------------------------------------------------+
"+ Vundle Brief help                                                                                                                            +
"+ :PluginList       - lists configured plugins                                                                                                 +
"+ :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate                                                             +
"+ :PluginSearch foo - searches for foo at http://vim-scripts.org/vim/scripts.html; append `!` to refresh local cache                           +
"+ :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal                                                   +
"+                                                                                                                                              +
"+ see :h vundle for more details or wiki for FAQ                                                                                               +
"+ Put your non-Plugin stuff after this line                                                                                                    +
"+----------------------------------------------------------------------------------------------------------------------------------------------+

"+---------------------------------------------------------------+------------------------------------------------------------------------------+
"+ 1. Vim-Airline                                                |                                                                              +
"+---------------------------------------------------------------+------------------------------------------------------------------------------+
let g:airline#extensions#tabline#enabled = 1                     " turn on buffer list                                                          
let g:airline_theme='atomic'                                     " select theme                                                                 
set laststatus=2                                                 " turn on bottom bar
"+---------------------------------------------------------------+------------------------------------------------------------------------------+

"+==============================================================================================================================================+
"+ Key Mapping                                                                                                                                  +
"+==============================================================================================================================================+

map <F2> <c-w><c-w>
map <F3> :Tlist<cr>

"+==============================================================================================================================================+
"+ Miscellanious                                                                                                                                +
"+==============================================================================================================================================+

" title: turn on if tmux is ON
if !empty($TMUX)
  set title
endif
