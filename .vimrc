" --- Key Functionality ---                                                
set nocompatible                                                           
let mapleader = "-"                                                        
filetype plugin indent on                                                  
syntax on                                                                  
set t_Co=256                                                               
set background=dark                                                        
colorscheme xoria256                                                       
                                                                           
                                                                           
" --- Main Configuration (a-z) ---                                         
set backspace=indent,eol,start                                             
set nobackup                                                               
execute "set colorcolumn=" . join(range(81,335), ',')                      
hi ColorColumn ctermbg=233 guibg=black                                    
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
map <Esc><Esc> :w<CR>                                                      
                                                                           
map <leader>c i{<Esc>ea}<Esc>                                              
map <leader>p i(<Esc>ea)<Esc>                                              
map <leader>l i[<Esc>ea]<Esc>                                              
map <leader>t i<<Esc>ea><Esc>  
