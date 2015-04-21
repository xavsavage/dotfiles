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
hi CursorLine  cterm=NONE ctermbg=black    ctermfg=NONE  guibg=black    guifg=NONE
hi ColorColumn cterm=NONE ctermbg=black    ctermfg=NONE  guibg=black    guifg=NONE
hi Search      cterm=NONE ctermbg=darkgrey ctermfg=NONE  guibg=darkgrey guifg=NONE
hi Visual      cterm=NONE ctermbg=black    ctermfg=NONE  guibg=black    guifg=NONE
hi Todo        cterm=NONE ctermbg=darkred  ctermfg=white guibg=darkred  guifg=white

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

"Better indenting
vnoremap <tab> >gv
vnoremap <s-tab> <gv

" Better search (and replace)
noremap <space> /
noremap <leader><space> :noh<cr>
vnoremap <C-r> "hy:%s/<C-r>h//gc<left><left><left>

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

" lightline
set laststatus=2
let g:lightline = {
    \ 'colorscheme': 'wombat',
    \}

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
