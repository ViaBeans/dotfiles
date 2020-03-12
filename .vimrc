" Gotta be first
	set nocompatible
	filetype off
	set rtp+=~/.vim/bundle/Vundle.vim
	call vundle#begin()
	
	Plugin 'gmarik/Vundle.vim'
	Plugin 'tomasr/molokai'
	Plugin 'scrooloose/nerdtree'
	Plugin 'jistr/vim-nerdtree-tabs'
	Plugin 'vim-syntastic/syntastic'
	Plugin 'xolox/vim-misc'
	Plugin 'majutsushi/tagbar'
	Plugin 'ctrlpvim/ctrlp.vim'
  Plugin 'sainnhe/gruvbox-material'
	Plugin 'vim-scripts/a.vim'
	Plugin 'valloric/youcompleteme'
	Plugin 'Raimondi/delimitMate'
	Plugin 'nathanaelkane/vim-indent-guides'
	Plugin 'tpope/vim-surround'
	Plugin 'tpope/vim-repeat'
  Plugin 'vim-airline/vim-airline'
  Plugin 'vim-airline/vim-airline-themes'
	call vundle#end()
	
	filetype plugin indent on
	
	" --- General settings ---
	
	set backspace=indent,eol,start
	set ruler
	set number
	set showcmd
	set expandtab
  set shiftwidth=2
	set tabstop=2
  set smarttab
	set incsearch
	set hlsearch
	set guifont=Menlo\ for\ Powerline
	set mouse=a
	set t_Co=256
	set encoding=utf-8
	set splitbelow
	set splitright
  set background=dark
	let NERDTreeMinimalUI = 1
	let NERDTreeDirArrows = 1
  let g:airline_theme='dracula'
  let g:airline_powerline_fonts = 1
	nmap <F5> <Plug>(JavaComplete-Imports-Add)
	syntax enable 
	nnoremap ff :NERDTree<CR>

	nnoremap <C-J> <C-W><C-J>
	nnoremap <C-K> <C-W><C-K>
	nnoremap <C-L> <C-W><C-L>
	nnoremap <C-H> <C-W><C-H>

	nnoremap th :tabprev<CR>
	nnoremap tl :tabnext<CR>
	nnoremap tn :tabnew<CR>
	nnoremap tc :tabclose<CR>
	nnoremap ta :tab all<CR>

  let g:gruvbox_material_disable_italic_comment = 1
  let g:gruvbox_material_enable_bold = 1
  let g:gruvbox_material_background = 'soft'
	colorscheme gruvbox-material
