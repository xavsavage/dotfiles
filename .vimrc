" File encoding
set encoding=utf8

" Faster redraw = faster scrolling
set lazyredraw

" Use mouse to scroll and move cursor
set ttymouse=xterm2
set mouse=n

" Syntax hilighting
syntax on

" Highlight current line
set list
set listchars=tab:\|\ 

" Marks on columns 80 and 100
set colorcolumn=80,100,120

" Colors for highlights
set cursorline
hi CursorLine   cterm=NONE ctermbg=black ctermfg=NONE guibg=black guifg=NONE
hi ColorColumn  cterm=NONE ctermbg=black ctermfg=NONE guibg=black guifg=NONE
hi Search       cterm=NONE ctermbg=gray ctermfg=black guibg=gray guifg=black

" Tabs
" Uncomment the following line to use spaces instead of tabs.
" set expandtab
set tabstop=4
set shiftwidth=4
set autoindent
set smartindent

" Line numbers
set number

" Window title
set title

" Search options
set hlsearch
set ignorecase
set smartcase

" Remove swap file
set noswapfile

" Show command
set showcmd

" Fix long lines
map j gj
map k gk

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif

" Shortcut to first character
map 0 ^

" Plugins
execute pathogen#infect()

" NERDTree
map <F2> :NERDTreeToggle<CR>

" Powerline
let g:Powerline_Symbols = 'fancy'
set laststatus=2
set t_Co=256
