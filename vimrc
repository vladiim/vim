set nocompatible
call plug#begin()
  Plug 'preservim/nerdtree'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'preservim/nerdcommenter'
  Plug 'mattn/emmet-vim'
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'junegunn/fzf.vim'
  Plug 'fatih/vim-go'
  Plug 'junegunn/fzf'
  Plug 'junegunn/vim-easy-align'
	Plug 'wincent/command-t'
call plug#end()

set number

let mapleader = " "
let g:airline_powerline_fonts = 1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let g:user_emmet_leader_key=','

set rtp+=/usr/local/opt/fzf

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags

filetype plugin indent on
syntax on
runtime! config/**/*.vim

set hlsearch
highlight Normal ctermbg=None
highlight LineNr ctermfg=DarkGrey
let NERDTreeShowHidden=1

set clipboard=unnamed
set ts=2
set sts=2
set sw=2

au BufReadPost *.hbs set syntax=mustache

