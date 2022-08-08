" All system-wide defaults are set in $VIMRUNTIME/archlinux.vim (usually just
" /usr/share/vim/vimfiles/archlinux.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vimrc), since archlinux.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing archlinux.vim since it alters the value of the
" 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages.
"runtime! archlinux.vim

" If you prefer the old-style vim functionalty, add 'runtime! vimrc_example.vim'
" Or better yet, read /usr/share/vim/vim80/vimrc_example.vim or the vim manual
" and configure vim to your own liking!

" do not load defaults if ~/.vimrc is missing
let skip_defaults_vim=1

"set rnu
set number
" relativenumber

"vnoremap <C-c> "+y
"map <C-v> "+p
set nocompatible
filetype plugin on
syntax on
set noerrorbells
"enable clipboard
set clipboard=unnamedplus

" Enable vim-plug addon
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
"    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
" after add new Plug, run 'source %' and ' ':PlugInstall'
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'vimwiki/vimwiki'
Plug 'chrisbra/colorizer'
" colorscheme
Plug 'dylanaraps/wal.vim'
Plug 'dylanaraps/wal'
Plug 'morhetz/gruvbox'
Plug 'chriskempson/base16-vim'
Plug 'tomasr/molokai'
Plug 'altercation/vim-colors-solarized'
Plug 'aserebryakov/vim-todo-lists'
"Plug 'valloric/youcompleteme'

call plug#end()

" For some reasen it doesn't work
let g:colorizer_auto_color = 1
let g:colorizer_auto_filetype='*'

colorscheme wal
"colorscheme gruvbox
"set bg=light
"set bg=dark
