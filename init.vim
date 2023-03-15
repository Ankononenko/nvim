:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a

call plug#begin()

" File navigation
Plug 'https://github.com/preservim/nerdtree'
Plug 'https://github.com/preservim/vim-indent-guides'
Plug 'https://github.com/tc50cal/vim-terminal'

call plug#end()

" Start NERDTree and put the cursor back in the other window.
autocmd VimEnter * NERDTree | wincmd p

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" Enable indent guides by default
let g:indent_guides_enable_on_vim_startup = 1
