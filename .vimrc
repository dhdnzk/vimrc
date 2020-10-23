set shell=/usr/local/bin/zsh
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'jellybeans.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'blueyed/vim-diminactive'
Plugin 'fatih/vim-go'
Plugin 'valloric/youcompleteme'
Plugin 'shougo/vimproc.vim'

"Plugin 'easymotion/vim-easymotion'
"Plugin 'joonty/vdebug'
"Plugin 'marijnh/tern_for_vim'
"Plugin 'shougo/vimproc.vim'
"Plugin 'shougo/vimshell.vim'
"Plugin 'terryma/vim-multiple-cursors'
"Plugin 'scrooloose/nerdcommenter'
"Plugin 'tpope/vim-surround'
"Plugin 'lokaltog/vim-powerline'

call vundle#end()

set nu
set tabstop=4
set expandtab
set ts=4
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

colorscheme jellybeans

let g:airline_theme='bubblegum'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_add_preview_to_completeopt = 1
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1

autocmd VimEnter,Colorscheme * : hi IndentGuidesOdd  ctermbg=black
autocmd VimEnter,Colorscheme * : hi IndentGuidesEven ctermbg=black

map <F8> :NERDTreeToggle<CR>
map <F2> :GoDef<CR>
map <F4> :TagbarToggle<CR>
map <Tab> :bn<CR>
map <S-Tab> :bp<CR>
