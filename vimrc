execute pathogen#infect()

colorscheme badwolf
syntax enable
let mapleader=","
filetype plugin on

"Space & tabs
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smarttab

"UI
set number
set showcmd
set cursorline
filetype indent on
set wildmenu
set lazyredraw
set showmatch
set incsearch
set hlsearch
"map ,space to nohlsearch
nnoremap <leader><space> :nohlsearch<CR>

"Folding
set foldenable
set foldlevelstart=10
set foldnestmax=10
"map space to fold
nnoremap <space> za
set foldmethod=syntax
nnoremap j gj
nnoremap k gk
nnoremap B ^
nnoremap E $
nnoremap gV `[v`]


"mappings
nnoremap <leader>u :GundoToggle<CR>
nnoremap <leader>n :NERDTreeToggle<CR>
nnoremap <leader>t :TagbarToggle<CR>

let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"

" Always show statusline
set laststatus=2

" Use 256 colours (Use this setting only if your terminal supports 256 colours)
set t_Co=256
set guifont=PragmataPro\ for\ Powerline:h14


" haskell
let g:tagbar_type_haskell = {
    \ 'ctagsbin'  : 'hasktags',
    \ 'ctagsargs' : '-x -c -o-',
    \ 'kinds'     : [
        \  'm:modules:0:1',
        \  'd:data: 0:1',
        \  'd_gadt: data gadt:0:1',
        \  't:type names:0:1',
        \  'nt:new types:0:1',
        \  'c:classes:0:1',
        \  'cons:constructors:1:1',
        \  'c_gadt:constructor gadt:1:1',
        \  'c_a:constructor accessors:1:1',
        \  'ft:function types:1:1',
        \  'fi:function implementations:0:1',
        \  'o:others:0:1'
    \ ],
    \ 'sro'        : '.',
    \ 'kind2scope' : {
        \ 'm' : 'module',
        \ 'c' : 'class',
        \ 'd' : 'data',
        \ 't' : 'type'
    \ },
    \ 'scope2kind' : {
        \ 'module' : 'm',
        \ 'class'  : 'c',
        \ 'data'   : 'd',
        \ 'type'   : 't'
    \ }
\ }

autocmd Filetype pl set syntax=prolog

set rtp+=/usr/local/opt/fzf

if filereadable($HOME . "/.vimrc.local")
    source ~/.vimrc.local
endif
