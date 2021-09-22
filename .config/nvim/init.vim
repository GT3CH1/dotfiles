set nocompatible              " be iMproved, required
filetype off                  " required

filetype plugin on
filetype indent on

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'Chiel92/vim-autoformat'
Plugin 'airblade/vim-gitgutter'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
call vundle#end()

" Enable syntax highlighting
syntax enable

" Show numbers
set number

" Auto indent
set autoindent

" Tab=4 spaces
set tabstop=4
set expandtab

" Highlight our searches, and do incremental
set hls
set is

" Show the command bar
set showcmd
set shiftwidth=4
set encoding=utf-8
set wildmenu

" Make the numbers red, background a dark gray, and comments light blue
hi LineNr ctermfg=red
hi Comment ctermfg=lightblue
set formatoptions=lncrq
" If we forget to launch as sudo, we can call this to write it (requires sudo)
cnoremap w!! execute 'silent! write !sudo tee % >/dev/null' <bar> edit!

" Clears and redraws the screen after a search
nnoremap <silent> <Esc><Esc> :nohls<CR><C-L>

" Makes the insert key put us into paste mode.
nnoremap <Insert> :set paste<CR>a

" Cut the line we are on.
nnoremap x ^<C-V>$x

" Lazy way to move to next file
nnoremap n :n<CR>

noremap <F3> :Autoformat<CR>
" Maps our special character to '
let mapleader=","

" Maps ,n to toggle the line numbers.
nnoremap <Leader>n :set number!<CR>

" Maps ,p to go back to last file.

nnoremap <Leader>s <C-X>

" vim-gutter configuration
highlight! link SignColumn LineNr

let g:gitgutter_set_sign_backgrounds = 1

highlight GitGutterAdd    guifg=#009900 ctermfg=2
highlight GitGutterChange guifg=#bbbb00 ctermfg=3
highlight GitGutterDelete guifg=#ff2222 ctermfg=1


" airline configuration
let g:airline_theme='onedark'
