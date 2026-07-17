" Create missing parent directories when writing a file.
" :W  — write, creating dirs as needed
" :Mkdir — create parent dirs for the current buffer path only

if exists('g:loaded_mkdir_helper')
  finish
endif
let g:loaded_mkdir_helper = 1

function! s:EnsureParentDirs() abort
  let l:dir = expand('%:p:h')
  if empty(l:dir) || isdirectory(l:dir)
    return
  endif
  call mkdir(l:dir, 'p')
endfunction

function! s:WriteCreatingDirs() abort
  call s:EnsureParentDirs()
  write
endfunction

command! -bar Mkdir call s:EnsureParentDirs()
command! -bar W call s:WriteCreatingDirs()
