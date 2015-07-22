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
set number 

map <C-T> :tabnew<CR>:edit 
map <C-O> :tabfind 
map <S-Tab> gt
nmap <C-N> :set invnumber<CR>
imap jj <esc>
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
inoremap <Up> <NOP>
inoremap <Down> <NOP>
inoremap <Left> <NOP>
inoremap <Right> <NOP>

hi Search ctermbg=Blue
hi Search ctermfg=White
hi LineNr ctermfg=blue "ctermbg=black

