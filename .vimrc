set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')
" let Vundle manage Vundle, required

call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
" filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

if exists('$TMUX')
      let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
        let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
    else
          let &t_SI = "\<Esc>]50;CursorShape=1\x7"
            let &t_EI = "\<Esc>]50;CursorShape=0\x7"
        endif
        :autocmd InsertEnter * set cul
        :autocmd InsertLeave * set nocul

"--------------------------- Plugins -----------------------------

Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'majutsushi/tagbar'
Plugin 'valloric/youcompleteme'
Plugin 'tpope/vim-fugitive'
Plugin 'tomasr/molokai'
Plugin 'easymotion/vim-easymotion'
Plugin 'joonty/vdebug'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'marijnh/tern_for_vim'
Plugin 'klen/python-mode'
Plugin 'shougo/vimproc.vim'
Plugin 'shougo/vimshell.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'jellybeans.vim'
Plugin 'scrooloose/nerdcommenter'
" Plugin 'tpope/vim-surround'
" Plugin 'lokaltog/vim-powerline'

"-----------------------------------------------------------------
"--------------------------- Setting -----------------------------

set nu
set tabstop=4
set expandtab
set ts=8
set sw=4
set sts=4
set shiftwidth=4
set smartindent
set cindent
set autoindent
set t_Co=256
set ruler
set autowrite
set autoread
set hlsearch
set showmatch 
syntax on

" colorscheme molokai
colorscheme jellybeans

autocmd VimEnter * NERDTree
autocmd VimEnter * Tagbar

let g:airline_theme='bubblegum'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

"-----------------------------------------------------------------
