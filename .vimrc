" --- Key Functionality ---                                                                                                                                   
set nocompatible                  " be iMproved                                                   
let mapleader = "-"               " <leader> for all mappings                                          

" --- Vundle Installation and Setup ---
filetype off " Required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'             " let Vundle manage Vundle, required

Plugin 'othree/html5.vim'                                " optimized HTML syntax
Plugin 'hail2u/vim-css3-syntax'                          " optimized CSS syntax
Plugin 'cakebaker/scss-syntax.vim'                       " SASS syntax
Plugin 'pangloss/vim-javascript'                         " optimized JavaScript syntax
Plugin 'othree/javascript-libraries-syntax.vim'          " syntax for JS libs & frameworks
Plugin 'elzr/vim-json'                                   " syntax for json
Plugin 'mustache/vim-mustache-handlebars'                " Jade ftw but this still happens
Plugin 'scrooloose/nerdtree'                             " navigate files quickly

call vundle#end() " make sure your plugins are before this line

" --- Essentials ---
filetype plugin indent on
syntax on                                                                  
set t_Co=256                    " allow vim to access all 256 colors                                 
set background=dark             " dark is the way
let g:zenburn_high_Contrast = 1 " better visibility for brighter environments
colors zenburn
colorscheme zenburn                                                       
                                                                           
" --- Main Configuration (a-z) ---                                         
set backspace=indent,eol,start                                             
set nobackup                                                               
set cursorline                                                             
set encoding=utf-8                                                         
set expandtab                                                              
set nofoldenable                                                           
set history=200                                                            
set hlsearch
set ignorecase                                                                                                                                                
set incsearch
set laststatus=2
set number
set numberwidth=4
set pastetoggle=<C-p>
set ruler
set shiftwidth=2
set showcmd
set smartcase
set smartindent
set softtabstop=2
set textwidth=80
set title
set nowrap

" --- File Configs ---                                                     
autocmd FileType html setlocal shiftwidth=2 tabstop=2
autocmd FileType python setlocal expandtab shiftwidth=4 softtabstop=4

" --- Mappings ---                                                         
map <Esc><Esc> :w<CR>         " fast way to save files & also unclutter history
nmap <leader><leader> :q!<CR> " fast way to exit files & also unclutter history
map <C-n> :NERDTreeToggle<CR> " turn NERDTree on/off with a single command
