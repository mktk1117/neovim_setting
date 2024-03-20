set number
set autoindent
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab
set clipboard+=unnamedplus
set smartcase
set hidden
set cursorline
set ignorecase
set smartcase
set mouse=a
set nostartofline
set cmdheight=2
set hidden
set noswapfile

map Y y$
inoremap jj <Esc>
nmap <silent> <Esc><Esc> :nohlsearch<CR>
nnoremap j gj
nnoremap k gk
nnoremap <Down> gj
nnoremap <Up> gk
nnoremap bn :bnext<CR>
nnoremap bp :bprevious<CR>

map <silent> tn :tablast <bar> tabnew<CR>
noremap <Space>l  $
noremap <Space>h  ^
noremap <Space>z  <C-W>z

nnoremap x "_x
nnoremap s "_s

nnoremap <C-j>  <C-W>j
nnoremap <C-k>  <C-W>k
nnoremap <C-l>  <C-W>l
nnoremap <C-h>  <C-W>h

" for pyenv, this should be done before dein loading.
" let g:python_host_prog = $PYENV_ROOT.'/versions/anaconda3-5.3.1/envs/py2/bin/python'
" let g:python3_host_prog = $PYENV_ROOT.'/versions/anaconda3-5.3.1/bin/python'

" Save the cursor position and move to that position when open again.
augroup vimrcEx
  au BufRead * if line("'\"") > 0 && line("'\"") <= line("$") |
  \ exe "normal g`\"" | endif
augroup END

"  Plugin settings
if &compatible
  set nocompatible               " Be iMproved
endif
" dein.vimのディレクトリ
let s:dein_dir = expand('~/.cache/dein')
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

" なければgit clone
if !isdirectory(s:dein_repo_dir)
  execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
endif

" Required:
execute "set runtimepath+=". s:dein_repo_dir

" Required:
if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')
  "Load TOML
  let s:toml_dir = expand('~/.config/nvim')
  let s:toml = s:toml_dir . '/dein.toml'
  let s:lazy_toml = s:toml_dir . '/dein_lazy.toml'

  call dein#load_toml(s:toml, {'lazy': 0})
  call dein#load_toml(s:lazy_toml, {'lazy': 1})
  " Required:

  call dein#end()
  call dein#save_state()
endif

if dein#check_install()
  call dein#install()
endif

" Required:
" colorscheme mysticaltutor
let g:lucius_style='light'
colorscheme lucius

" set background=light
" colorscheme PaperColor


filetype plugin indent on
syntax enable
