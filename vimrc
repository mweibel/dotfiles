" Remap leader
let mapleader = ','

syntax on

" show cmd currently typed in
set showcmd

set fileformat=unix

" indenting
set smartindent
set autoindent
set smarttab

set tabstop=2
set shiftwidth=2 " shiftwidth

" no backups, swapfiles
set nobackup
set nowb
set noswapfile

" remember last location in file
if has("autocmd")
	au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
		\|exe "normal g'\"" | endif
endif

set ruler "show ruler
set number " show line numbers
" set relativenumber

"search
set incsearch "find by type
set smartcase
set hlsearch

" delete to the left in insert mode with backspace
set backspace=indent,eol,start

set autoread " if a file has been changed outside of vim and it has not been changed, automatically re-read it

" commented as on linux doesnt work
" set laststatus=2
set title
set statusline+=%#warningmsg#
set statusline+=%*

filetype plugin indent on

" macosx clipboard instead of vim's
set clipboard=unnamed

if has("gui_running")
	autocmd VimResized * wincmd =
	color eclipse
endif

"Delete trailing white space ;)
func! DeleteTrailingWS()
	exe "normal mz"
	%s/\s\+$//ge
	exe "normal `z"
endfunc
autocmd BufWrite *.(php|js) :call DeleteTrailingWS()

" colors
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE
highlight StatusLine ctermfg=Grey ctermbg=Black
highlight StatusLineNC ctermfg=DarkGrey ctermbg=Black

au InsertEnter * highlight StatusLine ctermfg=Blue ctermbg=Black
au InsertLeave * highlight StatusLine ctermfg=Grey ctermbg=Black

" Shift-Tab buffer previous
nmap <S-Tab> :bp<CR>
" Tab buffer next
nmap <Tab> :bn<CR>

nnoremap <C-Y> i
imap <C-Y> <Esc>

" Invisibles
highlight NonText ctermfg=DarkGrey
highlight SpecialKey ctermfg=DarkGrey
" Shortcut to toggle `set list`
nmap <leader>l :set list!<CR>
" Use the same symbols as textmate for tabstops & EOLs
set listchars=tab:▸\ ,eol:¬

" Toggle line numbers with ,n
nmap <leader>n :set number!<CR>

" Linebreaks
set showbreak=↳\
" Toggle show line breaks
function! ToggleShowBreak()
	if &showbreak == ''
		set showbreak=↳\
	else
		set showbreak=
	endif
endfunction
" Toggle show linebreaks with ,b
nmap <leader>b :call ToggleShowBreak()<CR>

" unsaved buffers can be in the background to prevent splitscreens because of
" that
set hidden

" relative/absolute number switching
" from
" http://jeffkreeftmeijer.com/2012/relative-line-numbers-in-vim-for-super-fast-movement/
autocmd FocusLost * :set number
autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber
autocmd CursorMoved * :set relativenumber


" Include user's local vim config if available
if filereadable(expand("~/.vimrc.local"))
	source ~/.vimrc.local
endif
