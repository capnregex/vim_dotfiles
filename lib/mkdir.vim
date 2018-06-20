function mkdir()
  execute ':silent !mkdir -p %:h'
endfunction
command mkdir call MakeDirs()

function WriteCreatingDirs()
    mkdir()
    write
endfunction
command W call WriteCreatingDirs()

