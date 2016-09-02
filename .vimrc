" --- Key Functionality ---                                                
set nocompatible                                                                    
let mapleader = "-"              " <leader> for all mappings 

" --- Vundle Installation and Setup ---
filetype off " Required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'             " let Vundle manage Vundle, required

Plugin 'hail2u/vim-css3-syntax'           " optimized CSS syntax
Plugin 'cakebaker/scss-syntax.vim'        " SASS syntax
Plugin 'othree/html5.vim'                 " optimized HTML syntax
Plugin 'pangloss/vim-javascript'          " optimized JavaScript syntax
Plugin 'elzr/vim-json'                    " syntax for json
Plugin 'mustache/vim-mustache-handlebars' " syntax for express-handlebars view

call vundle#end() " Make sure your plugins are before this line


" --- Essentials ---
filetype plugin indent on                                                  
syntax on                                                                  
set t_Co=256                     " Allow vim to access all 256 colors                                 
set background=dark
let g:zenburn_high_Contrast = 1  " Better visibility for brighter environments
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
                                                                           
                                                                           
" --- Commands ---                                                         
command! -nargs=* Wrap set wrap linebreak nolist                           
                                                                           
" --- Mappings ---                                                         
map <Esc><Esc> :w<CR>         " Quick way to write files & unclutter history
nmap <leader><leader> :q<CR>  " Quick way to exit files & unclutter history
                                                                           
map <leader>c i{<Esc>ea}<Esc> " Wraps curly braces around a word.                                              
map <leader>p i(<Esc>ea)<Esc> " Wraps parenthesis around a word.                                       
map <leader>l i[<Esc>ea]<Esc> " Wraps square brackets around a word.
