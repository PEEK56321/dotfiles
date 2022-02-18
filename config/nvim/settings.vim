" Disable compatibility mode.
set nocompatible

" Enable true color support.
set termguicolors

" Use utf-8 encoding
set encoding=utf-8

" Disable beep on errors
set noerrorbells

" 1 tab = 4 spaces
set tabstop=4 shiftwidth=4

" Replace tabs with spaces
set expandtab

" When deleting whitespace at the beginning of a line, delete 1 tab worth of spaces
set smarttab

" Round indentation to the nearest multiple of shiftwidth
set shiftround

" Enable indenting based on file type
filetype plugin indent on

" Turn on syntax highlighting
syntax on

" Show the matching brackets
set showmatch

" Maintain 2 lines above and below the cursor
set scrolloff=2

" Maintain 5 columns left and right of the cursor
set sidescrolloff=5

" Double height status line
set laststatus=2

" Configure the theme depending on if this is a linux console or not.
let terminal = $TERM

if terminal == 'linux'
    " Set color scheme
    colorscheme default

    " Disable powerline fonts
    let g:airline_powerline_fonts = 0
    let g:tmuxline_powerline_separators = 0


    " Set Airline theme
    let g:airline_theme = 'base16_codeschool'
else
    " Set color scheme
    colorscheme PaperColor

    " Enable powerline fonts
    let g:airline_powerline_fonts = 1
    let g:tmuxline_powerline_separators = 1


    " Set the Airline theme
    let g:airline_theme = 'cool'
endif

" Set preference for dark color group
set background=dark

" Display open buffers
let g:airline#extensions#tabline#enabled = 1

" Configure fzf display
let g:fzf_layout = { 'right': '40%' }

" Enable SpaceSweeper
let g:space_sweeper_enabled = 1

" Trim leading and trailing spaces when saving files.
autocmd BufWritePre * call SpaceSweeper()

" Force detected twig files to apply Jinja syntax highlighting.
autocmd FileType twig setlocal filetype=htmljinja
