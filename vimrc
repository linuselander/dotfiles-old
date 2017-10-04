set nocompatible
filetype off

let mapleader=','                                     " Use , as leader key. Set before plugins load

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'morhetz/gruvbox'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-surround'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'

call vundle#end()            " required
filetype plugin indent on    " required

" Color Compatibility Settings
if &term =~ '256color'
  " disable Background Color Erase (BCE) so that color schemes
  " render properly when inside 256-color tmux and GNU screen.
  " see also http://snk.tuxfamily.org/log/vim-256color-bce.html
  set t_ut=
endif

" Theming
syntax on
colorscheme gruvbox
set background=dark
set colorcolumn=120                                   " Adds vertical line at 120 chars

" Theming Vim Airline
let g:airline_theme='gruvbox'
let g:airline_symbols_ascii = 1                       " Use plain chars in Airline UI
let g:airline#extensions#tabline#enabled = 1          " Use top as tabs for buffers
let g:airline#extensions#tabline#fnamemod = ':t'      " Show only filename on tabs
let g:airline#extensions#tabline#buffer_idx_mode = 1  " Relative numbering
set noshowmode                                        " Airline already shows mode
set laststatus=2                                      " Always show statusline for Airline to work

set cursorline                                        " Highlight current line
set relativenumber                                    " Line numbers originate from cursor position
set number                                            " Current line shows actual line number
set foldcolumn=1                                      " Show column for fold markers
set foldmethod=syntax                                 " Base folding on current file syntax
set visualbell                                        " Silent error messages

set nobackup                                          " Don't write permanent backups when overwriting files
set noswapfile                                        " Don't create .swp-files

set wildmenu
set wildignore+=*/node_modules/*
set path+=**

set tabstop=2 expandtab shiftwidth=2 smarttab         " Use 2 spaces for tabs
set hlsearch

set textwidth=0                                       " Never auto-insert hard line breaks
set wrap                                              " Wrap text when wider than window
set linebreak                                         " Wrap text according to 'breakat' instead of anywhere
set breakindent                                       " Indent wrapped text to match indentation of current line
set showbreak=+++                                     " Prefix wrapped text

" Remaps

nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
nmap <leader>- <Plug>AirlineSelectPrevTab
nmap <leader>+ <Plug>AirlineSelectNextTab