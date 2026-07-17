" GUI-only settings for gvim

" Font (Omarchy / Arch: Monospace maps to a sensible default)
set guifont=Monospace\ 14
set ch=2
set mousehide

" Indent (also set in vimrc for terminal vim)
set expandtab
set shiftwidth=2
set softtabstop=2
set autoindent
set smartindent

" Optional host overrides
if filereadable('/etc/vim/gvimrc.local')
  source /etc/vim/gvimrc.local
endif

" Common application-style clipboard bindings (GUI)
if has('clipboard')
  " CTRL-X is Cut
  vnoremap <C-X> "+x

  " CTRL-C is Copy
  vnoremap <C-C> "+y

  " CTRL-V is Paste
  map <C-V> "+gP
  cmap <C-V> <C-R>+
endif

" Shift-Insert like Xterm middle-click paste
map <S-Insert> <MiddleMouse>
map! <S-Insert> <MiddleMouse>

if v:version >= 500
  let c_comment_strings = 1

  if !exists('g:syntax_on')
    syntax on
  endif

  set hlsearch
  colorscheme morning
endif
