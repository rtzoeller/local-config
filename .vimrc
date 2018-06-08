" Fix backspace functionality
set backspace=indent,eol,start

" Enable syntax highlighting
syntax on

" Enable smart indenting
filetype plugin indent on
set autoindent

" Use 4 spaces as a tab
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab

" Show line information
set number
set cursorline

" Ignore case during searches unless an uppercase char. is present
set ignorecase
set smartcase

" Show filepath at the bottom of the window
set laststatus=2
set statusline=%f\ %=%l\:%c\ %6P

" Show completion options on tab
set wildmenu

" Set line limits based on filetype
" We use 80 characters for C/C++, 120 for Python
au FileType c set colorcolumn=81
au FileType cpp set colorcolumn=81
au FileType python set colorcolumn=121

" More natural feeling split options
set splitbelow
set splitright

" Search configuration
set hlsearch
set incsearch
set showmatch
set ignorecase
set smartcase

" Show commands while typing
set showcmd

" Keep lines while scrolling
set scrolloff=5

" Don't make me wait when inserting in blocks
set ttimeoutlen=10

" Let <F5> strip away trailing whitespace
nnoremap <silent> <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>

" Load additional local configurations
if filereadable(glob("~/.vimrc.local"))
    source ~/.vimrc.local
endif
