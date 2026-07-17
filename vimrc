" capnregex/vim_dotfiles — classic Vim (not Neovim)
" Plugins: native packages under pack/*/start/* (see .gitmodules)

" Prefer Vim defaults over vi-compatible mode
if &compatible
  set nocompatible
endif

" Syntax + filetype (plugins/indent from packages + $VIMRUNTIME)
if has('syntax') && !exists('g:syntax_on')
  syntax enable
endif
filetype plugin indent on

" Editing
set showcmd
set showmatch
set ignorecase
set smartcase
set incsearch
set hlsearch
set autowrite
set hidden
set mouse=a
set mousemodel=popup

" Indent defaults (GUI gvimrc may refine further)
set expandtab
set shiftwidth=2
set softtabstop=2
set autoindent
set smartindent

" Spelling
set spelllang=en
set spell

" Optional host overrides (Debian/etc.; harmless if missing)
if filereadable('/etc/vim/vimrc.local')
  source /etc/vim/vimrc.local
endif
