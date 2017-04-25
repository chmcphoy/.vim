""""""""""""""""""""""""""""""
" => .vimrc of Chuma McPhoy
""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""
" => Core Essentials
""""""""""""""""""""""""""""""
set nocompatible                         " be iMproved
let mapleader = "\<Space>"               " <leader> for all mappings                                       

""""""""""""""""""""""""""""""
" => Vundle Plugin Setup 
""""""""""""""""""""""""""""""
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
Plugin 'scrooloose/nerdtree'                             " navigate files within a tree-like structure
Plugin 'ctrlpvim/ctrlp.vim'                              " fuzzy file finder
Plugin 'mileszs/ack.vim'                                 " search in code and filenames
Plugin 'vim-airline/vim-airline'                         " awesome and light tabline for vim
Plugin 'tpope/vim-surround'                              " quoting/parenthesizing made easy
Plugin 'mattn/emmet-vim'                                 " improve HTML & CSS workflow
Plugin 'kchmck/vim-coffee-script'                        " syntax for CoffeeScript
Plugin 'fatih/vim-go'                                    " Go development plugin
Plugin 'raimondi/delimitmate'			         " insert mode auto-completion for quotes, parens, brackets, etc.
Plugin 'tpope/vim-fugitive'                              " a Git wrapper so awesome, it should be illegal

call vundle#end() " make sure your plugins are before this line

filetype plugin indent on

""""""""""""""""""""""""""""""
" => Vim UI
""""""""""""""""""""""""""""""
syntax on 
set t_Co=256
set background=dark
"let g:molokai_original = 1
colors molokai
colorscheme molokai

""""""""""""""""""""""""""""""
" => Main Configuration (a-z)
""""""""""""""""""""""""""""""
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
set noet

""""""""""""""""""""""""""""""
" => File Configs
""""""""""""""""""""""""""""""
autocmd FileType html,css setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType javascript,coffee setlocal shiftwidth=4 tabstop=4 softtabstop=4
autocmd FileType go setlocal shiftwidth=4 tabstop=4 softtabstop=4

""""""""""""""""""""""""""""""
" => Mappings
""""""""""""""""""""""""""""""
nmap <leader>w :w<CR>
nmap <leader>q :q<CR>       
nmap <leader>o :only<CR>       
nmap <leader>s :so %<CR>
nmap <leader>v :vsp<CR><C-w><C-w>
nmap <leader>hs :sp<CR><C-w><C-w>

" hitting jj will jump out of insert mode
inoremap jj <esc>

" find should be quick and intuitive
nmap <leader>f /

" <Ctrl-l> removes all search highlighting.
nnoremap <silent> <C-l> :nohl<CR><C-l>

" fast tab navigation
nmap <leader>n :tabnext<cr>
nmap <leader>t :tabnew<cr>


""""""""""""""""""""""""""""""
" => Plugin Configs
""""""""""""""""""""""""""""""
" => Ack
nmap <leader>a <CR>:Ack ""<left>
nmap <leader>A :tab split<CR>:Ack "\W<C-r><C-w>\W"<CR>

" => CtrlP
let g:ctrlp_custom_ignore = '\v[\/](node_modules|coverage|target|dist|build)|(\.(swp|ico|git|svn|png|jpg|gif|ttf))$'	" CtrlP won't show results from node_modules

" => Emmet
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

" => Fugitive
nnoremap <Leader>gs :Gstatus<CR>
nnoremap <Leader>gc :Gcommit<CR>
nnoremap <Leader>gl :Glog<CR>
nnoremap <Leader>gb :Git branch<CR>

" => NERDTree
nmap <silent> <C-N> :NERDTreeToggle<CR>          

" => Be aware of available Go mappings
" au FileType go nmap <leader>r <Plug>(go-run)
" au FileType go nmap <leader>b <Plug>(go-build)
" au FileType go nmap <leader>t <Plug>(go-test)
" au FileType go nmap <leader>c <Plug>(go-coverage)
" au FileType go nmap <leader>gb <Plug>(go-doc-browser) 
