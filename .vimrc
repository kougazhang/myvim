
filetype on
set guifont=Monospace\ 50
set autoindent
set background=dark
set backspace=2
set cursorline
set encoding=utf-8
set expandtab
set history=1000
set hlsearch
set ignorecase
set incsearch  " increase search function. make it work immediately
set laststatus=2
set nocompatible                                                                                                                                                                         
"set nohls  " close hightlight after search
set nu
set shiftwidth=4
set showmatch
set smartindent
set softtabstop=4
set tabstop=4
"set vbt_vb=  "eliminate command error alert
call pathogen#infect()
syntax on
filetype plugin indent on
map <F1> :NERDTreeMirror<CR>
map <F1> :NERDTreeToggle<CR>
" Add spaces after comment delimiters by default
let mapleader=","
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not
let g:NERDToggleCheckAllLines = 1
let g:go_version_warning = 0
map <F2> :call FormatCode()<CR>
  func! FormatCode()
        exec "w"
        if &filetype == 'C' || &filetype == 'h'
           exec "!astyle --style=google %"
        elseif &filetype == 'cpp'
           exec "!astyle --style=google %"        
        return
        endif
   endfunc
autocmd BufNewFile *.c 0r ~/.vim/template/c.tlp

call plug#begin('~/.vim/plugged')
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
" Initialize plugin system
call plug#end()

nmap <C-s> <Plug>MarkdownPreview
nmap <M-s> <Plug>MarkdownPreviewStop
nmap <C-p> <Plug>MarkdownPreviewToggle

