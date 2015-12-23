" Use the Solarized Dark theme
set background=dark
colorscheme solarized
let g:solarized_termtrans=1

" Better vim. It must be first, it changes other options as a side effect.
set nocompatible

" Use the OS clipboard by default (on versions compiled with `+clipboard`)
set clipboard=unnamed

" Enhance command-line completion
set wildmenu

" Allow cursor keys in insert mode
set esckeys

" Tell Vim we're using a fast connection - gives us smoother redraws
set ttyfast

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" Don’t add empty newlines at the end of files
set binary
set noeol

" Centralize backups, swapfiles and undo history
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
if exists("&undodir")
    set undodir=~/.vim/undo
endif

" Don’t create backups when editing files in certain directories
set backupskip=

" Respect modeline in files
set modeline
set modelines=4

" Don't go right to the edge of the window when scrolling
set scrolloff=5

" Switch syntax highlighting on
syntax on

" Enable line numbers
set number

" Show the cursor position
set ruler

" Highlight current line
set cursorline

" Indenting and tabbing
set shiftwidth=2
set shiftround
set expandtab
set tabstop=2
"set autoindent

" Show “invisible” characters
set list
"set lcs=tab:--,precedes:◀,extends:▶,trail:·,nbsp:␣
set lcs=tab:⋅›,precedes:◀,extends:▶,trail:·,nbsp:␣

" Improve searches
set hlsearch
set incsearch
set ignorecase
set smartcase

" Always show status line
set laststatus=2

" Enable mouse in all modes
set mouse=a

" Don’t reset cursor to start of line when moving around.
set nostartofline

" Don’t show the intro message when starting Vim
set shortmess=atI

" Show the current mode
set showmode

" Show the filename in the window titlebar
set title

" Show the (partial) command as it’s being typed
set showcmd

" set lazy redraw, to speed up macros and the like
set lazyredraw

" allow movement to another buffer without saving the current one
set hidden

" try all three file-formats, in order of preference
set fileformats=unix,dos,mac

" Use a backup file just for the purposes of saving
set writebackup

" Keep 1000 lines of command line history
set history=1000

" Keep lots of undo
set undolevels=5000


