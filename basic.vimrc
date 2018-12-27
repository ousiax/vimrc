" Display line number
set number

" Disable VIM swap and backup
set nobackup
set nowritebackup
set noswapfile

" Indenting source code
set expandtab
set tabstop=4
set shiftwidth=4

filetype plugin indent on
autocmd FileType make setlocal noexpandtab
autocmd FileType xml,js,html,yaml,yml   set shiftwidth=2

" UTF-8
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,chinese
set ambiwidth=double

" syntax
syntax on

set showmatch

" backspace

set backspace=indent,eol,start

" highlight search
set hlsearch
