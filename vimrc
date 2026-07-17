" capnregex/vim_dotfiles — classic Vim (not Neovim)
" Plugins: native packages under pack/*/start/* (see .gitmodules)

" Prefer Vim defaults over vi-compatible mode
if &compatible
  set nocompatible
endif

" Leader for custom maps (space)
let mapleader = " "
let maplocalleader = "\\"

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
set number
set wildmenu
set wildmode=longest:full,full
set path+=**
set wildignore+=*/.git/*,*/node_modules/*,*/tmp/*,*/vendor/*,*/.bundle/*,*/log/*,*/coverage/*
set splitbelow
set splitright

" Indent defaults (sleuth may adjust per-file; GUI gvimrc may refine)
set expandtab
set shiftwidth=2
set softtabstop=2
set autoindent
set smartindent

" Persistent undo
if has('persistent_undo')
  let s:undo_dir = expand('~/.vim/undo')
  if !isdirectory(s:undo_dir)
    call mkdir(s:undo_dir, 'p', 0700)
  endif
  set undofile
  let &undodir = s:undo_dir
endif

" Spelling: language always available; enable only for prose-ish filetypes
set spelllang=en
augroup vim_dotfiles_spell
  autocmd!
  autocmd FileType gitcommit,markdown,text,mail setlocal spell
augroup END

" Clear search highlight
nnoremap <silent> <C-L> :nohlsearch<CR><C-L>

" --- fzf / fzf.vim (requires system fzf; fd + ripgrep optional but recommended) ---
if executable('fd')
  let $FZF_DEFAULT_COMMAND = 'fd --type f --hidden --follow --exclude .git'
endif
" Prefer ripgrep for :Rg (fzf.vim default if rg is on PATH)
nnoremap <leader>f :Files<CR>
nnoremap <leader>F :GFiles<CR>
nnoremap <leader>b :Buffers<CR>
nnoremap <leader>/ :Rg<CR>
nnoremap <leader>h :History<CR>
nnoremap <leader>l :BLines<CR>

" --- fugitive ---
nnoremap <leader>gs :Git<CR>
nnoremap <leader>gb :Git blame<CR>

" Optional host overrides (Debian/etc.; harmless if missing)
if filereadable('/etc/vim/vimrc.local')
  source /etc/vim/vimrc.local
endif
