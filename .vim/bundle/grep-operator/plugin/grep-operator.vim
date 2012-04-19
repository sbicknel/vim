nnoremap <leader>g :set operatorfunc=<SID>GrepOperator<cr><c-l>g@
vnoremap <leader>g :<c-u>call <SID>GrepOperator(visualmode())<cr><c-l>

function! s:GrepOperator(type)
    let saved_unnamed_register = @@

    if a:type ==# 'v'
	execute "normal! `<v`>y"
    elseif a:type ==# 'char'
	execute "normal! `[v`]y"
    else
	return
    endif

    silent execute "grep! " . shellescape(@@) . " ."
    let @@ = saved_unnamed_register
    copen

endfunction
