syntax on
filetype indent plugin on

set ruler		"Show the line and column number of the cursor position
set autoindent		"Copy indent from current line when starting a new line
set noexpandtab		"Strictly use tabs when tab is pressed (this is the default)
set shiftwidth=4
set tabstop=4
set hlsearch		"Highlight search results
set ignorecase		"When doing a search, ignore the case of letters
set smartcase		"Override the ignorecase option if the search pattern contains upper case letters
set backupdir=~/.vim/backup/
set directory=~/.vim/backup/
set backspace=indent,eol,start

map <C-T> :tabnew<CR>:edit 
map <C-O> :tabfind 
map <S-Tab> gt

hi Search ctermbg=Blue
hi Search ctermfg=White

if has('gui_running')
        colorscheme codeschool
		set guioptions=T
	else
		set number
	endif
