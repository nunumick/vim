" Easy version Vimrc

let mapleader = ","
set autochdir
set ignorecase
set nocompatible
set shiftwidth =4
set tabstop =4
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
filetype off

if has("win32") || has("win64")
  set rtp+=$VIM\vimfiles\bundle\vundle
  call vundle#rc('$VIM\vimfiles\bundle')
else
  set rtp+=~/.vim/bundle/vundle/
  call vundle#rc()
endif

Bundle 'gmarik/vundle'

Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Bundle 'mileszs/ack.vim'
Bundle 'vim-scripts/bufexplorer.zip'
Bundle 'vim-scripts/c.vim'
Bundle 'c9s/colorselector.vim'
Bundle 'kien/ctrlp.vim'
Bundle 'Raimondi/delimitMate'
Bundle 'vim-scripts/matchit.zip'
Bundle 'Shougo/neocomplete.vim'
"Bundle 'Shougo/neosnippet'
"Bundle 'Shougo/neosnippet-snippets'
"Bundle 'SirVer/ultisnips'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/nerdtree'
Bundle 'cakebaker/scss-syntax.vim'
Bundle 'ervandew/supertab'
Bundle 'scrooloose/syntastic'
Bundle 'godlygeek/tabular'
Bundle 'majutsushi/tagbar'
Bundle 'tomtom/tlib_vim'
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'kchmck/vim-coffee-script'
Bundle 'ap/vim-css-color'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-fugitive'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'michaeljsmith/vim-indent-object'
Bundle 'pangloss/vim-javascript'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'jistr/vim-nerdtree-tabs'
"Bundle 'Lokaltog/vim-powerline'
Bundle 'tpope/vim-ragtag'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-repeat'
Bundle 'vim-ruby/vim-ruby'
Bundle 'slim-template/vim-slim'
Bundle 'garbas/vim-snipmate'
Bundle 'honza/vim-snippets'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-unimpaired'
Bundle 'mattn/emmet-vim'
Bundle 'vim-scripts/mru.vim'
Bundle 'AuthorInfo'
"Bundle 'vim-scripts/taglist.vim'
Bundle 'vim-scripts/php.vim'
Bundle 'vim-scripts/TeTrIs.vim'
Bundle 'taglist-plus'
Bundle 'vim-scripts/sudo.vim'
Bundle 'vim-scripts/FencView.vim'
Bundle 'digitaltoad/vim-jade'
"Bundle 'isRuslan/vim-es6'
Bundle 'jade.vim'
Bundle 'Sass'
Bundle 'less.vim'
Bundle 'command-t'


filetype plugin indent  on

"colorscheme
colorscheme badwolf

" =============
"  plugin config
" =============

"AuthorInfo
let g:vimrc_author='nunumick'
let g:vimrc_email='nunumick@gmail.com'
let g:vimrc_homepage='http://nunumick.me'

"taglist
"let Tlist_Ctags_Cmd = '/usr/local/bin/ctags'
"let Tlist_Show_One_File = 1            "不同时显示多个文件的tag，只显示当前文件的
"let Tlist_Exit_OnlyWindow = 1          "如果taglist窗口是最后一个窗口，则退出vim
"let Tlist_Use_Right_Window = 1         "在右侧窗口中显示taglist窗口
"let Tlist_JS_Settings = 'javascript;s:string;a:array;o:object;f:function'

"fencview
"let g:fencview_autodetect = 1   #打开文件时自动识别编码
"let g:fencview_checklines = 10 #检查前后10行来判断编码

" =============
"  custom key
" =============
" add a new line without entering insert mode
noremap <CR> o<Esc>

" map backspce to delete a character
noremap <BS> X

" map ctrl+c and ctrl+v
noremap <C-c> y
noremap <C-v> P

" search word form dir
" nnoremap gr :grep <cword> *<CR>
" nnoremap Gr :grep <cword> %:p:h/*<CR>
" nnoremap gR :grep '\b<cword>\b' *<CR>
" nnoremap GR :grep '\b<cword>\b' %:p:h/*<CR>

" cancel searched highlight
noremap ; :nohlsearch<CR>

" navigating for long lines
map j gj
map k gk
map <UP> gk
map <DOWN> gj
imap <UP> <ESC>gk<RIGHT>i
imap <DOWN> <ESC>gj<RIGHT>i

" select ALL
map <C-A> ggVG

nmap <Leader>mr :MRU<cr>
nmap <Leader>dd :NERDTree<cr>
nmap <Leader>ls :Tlist<cr>
nmap <Leader>fa :FencAutoDetect<cr>
nmap <Leader>ff :CommandT<cr>

"neocomplete
let g:neocomplete#enable_at_startup = 1

"powerline
set guifont=Inconsolata\ for\ Powerline:h15
let g:Powerline_symbols = 'fancy'
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
set termencoding=utf-8

if has("gui_running")
     let s:uname = system("uname")
        if s:uname == "Darwin\n"
                set guifont=Inconsolata\ for\ Powerline:h15
        endif
endif
