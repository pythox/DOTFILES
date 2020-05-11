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
Plugin 'gabrielsimoes/cfparser.vim'
Plugin 'christoomey/vim-run-interactive'
call vundle#end()
filetype plugin indent on

" ==============[ Bindings ]=======================

let mapleader = " "
nnoremap ; :
map <F8> :vs ~/.vimrc<CR> 
map <F2> :NERDTreeToggle <CR>
map <F3> :tabnew ~/code/cp/input<CR>
" RUN C++ FILES FROM EDITOR
autocmd filetype cpp nnoremap <F5> :w <bar> !clear && printf "INPUT\n---------------------------------\n" && cat ~/code/cp/input && printf "\nOUTPUT\n----------------------------------\n" && g++ -ulimit -Wall -Wno-unused-result -std=c++14 % && ./a.out < ~/code/cp/input<CR>

noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 0, 2)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 0, 2)<CR>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 0, 4)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 0, 4)<CR>
nnoremap <silent> <leader>f :FZF<cr>
nnoremap <silent> <leader>F :FZF ~<cr>
nnoremap <leader><leader> :tabn<CR>
vmap '' :w !pbcopy<CR><CR>

" =============[ Plugin Variables ]=======================
let g:easyescape_chars = { "j": 1, "k": 1 }
let g:indentLine_enabled = 1
let g:cf_default_language = "50"
let g:cf_pl_by_ext_custom = {'.cpp': "50"}

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
