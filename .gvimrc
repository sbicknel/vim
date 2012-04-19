set guiheadroom=0
if has('gui_running')
    set nopaste
    set mousehide
    set guioptions-=m
    set guioptions-=T
    set guioptions+=i
    set guioptions-=r
    set guioptions-=l
    set guioptions-=L
    set guifont=DejaVu\ Sans\ Mono\ 10
    set textwidth=0
    au BufNewFile,BufRead *.tmp set nonumber spell linebreak
endif
