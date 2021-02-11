call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'mattn/emmet-vim'
Plug 'fatih/vim-go'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/vim-easy-align'

call plug#end()

execute pathogen#infect()

let mapleader = " "
let g:airline_powerline_fonts = 1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let g:user_emmet_leader_key=','

set rtp+=/usr/local/opt/fzf

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags

colorscheme onedark
syntax on
set number
set hlsearch
highlight Normal ctermbg=None
highlight LineNr ctermfg=DarkGrey
let NERDTreeShowHidden=1

set clipboard=unnamed
set ts=2
set sts=2
set sw=2

au BufReadPost *.hbs set syntax=mustache
