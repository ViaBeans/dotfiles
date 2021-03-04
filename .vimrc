" --- Vim Plugins ---

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'vim-syntastic/syntastic'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'sainnhe/gruvbox-material'
Plug 'Raimondi/delimitMate'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'vim-airline/vim-airline'
Plug 'dracula/vim', { 'as': 'dracula' }
call plug#end()

filetype plugin indent on

" --- General settings ---

set backspace=indent,eol,start
syntax enable
set ruler
set number
set showcmd
set autoindent
set smartindent
set expandtab
set shiftwidth=4
set tabstop=4
set softtabstop=4
set smarttab
set path+=**
set incsearch
set hlsearch
set guifont=Menlo\ for\ Powerline
set mouse=a
set t_Co=256
set encoding=utf-8
set splitbelow
set splitright
set nowrapscan
set background=dark

" --- Nerdtree Settings --- 

let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
nnoremap ff :NERDTree<CR>

" --- Powerline stuff ---

let g:airline_theme='dracula'
let g:airline_powerline_fonts = 1

" Some remappings

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

nnoremap <Up> <C-Y>
nnoremap <Down> <C-E>

nnoremap th :tabprev<CR>
nnoremap tl :tabnext<CR>
nnoremap tn :tabnew<CR>
nnoremap tc :tabclose<CR>
nnoremap ta :tab all<CR>

inoremap jj <ESC>

" let g:gruvbox_material_disable_italic_comment = 1
" let g:gruvbox_material_enable_bold = 1
" let g:gruvbox_material_background = 'soft'
" 
" colorscheme gruvbox-material
colorscheme dracula
