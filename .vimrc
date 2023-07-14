" Basic changes
" display numbers on sidebar
set number

" display current line and column on bottom bar
set ruler

" set tabs
set tabstop=2
set shiftwidth=2

set autoindent

" tabs to spaces
set expandtab

" highlight search results
set hlsearch

" start search without having to submit
set incsearch

" allow mouse 
set mouse=a

" Search down into subfolders
" Provides tab-completion for all file-related tasks
set path+=**

" Display all matching files when we tab complete
set wildmenu

" Set relative numbering
set relativenumber

" set spellcheck
"set spell spelllang=en_us

" use n and N to center the next search result on the screen
nmap n nzz
nmap N Nzz

filetype on
syntax on

" Skeleton files
" Read cpp skeleton into file
nnoremap \cpp :-1read $HOME/.vim/.skeleton.cpp<CR>/main<CR>:noh<CR>jO

" NERDTree 
" https://github.com/preservim/nerdtree
" Start NERDTree and leave the cursor in it.
autocmd VimEnter * NERDTree 

" Start NERDTree when Vim starts with a directory argument.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists('s:std_in') |
    \ execute 'NERDTree' argv()[0] | wincmd p | enew | execute 'cd '.argv()[0] | endif

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" If another buffer tries to replace NERDTree, put it in the other window, and bring back NERDTree.
autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
    \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif

" gitGutter
" Update time for swap file updates
set updatetime=100

" git-commentary
autocmd FileType cpp setlocal commentstring=//\ %s

" adding to ctags paths
set tags+=/opt/homebrew/Cellar/raylib/tags


