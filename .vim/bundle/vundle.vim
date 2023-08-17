" The set nocompatible and filetype off commands are necessary before setting up Vundle:
" 
"  set nocompatible:
"      This command disables Vim's compatibility mode with the original Vi editor.
"      Disabling compatibility mode enables various Vim features and settings that are not
"      available in Vi. It's generally recommended to include this command in your .vimrc
"      to take full advantage of Vim's features.
"
"  filetype off:
"      This command temporarily disables file type detection and file type plugins. It is
"      necessary to turn off file type detection before initializing Vundle to ensure that
"      the plugin manager is loaded correctly. After Vundle is set up and the plugins are
"      added, you can enable file type detection and plugins again using the
"      `filetype plugin indent` on command.
set nocompatible              " be iMproved, required
filetype off                  " required

" Plugin settings
"
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo

" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'

" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" HTML5 + inline SVG omnicomplete function, indent and syntax for Vim.
" Plugin 'othree/html5.vim'

" GO(golang) support for Vim
Plugin 'fatih/Vim-go'
let g:go_template_autocreate = 0

" Python-mode is a vim plugin that helps you to create python code.
" Plugin 'klen/python-mode'

" Format JavaScript files with js-beautify.
" Plugin 'maksimr/vim-jsbeautify'
" map <c-f> :call JsBeautify()<cr>
" autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>

Plugin 'ycm-core/YouCompleteMe' " Provides code completion and syntax checking.
Plugin 'scrooloose/nerdtree' " Provides a file tree for easy navigation.
Plugin 'tpope/vim-fugitive' " Provides Git integration for version control.

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
" filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" YouCompleteMe settings
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_error_symbol = '>>'
let g:ycm_warning_symbol = '--'
let g:ycm_show_diagnostics_ui = 0
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_min_num_of_chars_for_completion = 1
let g:ycm_key_invoke_completion = '<C-Space>'
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_complete_in_comments_and_strings = 1
let g:ycm_complete_in_strings = 1
let g:ycm_semantic_triggers = {'c': ['.']}
let g:ycm_semantic_triggers_enabled = {'c': 1}

" NERDTree settings
map <C-n> :NERDTreeToggle<CR>

" vim-fugitive settings
map <Leader>gs :Git<CR>
