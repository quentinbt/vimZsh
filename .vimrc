set nocompatible              

" required
filetype off                  


"auto install vim plug
if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
                \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
call plug#begin('~/.vim/plugged')

" Any valid git URL is allowed
"Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
"Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" Theme
Plug 'morhetz/gruvbox'

" Functional
Plug 'tpope/vim-surround'
Plug 'Raimondi/delimitMate'
"Plug 'Valloric/YouCompleteMe'
"Plug 'marijnh/tern_for_vim'
"Plug 'elzr/vim-json'
Plug 'tpope/vim-sensible'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'gorodinskiy/vim-coloresque'
"To execute Ctrl + y ,
Plug 'mattn/emmet-vim'
Plug 'scrooloose/nerdcommenter'
Plug 'mileszs/ack.vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/tpope-vim-abolish'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"Plug 'terryma/vim-expand-region'
Plug 'mbbill/undotree'
Plug 'pangloss/vim-javascript'
"Plug 'mxw/vim-jsx'
Plug 'tpope/vim-dispatch'
"<leader> ig to toggle
"Plug 'nathanaelkane/vim-indent-guides'
Plug 'Yggdroot/indentLine'
"Plug 'wikitopian/hardmode'
Plug 'easymotion/vim-easymotion'
"Plug 'airblade/vim-gitgutter'
Plug 'regedarek/ZoomWin'
Plug 'majutsushi/tagbar'
Plug 'craigemery/vim-autotag'
"Plug 'tpope/vim-rails'
"Plug 'vim-ruby/vim-ruby'
"Plug 'thoughtbot/vim-rspec'
Plug 'altercation/vim-colors-solarized'
"For angular
"Plug 'Quramy/tsuquyomi'
"Plug 'posva/vim-vue'
"Plug 'Quramy/tsuquyomi-vue'
"For angular
"Plug 'leafgarland/typescript-vim'
Plug 'othree/html5.vim'
Plug 'rust-lang/rust.vim'
"For react ts 1st version
"Plug 'prabirshrestha/async.vim'
"Plug 'prabirshrestha/vim-lsp'
"Plug 'ryanolsonx/vim-lsp-typescript'
"Plug 'prabirshrestha/asyncomplete.vim'
"Plug 'prabirshrestha/asyncomplete-lsp.vim'
"Plug 'leafgarland/typescript-vim'
"Plug 'peitalin/vim-jsx-typescript'
"For vuejs
Plug 'posva/vim-vue'
"Plug 'othree/javascript-libraries-syntax.vim'
"Plug 'leafOfTree/vim-vue-plugin'
"let g:used_javascript_libs = 'vue'

"For react ts 2st version
Plug 'neoclide/coc.nvim', {'branch': 'release'}
let g:coc_global_extensions = [
  \ 'coc-eslint', 
  \ 'coc-prettier', 
  \ 'coc-tsserver',
  \ 'coc-vetur'
  \ ]
"Plug 'peitalin/vim-jsx-typescript'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'leafgarland/typescript-vim'
"Plug 'HerringtonDarkholme/yats.vim'

" Initialize plugin system
call plug#end()

filetype off                  
" leader key mapping
let mapleader = "\<Space>"

filetype off                  
" copy pasta setting
vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "*p
nmap <Leader>P "*P
vmap <Leader>p "*p
vmap <Leader>P "*P
set clipboard=unnamed


" differents lead key shortcut
"nnoremap <leader>x <Esc>:call ToggleHardMode()<CR>
nnoremap <Leader>o :CtrlP<CR>
nnoremap <Leader>h :UndotreeToggle<CR>
nnoremap <Leader>m :call RunCurrentSpecFile()<CR>
nnoremap <Leader>z :ZoomWin<CR>
noremap <Leader>s :update<CR>
noremap <Leader>q :quit<CR>
nmap <Leader>n :NERDTreeToggle<CR>
nnoremap <silent> <Leader>. :TagbarToggle<CR>
nmap <Leader>j :join<CR>
nmap <Leader><Leader> V
nmap <Leader>ii mzgg=G`zzz
nmap <Leader>io mzo<ESC>`z
nmap <Leader>iO mzO<ESC>`z
imap <S-\>    <CR><CR>end<Esc>-cc

let g:EasyMotion_do_mapping = 0 " Disable default mappings

" Jump to anywhere you want with minimal keystrokes, with just one key binding.
" `s{char}{label}`
nmap <Leader>g <Plug>(easymotion-overwin-f)
" or
" `s{char}{char}{label}`
" Need one more keystroke, but on average, it may be more comfortable.
"nmap s <Plug>(easymotion-overwin-f2)
"
"
"
let g:vim_vue_plugin_config = { 
      \'syntax': {
      \   'template': ['html'],
      \   'script': ['javascript'],
      \   'style': ['css'],
      \},
      \'full_syntax': [],
      \'initial_indent': [],
      \'attribute': 0,
      \'keyword': 0,
      \'foldexpr': 0,
      \'debug': 0,
      \}

" Turn on case insensitive feature
let g:EasyMotion_smartcase = 1

let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-l>"
let g:UltiSnipsJumpBackwardTrigger="<c-h>"
" usefull for caculus ex: type 8*8 then press ,. /!\ 
" /!\ use bc instead, select in visual mode and type !bc
"ino ,. <C-O>yiW<End>=<C-R>=<C-R>0<CR><ESC>

let g:indentLine_enabled = 1
let g:indentLine_char = '┆'
" undo settings
" Put plugins and dictionaries in this dir (also on Windows)
let vimDir = '$HOME/.vim'
let &runtimepath.=','.vimDir

" Keep undo history across sessions by storing it in a file
if has('persistent_undo')
    let myUndoDir = expand(vimDir . '/undodir')
    " Create dirs
    call system('mkdir ' . vimDir)
    call system('mkdir ' . myUndoDir)
    let &undodir = myUndoDir
    set undofile
    set history=100
    set undolevels=100
endif

" basic settings
set relativenumber
set tabstop=8 softtabstop=0 expandtab shiftwidth=2 smarttab
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2
autocmd Filetype typescript setlocal ts=2 sts=2 sw=2
autocmd Filetype typescriptreact setlocal ts=4 sts=4 sw=4
autocmd Filetype json setlocal ts=4 sts=4 sw=4
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2
autocmd Filetype php setlocal ts=4 sts=4 sw=4
syntax enable
"view on modifing element
set cpoptions+=$
set background=light
colorscheme solarized
let g:NERDDefaultAlign = 'left'
set number
inoremap ,, <ESC>
vnoremap ,, <ESC>

" move under the letter when the line is wrapped
nnoremap j gj
nnoremap k gk
xnoremap j gj
xnoremap k gk

" search regex improved
nnoremap / /\v
vnoremap / /\v

" fastest access to console
nnoremap ; :
vnoremap ; :

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
nmap gr <C-w>r

" search settings
set hlsearch
set incsearch
nnoremap <silent> <CR> :nohlsearch<CR><CR>

" Write COMMIT_EDITMSG and push to current branch
function! PushToCurrentBranch()
  exe ":Gwrite"
  let branch = fugitive#statusline()
  let branch = substitute(branch, '\c\v\[?GIT\(([a-z0-9\-_\./:]+)\)\]?', $BRANCH.' \1', 'g')
  exe ":Git push origin" . branch
endfunction

" pull origin to current branch
function! PullToCurrentBranch()
  let branch = fugitive#statusline()
  let branch = substitute(branch, '\c\v\[?GIT\(([a-z0-9\-_\./:]+)\)\]?', $BRANCH.' \1', 'g')
  exe ":Git pull origin" . branch
endfunction

" Fugitive shortcut
" set diffopt+=vertical
nnoremap <leader>ts :Gstatus<CR>
nnoremap <leader>tc :Gcommit -v -q<CR>
nnoremap <leader>ta :Git add -A<CR>
nnoremap <leader>tt :Gcommit -v -q %<CR>
nnoremap <leader>td :Gdiff<CR>
nnoremap <leader>tw :Gwrite<CR><CR>
nnoremap <leader>tB :Gblame<CR>
nnoremap <leader>tp :Ggrep<Space>
nnoremap <leader>tm :Gmove<Space>
nnoremap <leader>tb :Git checkout -b<Space>
nnoremap <leader>to :Git checkout<Space>
nnoremap <leader>tps :call PushToCurrentBranch()<CR>
nnoremap <leader>tpl :call PullToCurrentBranch()<CR>

" expand plugin settings
"vmap v <Plug>(expand_region_expand)
"vmap <C-v> <Plug>(expand_region_shrink)
"let g:expand_region_text_objects = {
"      \ 'iw'  :0,
"      \ 'iW'  :0,
"      \ 'i"'  :0,
"      \ 'i''' :0,
"      \ 'i]'  :1, 
"      \ 'ib'  :1, 
"      \ 'iB'  :1, 
"      \ 'il'  :0, 
"      \ 'ip'  :0,
"      \ 'ie'  :0, 
"      \ }
"call expand_region#custom_text_objects({
"      \ "\/\\n\\n\<CR>": 1, 
"      \ 'a]' :1, 
"      \ 'ab' :1, 
"      \ 'aB' :1, 
"      \ 'ii' :0, 
"      \ 'ai' :0, 
"      \ })
"

nnoremap <leader>d :call CocAction('doHover')<CR>
nmap <silent> gd <Plug>(coc-definition)
" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

" jsx syntax work on js files
let g:jsx_ext_required = 0

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
