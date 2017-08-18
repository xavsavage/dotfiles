set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdtree'

Plugin 'itchyny/lightline.vim'

Plugin 'tpope/vim-fugitive'

Plugin 'vim-syntastic/syntastic'

Plugin 'Valloric/YouCompleteMe'

Plugin 'ternjs/tern_for_vim'

call vundle#end()
filetype plugin indent on

" File encoding
set encoding=utf8

" Faster redraw = faster scrolling
set lazyredraw

" No new line at end of file
set noeol

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

colorscheme default

" Colors for highlights
set cursorline
hi CursorLine  cterm=NONE ctermbg=black    ctermfg=NONE  guibg=black    guifg=NONE
hi ColorColumn cterm=NONE ctermbg=black    ctermfg=NONE  guibg=black    guifg=NONE
hi Search      cterm=NONE ctermbg=darkgrey ctermfg=NONE  guibg=darkgrey guifg=NONE
hi Visual      cterm=NONE ctermbg=black    ctermfg=NONE  guibg=black    guifg=NONE
hi Todo        cterm=NONE ctermbg=darkred  ctermfg=white guibg=darkred  guifg=white
hi ExtraWhitespace cterm=NONE ctermbg=red      ctermfg=NONE  guibg=red      guifg=NONE

match ExtraWhitespace /\s\+$/

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

" Swap hard and soft BOL
noremap 0 ^
noremap ^ 0

"Better indenting
vnoremap <tab> >gv
vnoremap <s-tab> <gv

" Better search (and replace)
noremap <space> /
noremap <silent> <leader><space> :noh<cr>
vnoremap <C-r> "hy:%s/<C-r>h//gc<left><left><left>

" Comment the current selection
vnoremap <C-k> 0<C-v>I//<esc>

" Load tag files
set tags=./tags;

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif


"--- Plugin configuration ---

" NERDTree
map <F2> :NERDTreeToggle<CR>
let g:NERDTreeMapOpenInTab = '<2-LeftMouse>'


" lightline
set laststatus=2
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head'
      \ },
      \ }


" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

map <F3> :SyntasticCheck<CR>
map <F4> :SyntasticReset<CR>

hi clear SignColumn
hi SpellBad  cterm=NONE ctermbg=darkred  ctermfg=white    guibg=darkred  guifg=white
hi SpellCap  cterm=NONE ctermbg=darkred  ctermfg=white    guibg=darkred  guifg=white
hi Error     cterm=NONE ctermbg=NONE     ctermfg=darkred  guibg=NONE     guifg=darkred
hi Todo      cterm=NONE ctermbg=NONE     ctermfg=yellow   guibg=NONE     guifg=yellow

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1

let g:syntastic_javascript_checkers=['eslint']
let g:syntastic_javascript_eslint_exe=['eslint']


" YouCompleteMe
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_goto_buffer_command = 'new-or-existing-tab'
nnoremap <silent> <C-LeftMouse> <LeftMouse>:YcmCompleter GoToDefinition<CR>
