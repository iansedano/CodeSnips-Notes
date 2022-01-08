set ignorecase
set smartcase
"set showmatch

set mouse-=a

set autoindent
set nowrap
set title
set visualbell
set t_vb= "reset terminal code to ensure it doesn't go quiet

set number
set ruler

set tabstop=4

syntax on

let &t_ZH="\e[3m"
let &t_ZR="\e[23m"

call plug#begin()
	Plug 'preservim/nerdtree'
	Plug 'ryanoasis/vim-devicons'

	Plug 'sheerun/vim-polyglot'
	Plug 'jiangmiao/auto-pairs'

	Plug 'plasticboy/vim-markdown'

	Plug 'dense-analysis/ale'
	Plug 'vim-airline/vim-airline'
	Plug 'mattn/emmet-vim'

call plug#end()
