" Author : Meet Dadhania (pyth0x)
"====================[ Plugins ]==================
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'jiangmiao/auto-pairs'
Plugin 'tpope/vim-sensible'
Plugin 'RRethy/vim-illuminate'
Plugin 'preservim/nerdtree'
Plugin 'Yggdroot/indentLine'
Plugin 'preservim/nerdcommenter'
Plugin 'zhou13/vim-easyescape'
Plugin 'junegunn/vim-easy-align'
Plugin 'ervandew/supertab'
Plugin 'terryma/vim-smooth-scroll'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'bluz71/vim-moonfly-statusline'
Plugin 'airblade/vim-gitgutter'
call vundle#end()
filetype plugin indent on

" ==============[ Bindings ]=======================
map <F2> :NERDTreeToggle <CR>
map <F8> :vs ~/.vimrc <CR>
let mapleader = " "
inoremap jk <ESC>
tnoremap jk <C-\><C-n>
nnoremap ; :
noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 0, 2)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 0, 2)<CR>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 0, 4)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 0, 4)<CR>
nnoremap <silent> <leader>f :FZF<cr>
nnoremap <silent> <leader>F :FZF ~<cr>
vmap '' :w !pbcopy<CR><CR>

" =============[ Remap ESC ]=======================
" let g:easyescape_chars = { "j": 1, "k": 1 }

" =============[ Hard Mode ]=======================
let g:hardtime_default_on = 1
let g:list_of_disabled_keys= ["<UP>", "<DOWN>", "<LEFT>", "<RIGHT>"]
let g:hardtime_maxcount = 100
" let g:indentLine_enabled = 1

" ================[ MISC ]=========================
syntax on " Syntax highlighting
colorscheme slate
set colorcolumn=100
highlight ColorColumn ctermbg=red guibg=lightgrey
set background=dark " Solarized color theme
set noswapfile
set cursorline
set mouse=a " copy paste using mouse
set autoread " auto reload file when they change in memory
set encoding=utf-8
set nu rnu
set tabstop=4
set shiftwidth=4
set expandtab
set nowrap
set clipboard+=unnamed,unnamedplus
set foldmethod=syntax
set foldnestmax=10
set nofoldenable
set foldlevel=2
