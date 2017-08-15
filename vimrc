" Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %

" Ignore legacy vi stuff
set nocompatible

" Remap leader key
"" TODO

" Better copy & paste
set pastetoggle=<F2>
set clipboard=unnamed

" Allow deletion of text not typed during current insert session
set backspace=indent,eol,start

" Remove highlight of last search
noremap <C-n> :nohl<CR>
vnoremap <C-n> :nohl<CR>
inoremap <C-n> :nohl<CR>

" Switch between tabs easier
map <Leader>n <esc>:tabprevious<CR>
map <Leader>m <esc>:tabnext<CR>

" Move between windows easier
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

" Map sort function to a key
vnoremap <Leader>s :sort<CR>

" Indent code blocks
vnoremap < <gv
vnoremap > >gv

" Show whitespace
" Must exist BEFORE colorscheme command
"" autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
"" au InsertLeave * match ExtraWhitespace /\s\+$/

" Color scheme
""" TODO

" Enable syntax highlighting
filetype off
filetype plugin indent on
syntax on

" Line numbers and length
set number  " show line numbers
" set tw=79   " width of document (used by gd)
" set nowrap  " don't automatically wrap on load
" set fo-=t   " don't automcatically wrap text when typing
" set colorcolumn=80
" highlight ColorColumn ctermbg=233

" Easier formatting of paragraphs
vmap Q gq
vmap Q gqap

" Useful settings
set history=700
set undolevels=700

" Tabs, not spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab

" Set up Vundle for plugin management
" git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" vim-airline
Plugin 'vim-airline/vim-airline'

" Fix delay when exiting insert mode
if !has('gui_running')
    set ttimeoutlen=10
    augroup FastEscape
        autocmd!
        au InsertEnter * set timeoutlen=0
        au InsertLeave * set timeoutlen=1000
    augroup END
endif

" CtrlP
Plugin 'ctrlpvim/ctrlp.vim'

" CtrlP options
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_switch_buffer = 'et'  " if file is already open, open it in a new pane

" python-mode
"Plugin 'python-mode/python-mode'

" Code folding
"" TODO

" Plugins must be added before this line
call vundle#end()


" ---------------------
" Python IDE Setup
" ---------------------

