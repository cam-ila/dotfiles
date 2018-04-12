call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-surround'
Plug 'davidhalter/jedi-vim' "easy pair characters manipulation
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-repeat' " enable repeating supported plugin maps with .
Plug 'nvie/vim-flake8'
call plug#end()

syntax on 
filetype plugin indent on     

map <C-n> :NERDTreeToggle<CR>
let NERDTreeIgnore=['\.pyc$', '\~$'] " Ignore irrelevant files like pyc and swap files
" Find current buffer in nerdtree
noremap <C-m> :NERDTreeFind<CR>
let g:NERDTreeMapOpenVSplit='v'      " keep mappings between ctrlp and nerdtree concise

let g:fzf_layout = {'down': '~50%'}
nmap <c-p> :Files<cr>

" Smart indentation of new lines
set autoindent
set smartindent
set noswapfile

" Tab expansion settings
let tabsize = 2
execute "set tabstop=".tabsize
execute "set shiftwidth=".tabsize
execute "set softtabstop=".tabsize
set expandtab " Use spaces instead of tabs

" Use by default system wide clipboard
set clipboard=unnamed
" Show commands as you type them
set showcmd
" allow unsaved changes to be hidden
set hidden
" Make zO recursively open whatever fold we're in, even if it's partially open.
nnoremap zO zczO
" fold tag
nnoremap <leader>ft Vatzf
nnoremap <esc><esc> :noh<return>

" move
map <F2> <C-W><C-W>_

set ignorecase
set smartcase
set relativenumber
set number
set hlsearch 
