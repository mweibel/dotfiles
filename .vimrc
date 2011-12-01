" pathogen
call pathogen#infect()

" set background=dark
syntax on

" show cmd currently typed in
set showcmd

set fileformat=unix

" indenting
set smartindent
set autoindent
set smarttab
set noexpandtab " don't insert spaces for tabs

set tabstop=4
set shiftwidth=4 " shiftwidth

" remember last location in file
if has("autocmd")
	au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
		\|exe "normal g'\"" | endif
endif

set ruler "show ruler
set number " show line numbers

"search
set incsearch "find by type
set smartcase
set hlsearch

" delete to the left in insert mode with backspace
set backspace=indent,eol,start

set autoread " if a file has been changed outside of vim and it has not been changed, automatically re-read it

set laststatus=2
set title
set statusline+=%{fugitive#statusline()} " add current branch to statusline
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

map <F2> :NERDTreeMirrorToggle<CR> " f2 for toggling nerd tree buffer

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

highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE

" Include user's local vim config if available
if filereadable(expand("~/.vimrc.local"))
	source ~/.vimrc.local
endif
