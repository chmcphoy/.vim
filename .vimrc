" --- Key Functionality ---          
set nocompatible                         " be iMproved
let mapleader = "\<Space>"               " <leader> for all mappings                                       

" --- Vundle Installation and Setup 
filetype off " Required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'                            " let Vundle manage Vundle, required

Plugin 'othree/html5.vim'                                " optimized HTML syntax
Plugin 'hail2u/vim-css3-syntax'                          " optimized CSS syntax
Plugin 'cakebaker/scss-syntax.vim'                       " SASS syntax
Plugin 'pangloss/vim-javascript'                         " optimized JavaScript syntax
Plugin 'othree/javascript-libraries-syntax.vim'          " syntax for JS libs & frameworks
Plugin 'elzr/vim-json'                                   " syntax for json
Plugin 'scrooloose/nerdtree'                             " navigate files quickly
Plugin 'ctrlpvim/ctrlp.vim'                              " fuzzy file finder
Plugin 'mileszs/ack.vim'                                 " search in code and filenames
Plugin 'vim-airline/vim-airline'                         " awesome and light tabline for vim
Plugin 'tpope/vim-surround'                              " quoting/parenthesizing made easy
Plugin 'mattn/emmet-vim'                                 " improve HTML & CSS workflow
Plugin 'kchmck/vim-coffee-script'                        " syntax for CoffeeScript


call vundle#end() " make sure your plugins are before this line


" --- Essentials ---
filetype plugin indent on
syntax on 
set t_Co=256                    " allow vim to access all 256 colors 
set background=dark             " dark is the way
let g:molokai_original = 1
colors molokai
colorscheme molokai

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
set laststatus=2
set number
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

" --- Mappings ---         

" fast way to save files & also unclutter history
nnoremap <leader>w :w<CR>                        

" fast way to exit files & also unclutter history
nnoremap <leader>q :q<CR>       

" source the current file fast and simple
nmap <leader>s :so %<CR>

" turn NERDTree on/off with a single command
nmap <silent> <C-N> :NERDTreeToggle<CR>          

" open up a new tab and search for something
nmap <leader>a :tab split<CR>:Ack "" <left>

" search for word under cursor in new tab
nmap <leader>A :tab split<CR>:Ack <C-r><C-w><CR>

" Ctrlp opens with <C-P>
