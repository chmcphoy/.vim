" Basic Vim Defaults
:set shiftwidth=4
:set incsearch
:set number
:set ignorecase
:set showcmd

" Map Specific Settings
:let mapleader = "-"
:map <leader>c i{<Esc>ea}<Esc>
:map <leader>p i(<Esc>ea)<Esc>
:map <leader>l i[<Esc>ea]<Esc>
:map <leader>t i<<Esc>ea><Esc>

" Defaults for Syntax
:syntax enable
:set background=dark
