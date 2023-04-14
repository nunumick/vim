"=======================
" custom settings here
" key mapping guide
" basic:
"   j: move down
"   k: move up
"   kj: esc
"   gj: PageDown
"   gk: PageUp
"   gu: JumpUp
"   gi: JumpDown
"   nt,gt: Next Tab
"   nT,gT: Pre Tab
"   ctrl-w(h\j\k\l): window change
"   0: goto line start
"   g ctrl+g: count words
"   zf: create code fold
"   zm/zc: close fold
"   zo/zr: open fold
"   zd/zD: remove fold
"
" advance:
"   tab: indent
"   ,dd: NERDTreeFind
"   ,mr: MRU
"   ,s: ack keyword search
"   ,a: open ack
"   ,cc: comment
"   ,cu: uncomment
"   ctrl-p: ctrlp search filename
"   ctrl-j: coc goto definition
"   dg: diagnostic next
"   gd: diagnostic prev
"   K: ShowDocumentation
"   ,as: coc actions
"   ,qf: coc quickfix
"   ,re: coc refactor
"=======================

set nocompatible                      " not compatible with the old-fashion vi mode
set backspace=2                       " allow backspacing over everything in insert nc >kkmode
set history=1000                      " keep 1000 lines of command line history
set undolevels=100
set ruler                             " show the cursor position all the time
set autoread                          " auto read when file is changed from outside
set wrap
set linebreak
set nolist
set hidden
set linespace=0
set cursorline
set nofoldenable
set number
set numberwidth=4
set title
set showmode
set nobomb                            " no BOM(Byte Order Mark)
set nostartofline
set laststatus=2
set clipboard+=unnamed
set splitright                        " always open vertical split window in the right side
set splitbelow                        " always open horizontal split window below
set scrolloff=5                       " start scrolling when n lines away from margins
set switchbuf=useopen
set showtabline=2                     " always show tab
set wildmode=longest,list             " use emacs-style tab completion when selecting files, etc
set wildmenu                          " make tab completion for files/buffers act like bash
set key=                                    " disable encryption
set synmaxcol=128
set viminfo=                                " disable .viminfo file
set ttyfast                           " send more chars while redrawing

filetype on                           " enable filetype detection
filetype indent on                    " enable filetype-specific indenting
filetype plugin on                    " enable filetype-specific plugins

syntax on                             " syntax highlight
set hlsearch                          " search highlighting
set incsearch                         " incremental search
syntax enable
set t_Co=256
"try
  "colorscheme one
"catch
"endtry

set nobackup                          " no *~ backup files
set noswapfile
set nowritebackup
set copyindent                        " copy the previous indentation on autoindenting
set ignorecase                        " ignore case when searching
set smartcase
set smarttab                          " insert tabs on the start of a line according to
set expandtab                         " replace <TAB> with spaces
set softtabstop=2
set shiftwidth=2
set tabstop=2
set shortmess=Ia                      " remove splash wording

" disable sound on errors
set visualbell
set noerrorbells
set t_vb=
set novb
set tm=500

" file encoding
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,big5,euc-jp,gbk,euc-kr,utf-bom,iso8859-1,euc-jp,utf-16le,latin1
set fenc=utf-8 enc=utf-8 tenc=utf-8
scriptencoding utf-8

" ignores
set wildignore+=*.o,*.obj,*.pyc                " output objects
set wildignore+=*.png,*.jpg,*.gif,*.ico        " image format
set wildignore+=*.swf,*.fla                    " image format
set wildignore+=*.mp3,*.mp4,*.avi,*.mkv        " media format
set wildignore+=*.git*,*.hg*,*.svn*            " version control system
set wildignore+=*sass-cache*
set wildignore+=*.DS_Store
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.doc,*.xls,*.docx,*.xlsx
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows

" cursorline switched while focus is switched to another split window
autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline

" ======================================
"  custom key and plugin configurations
" ======================================

"AuthorInfo
let g:vimrc_author='nunumick'
let g:vimrc_email='nunumick@gmail.com'
let g:vimrc_homepage='https://nunumick.github.io'

" remove tailing whitespace
autocmd BufWritePre * :%s/\s\+$//e

" comment
map <Leader><Leader> <Leader>cc

" Color Scheme for Tomorrow-Night
set background=dark
colorscheme one

" show file name in tablabel
set guitablabel=%t

" color scheme selector
"map <leader>sc :SelectColorS<CR>

" next and prev tab
"noremap <F7> gT
"noremap <F8> gt
noremap nT gT
noremap nt gt

" quick esc
inoremap kj <ESC>

" PageUp&PageDown
noremap gj <C-f>
noremap gk <C-b>
noremap gu <C-u>
noremap gi <C-d>

" identation
nmap <TAB> v>
nmap <S-TAB> v<
vmap <TAB> >gv
vmap <S-TAB> <gv

" remap VIM 0
map 0 ^

" coc diagnostic
" dig dig dig
nmap <silent> dg <Plug>(coc-diagnostic-next)
nmap <silent> gd <Plug>(coc-diagnostic-prev)

" coc goto code
nmap <silent> <C-j> <Plug>(coc-definition)
"nmap <silent> <C-j>j <Plug>(coc-type-definition)
" back ctrl-o default
"nmap <C-k> <C-o>

" return current opened file's dirctory
cnoremap %% <C-R>=expand('%:h').'/'<CR>

" ctrlp
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
" the nearest ancestor that contains one of these directories or files: .git .hg .svn .bzr
" since vim-rooter
"let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

" Ack
" 搜索完后不自动跳到第一个结果文件
cnoreabbrev Ack Ack!
" 设置搜索快捷键为<leader> + a
nnoremap <Leader>a :Ack!<Space>
" ack的选项设置
let g:ack_default_options = " -s -H --nocolor --nogroup --column --smart-case --follow"
" 如果不输入任何搜索参数，则默认以光标下的单词为搜索条件，并把它映射到<leader> + s上
nnoremap <leader>s :Ack!<CR>
" 高亮搜索结果
let g:ackhighlight = 1

" quick open vimrc in a new tab
"nmap <leader>v :tabe $MYVIMRC<CR>
"map <leader>0 :topleft 100 :split README.md<CR>

" quick close window
"map <leader>w :close<CR>

" quick source format all
map <leader>fa gg=G

" mru
nmap <Leader>mr :MRU<cr>

"Nerdtree: use NERDTreeFind to lock file
nmap <Leader>dd :NERDTreeFind<cr>

" quick change split window
"nnoremap <C-j> <C-w>j
"nnoremap <C-h> <C-w>h
"nnoremap <C-k> <C-w>k
"nnoremap <C-l> <C-w>l

" openAI labs
nnoremap <leader>ai :AI<CR>
xnoremap <leader>ai :AI<CR>

" key binding with custom context
xnoremap <leader>add :AIEdit<Space>
nnoremap <leader>add :AIEdit<Space>

" key binding to trigger chat
xnoremap <leader>chat :AIChat <CR>
nnoremap <leader>chat :AIChat <CR>

" command with custom context (vim-ai functions: AIRun, AIEditRun, AIChatRun)
"command! -range -nargs=? AICode <line1>,<line2>call AIRun("Programming syntax is " . &filetype . ", " . <f-args>)

highlight whitespaceEOL term=reverse ctermbg=red guibg=red
match whitespaceEOL /\s\+\(\%#\)\@!$/
syntax match whitespaceEOL /\s\+$/
syntax match ColorColumn /\%>80v.\+/
set list "show space and end of line"
set listchars=tab:..,trail:.
