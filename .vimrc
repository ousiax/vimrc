" Check if the .vim/bundle/Vundle.vim directory exists
" and apply the Vundle configuration accordingly.
if isdirectory(expand("~/.vim/bundle/Vundle.vim"))
    source ~/.vim/bundle/vundle.vim
endif

" Display line number
set number

" Disable VIM swap and backup
set nobackup
set nowritebackup
set noswapfile

" Indenting source code
set autoindent
set expandtab
set tabstop=4
set shiftwidth=4

" Enable file type detection and related features,
" file type-specific plugins,
" and file type-specific indentation
filetype plugin indent on

" UTF-8
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,chinese
set ambiwidth=double

" Syntax
syntax on

set showmatch

" Backspace

set backspace=indent,eol,start

" Highlight search
set hlsearch

" Maximum amount of memory (in Kbyte) to use for pattern matching.
set mmp=10000

" disable beep and flash with an autocmd
set noerrorbells visualbell t_vb=
if has('autocmd')
  autocmd GUIEnter * set visualbell t_vb=
endif
