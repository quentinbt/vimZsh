" be iMproved, required
set nocompatible              

" required
filetype off                  

" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
call plug#begin('~/.vim/plugged')

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" Theme
Plug 'altercation/vim-colors-solarized'

" Functional
Plug 'tpope/vim-surround'
Plug 'Raimondi/delimitMate'
Plug 'Valloric/YouCompleteMe'
Plug 'marijnh/tern_for_vim'
Plug 'elzr/vim-json'
Plug 'tpope/vim-sensible'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'gorodinskiy/vim-coloresque'
Plug 'mattn/emmet-vim'
Plug 'scrooloose/nerdcommenter'
Plug 'mileszs/ack.vim'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'terryma/vim-expand-region'
Plug 'sjl/gundo.vim'
Plug 'scrooloose/syntastic'

" Initialize plugin system
call plug#end()

" leader key mapping
let mapleader = "\<Space>"

" copy pasta setting
vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P

" differents lead key shortcut
nnoremap <Leader>o :CtrlP<CR>
nnoremap <Leader>h :GundoToggle<CR>
noremap <Leader>s :update<CR>
noremap <Leader>q :quit<CR>
nmap <Leader>n :NERDTreeToggle<CR>
nmap <Leader>j :join<CR>
nmap <Leader><Leader> V
nmap <Leader>ii mzgg=G`zzz
nmap <Leader>io mzo<ESC>`z
nmap <Leader>iO mzO<ESC>`z

" usefull for caculus ex: type 8*8 then press ,. /!\ 
" /!\ use bc instead, select in visual mode and type !bc
"ino ,. <C-O>yiW<End>=<C-R>=<C-R>0<CR><ESC>

" undo settings
set undodir=~/.vim/tmp/undo//
set backupdir=~/.vim/tmp/backup//
set undofile
set history=100
set undolevels=100

" basic settings
set relativenumber
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
set background=dark
let g:NERDDefaultAlign = 'left'
set number
inoremap ,, <ESC>
vnoremap ,, <ESC>

" move under the letter when the line is wrapped
nnoremap j gj
nnoremap k gk
xnoremap j gj
xnoremap k gk

" move faster
nmap J 5j
nmap K 5k
xmap J 5j
xmap K 5k

" move between vim panes
nmap <C-l> gt
nmap <C-h> gT

" move between vim splits
nmap gh <C-w>h
nmap gj <C-w>j
nmap gk <C-w>k
nmap gl <C-w>l

" search settings
set hlsearch
set incsearch
nnoremap <silent> <CR> :nohlsearch<CR><CR>

" expand plugin settings
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)

let g:ctrlp_use_caching = 0
if executable('ag')
    set grepprg=ag\ --nogroup\ --nocolor

    let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
else
    let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co --exclude-standard', 'find %s -type f']
    let g:ctrlp_prompt_mappings = {
                \ 'AcceptSelection("e")': ['<space>', '<cr>', '<2-LeftMouse>'],
                \ }
endif
