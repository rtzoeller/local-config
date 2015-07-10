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

" Show line information
set number
set ruler

" Ignore case during searches unless an uppercase char. is present
set ignorecase
set smartcase

" Show filepath at the bottom of the window
set laststatus=2
set statusline+=%F
