let $NVIMCONFIG=stdpath('config')
let mapleader=","

"----- plug manager -----"
call plug#begin(stdpath('data').'/plugged')

Plug 'junegunn/vim-easy-align'
Plug 'preservim/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'joshdick/onedark.vim'
Plug 'sheerun/vim-polyglot'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
" Plug 'tmhedberg/SimpylFold'
Plug 'preservim/tagbar'
Plug 'kien/ctrlp.vim'
Plug 'brooth/far.vim'
Plug 'jiangmiao/auto-pairs'

call plug#end()
"----- plug manager -----"

"----- vim config -----
set tabstop=4
set shiftwidth=4
set noexpandtab
set number
syntax on
set autoread
set cursorline
set showmatch
set autoindent
set si
set magic
set laststatus=2
set noerrorbells
set novisualbell
set ignorecase
set smartcase
set incsearch
set encoding=utf8
"----- vim config -----

"----- plug config -----
" source $HOME/.config/nvim/coc.vim
source $NVIMCONFIG/coc.vim
" let g:SimpylFold_docstring_preview=1
"----- plug config -----

"----- keymapping -----
source $NVIMCONFIG/keymapping.vim
"----- keymapping -----


"----- theme config -----
if (has("nvim"))
	"For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
	let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif
if (has("termguicolors"))
	set termguicolors
endif
colorscheme onedark
"----- theme config -----
