" Gotta be first
	set nocompatible
	filetype off
	set rtp+=~/.vim/bundle/Vundle.vim
	call vundle#begin()
	
	Plugin 'gmarik/Vundle.vim'
	Plugin 'altercation/vim-colors-solarized'
	Plugin 'tomasr/molokai'
	Plugin 'vim-airline/vim-airline'
	Plugin 'vim-airline/vim-airline-themes'
	Plugin 'scrooloose/nerdtree'
	Plugin 'jistr/vim-nerdtree-tabs'
	Plugin 'vim-syntastic/syntastic'
	Plugin 'xolox/vim-misc'
	Plugin 'xolox/vim-easytags'
	Plugin 'majutsushi/tagbar'
	Plugin 'ctrlpvim/ctrlp.vim'
	Plugin 'vim-scripts/a.vim'
	Plugin 'Raimondi/delimitMate'
	Plugin 'nathanaelkane/vim-indent-guides'
	Plugin 'wokalski/autocomplete-flow'
	Plugin 'artur-shaik/vim-javacomplete2'
	Plugin 'Valloric/YouCompleteMe'
	Plugin 'tpope/vim-surround'
	Plugin 'tpope/vim-repeat'
	call vundle#end()
	
	filetype plugin indent on
	
	" --- General settings ---
	
	set backspace=indent,eol,start
	set ruler
	set number
	set showcmd
	set smartindent
	set incsearch
	set hlsearch
	set guifont=Menlo\ for\ Powerline
	set mouse=a
	set t_Co=256
	set relativenumber
	set encoding=utf-8
	let g:airline_powerline_fonts = 1
	let g:airline_detect_paste=1
	let NERDTreeMinimalUI = 1
	let NERDTreeDirArrows = 1
	nmap <F5> <Plug>(JavaComplete-Imports-Add)
	syntax enable 
	nnoremap ff :NERDTree<CR>
	inoremap { {<CR>}<up><end><CR>
	inoremap ii <Esc>
	colorscheme molokai