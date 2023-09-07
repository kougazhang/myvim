
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

" 标签页跳转快捷键
noremap <C-L> <Esc>:tabnext<CR>
noremap <C-H> <Esc>:tabprevious<CR>

" Vim 中 copy 的内容保存到剪贴板, 仅 Mac 生效.
set clipboard=unnamed

"set nohls  " close hightlight after search
set nu
set shiftwidth=4
set showmatch
set smartindent
set softtabstop=4
set tabstop=4
syntax on

" Function to rename the variable under the cursor
" Call it with :call Rename()
" expand("<cword>") gets the word under the cursor. 
" The search string uses % for file-scope, 
" and the \(\W\) patterns look for non-word characters 
" at the boundary of the word to replace, 
" and save them in variables \1 and \2 so as to be re-inserted in the replacement pattern.
function! Rename()
  let word_to_replace = expand("<cword>")
  let replacement = input("new name: ")
  execute '%s/\(\W\)' . word_to_replace . '\(\W\)/\1' . replacement . '\2/gc'
endfunction
