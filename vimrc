"pathogen
execute pathogen#infect()

"font
set guifont=DejaVu\ Sans\ Mono\ 11

"set message language
let $LANG = 'en' 

"set menu's language
set langmenu=en

"initial window size
set lines=50 columns=90
    
"noncompatible mode
set nocompatible

"syntax
syntax on

"filetype identification
filetype on
filetype plugin indent on

"temp file
set nobackup
set noswapfile

"history
set history=50

"encoding
set enc=utf-8

"file encoding
set fenc=utf-8

"supported file encoding
set fencs=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936

"show line numbers
set nu

"show matching
set showmatch

"case in searching
set ignorecase

"highlight
set hlsearch
set incsearch

"tab
set tabstop=4
set softtabstop=4

"indent
set cindent shiftwidth=4
set autoindent shiftwidth=4

"auto completion with tab in cmd
set wildmode=list:full
set wildmenu

"color scheme
"colorscheme desert
"colorscheme molokai
colorscheme solarized
if has('gui_running')
    set background=light
else
    set background=dark
endif

"charactors not be wrapped
set iskeyword+=_,$,@,%,#,-

":command
set report=0

"mouse
set mouse=a
set selection=exclusive
set selectmode=mouse,key

"auto save
imap <F9> <Esc>:up<CR>

"rubytest
let g:rebytest_cmd_spec="rspec -fd %p"


"multi-windows
"Vertical Split : Ctrl+w + v
"Horizontal Split: Ctrl+w + s
"Close current windows: Ctrl+w + q

"travel in windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
map <C-q> <C-W>q

"folding
set foldmethod=indent
set foldlevel=99

"mapleader
let mapleader=","

"searching
"usage: :Ack [options] {pattern} [{directories}]
"search recursively in {directories} (which defaults to the current directory) for the {pattern}.
nmap <leader>s <Esc>:Ack! 

"commenter
"<leader>cc - Comment out the current line or text selected in visual mode.
"<leader>c<space> - Toggles the comment state of the selected line(s)

"minibufexpl
let g:miniBufExplMapWindowNavVim = 1 
let g:miniBufExplMapWindowNavArrows = 1 
let g:miniBufExplMapCTabSwitchBufs = 1 
let g:miniBufExplModSelTarget = 1 

"NERDTree
let NERDTreeShowBookmarks=1
let NERDChristmasTree=1
let NERDTreeWinPos="left"
"turn on/off nerdtree
map <leader>n :NERDTreeToggle<CR>

"supertab
let g:SuperTabRetainCompletionType="context"

"task list, for TODO or FIXME
"turn on/off tasklist
map <leader>f <Plug>TaskList

"ctags
set tags=tags;
set autochdir

"tagbar
let g:tagbar_width=35
let g:tagbar_autofocus=1
"add sverilog detection to tagbar
let g:tagbar_type_verilog_systemverilog= {
    \ 'ctagstype' : 'verilog_systemverilog',
    \ 'kinds'     : [
        \ 'c:classes',
        \ 't:tasks',
        \ 'f:functions',
        \ 'm:modules',
        \ 'i:interfaces',
        \ 'v:variables',
        \ 'd:defines',
        \ 'e:typedefs',
        \ 'a:parameters'
    \]
\}
"turn on/off tagbar
map <leader>t :TagbarToggle<CR>
"auto-open tagbar for the following file types
autocmd BufReadPost *.cpp,*.c,*.hpp,*.cc,*.cxx,*.sv,*.v,*.svh,*.vh,*.sva,*.f,*.rb call tagbar#autoopen()


"powerline
"always display the status line
set laststatus=2


"SV support
au BufRead,BufNewFile *.sv set filetype=verilog_systemverilog
au BufRead,BufNewFile *.svh set filetype=verilog_systemverilog
au BufRead,BufNewFile *.v set filetype=verilog_systemverilog
au BufRead,BufNewFile *.vh set filetype=verilog_systemverilog
au BufRead,BufNewFile *.svi set filetype=verilog_systemverilog
au BufRead,BufNewFile *.sva set filetype=verilog_systemverilog
