" This is the source .vimrc.
" It should be located in ~/.vim/vimrc/.
" This is done by git cloning the repo into ~/.vim/.
" In the ~/.vimrc file simply put the folowing:
" 	source ~/.vim/vimrc/.vimrc
"""""""""""""""""""""""""""""""""""""""""""""""""""""

set backspace=indent,eol,start
" shows relative line number on the left along with current line
set number relativenumber
set nu rnu
" shows current line and column in bottom right
set ruler
" bar at bottom of window with row,col etc.
set laststatus=2

" sets line number colors
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE

" custom command to open file explorer in current directory and set size to 30
:command Lex Lexplore 30
:command LexW Lexplore 30 ~/vimwiki/

" VimWiki
set nocompatible
filetype plugin on
syntax on 

let g:vimwiki_list = [{'path': '~/vimwiki/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]

let g:vimwiki_global_ext = 0

" https://github.com/vimwiki/vimwiki/issues/116
hi  xBlue_Link ctermfg=31
hi  xIntellij_Green ctermfg=22
hi  xIntellij_Gold ctermfg=220
hi  xWhite ctermfg=15
hi  xIntellij_Orange_Bold ctermfg=208 term=bold cterm=bold gui=bold
hi  xIntellij_Orange ctermfg=208 term=bold cterm=bold gui=bold
hi  xBlack ctermfg=0 cterm=italic

" header prefix
hi def link VimwikiMarkers xIntellij_Gold
" headers
hi def link VimwikiHeader1 xIntellij_Gold
hi def link VimwikiHeader2 xIntellij_Gold
hi def link VimwikiHeader3 xIntellij_Gold
hi def link VimwikiHeader4 xIntellij_Gold
hi def link VimwikiHeader5 xIntellij_Gold
hi def link VimwikiHeader6 xIntellij_Gold
" bullets and dash lists
hi def link VimwikiList xIntellij_Orange
hi def link VimwikiLink xBlue_Link
" bolded text
hi def link VimwikiBold xIntellij_Orange_Bold
" code block
hi def link VimwikiCode xIntellij_Green
" strikethrough
hi def link VimwikiDelText xBlack


" Vundle
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'vimwiki/vimwiki'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line













inoremap kj <esc>
vnoremap kj <esc>

cnoremap kj <esc>
