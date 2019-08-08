" Specify a directory for Plugs
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'Plug'
call plug#begin('~/.vim/plugged')
" set the runtime path to include Vundle and initialize
" set rtp+=~/.vim/bundle/Vundle.vim
" call vundle#begin()
" " alternatively, pass a path where Vundle should install Plugs
" "call vundle#begin('~/some/path/here')
"
" " let Vundle manage Vundle, required
" Plug 'VundleVim/Vundle.vim'
"
" " The following are examples of different formats supported.
" " Keep Plug commands between vundle#begin/end.
" " Plug on GitHub repo
" " Plug from http://vim-scripts.org/vim/scripts.html
Plug 'dense-analysis/ale'
Plug 'davidklsn/vim-sialoquent'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-dispatch'
Plug 'radenling/vim-dispatch-neovim'
Plug 'junegunn/fzf'
Plug 'vim-scripts/L9'
Plug 'rking/ag.vim'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-jdaddy'
Plug 'fatih/vim-go'

Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'

Plug 'ngmy/vim-rubocop'
Plug 'tpope/vim-rake'

Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}} " Language Server support
Plug 'vim-ruby/vim-ruby' " For Facts, Ruby functions, and custom providers
" "Plug 'neoclide/coc.nvim', {'branch': 'release'}
" " Git Plug not hosted on GitHub
" Plug 'git://git.wincent.com/command-t.git'
" " git repos on your local machine (i.e. when working on your own Plug)
" Plug 'file:///home/gmarik/path/to/Plug'
" " The sparkup vim script is in a subdirectory of this repo called vim.
" " Pass the path to set the runtimepath properly.
" Plug 'rstacruz/sparkup', {'rtp': 'vim/'}
" " Install L9 and avoid a Naming conflict if you've already installed a
" " different version somewhere else.
" Plug 'ascenator/L9', {'name': 'newL9'}
"
" " All of your Plugs must be added before the following line
" call vundle#end()            " required
call plug#end()

" filetype Plug indent on    " required
" " To ignore Plug indent changes, instead use:
" "filetype Plug on
" "
" " Brief help
" " :PlugList       - lists configured Plugs
" " :PlugInstall    - installs Plugs; append `!` to update or just
" :PlugUpdate
" " :PlugSearch foo - searches for foo; append `!` to refresh local cache
" " :PlugClean      - confirms removal of unused Plugs; append `!` to
" auto-approve removal
" "
" " see :h vundle for more details or wiki for FAQ
" " Put your non-Plug stuff after this lineset nocompatible

set relativenumber

function! NumberToggle()
  if(&relativenumber == 1)
    set norelativenumber
  else
    set relativenumber
  endif
  endfunc

let mapleader = ","


nnoremap <C-n> :call NumberToggle()<cr>
map <C-k> :NERDTreeToggle<CR>
map <C-p> :FZF<CR>
map <C-f> :FZF ../<CR>
map <C-h> :tabp<CR>
map <C-l> :tabn<CR>
map <C-y> :vsplit %<CR>

" Settings:
" filetype Plug indent on   " Automatically detect file types.
syntax on                   " Syntax highlighting
set mouse=a                 " Automatically enable mouse usage
set mousehide               " Hide the mouse cursor while typing
scriptencoding utf-8

let g:ale_linters = {'ruby': ['standardrb']}
let g:ale_fixers = {'ruby': ['standardrb']}
let g:ale_fix_on_save = 1

set autoindent                  " Indent at the same level of the previous line
set breakindent
set shiftwidth=2                " Use indents of 4 spaces
set expandtab                   " Tabs are spaces, not tabs
set tabstop=2                   " An indentation every four columns
set softtabstop=2               " Let backspace delete indent
set nojoinspaces                " Prevents inserting two spaces after punctuation on a join (J)
set splitright                  " Puts new vsplit windows to the right of the current
set splitbelow                  " Puts new split windows to the bottom of the current
set noswapfile
set background=dark
set hidden
set linespace=1
set showmatch
set ignorecase
set clipboard=unnamed

set backspace=indent,eol,start  " Backspace for dummies
set pastetoggle=<F12>
syntax on
" add jbuilder syntax highlighting
au BufNewFile,BufRead *.json.jbuilder set ft=ruby
" filetype Plug indent on
colorscheme spring-night


