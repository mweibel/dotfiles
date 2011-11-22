" pathogen
call pathogen#infect()

set background=dark
syntax on

" indenting
set smartindent
set autoindent
set smarttab

set tabstop=4
set shiftwidth=4 " shiftwidth
set expandtab " expandtab

set ruler "show ruler
set number " show line numbers

"search
set incsearch "find by type
set smartcase
set hlsearch

" delete to the left in insert mode with backspace
set backspace=indent,eol,start

set autoread " if a file has been changed outside of vim and it has not been changed, automatically re-read it

set title
set statusline+=%{fugitive#statusline()} " add current branch to statusline

map <F2> :NERDTreeMirrorToggle<CR> " f2 for toggling nerd tree buffer

filetype plugin indent on
