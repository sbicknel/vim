" set filetypes
augroup filetypes
    autocmd!
    autocmd BufNewFile,BufRead *.txt setf text
    autocmd BufNewFile,BufRead *.t2t setf txt2tags
    autocmd BufNewFile,BufRead *.vimp,$HOME/.pentadactylrc setf vim
    autocmd BufNewFile,BufRead ~/.etc/bash/* setlocal filetype=sh
    autocmd BufNewFile,BufRead *.tt2,*.tt setf tt2
    autocmd BufNewFile,BufRead *.asm setf nasm
    autocmd BufRead *.pdf setlocal filetype=pdf
augroup END

" set options for file types
augroup filetype_options
    autocmd!
    autocmd FileType nasm setlocal cindent nospell relativenumber
    autocmd FileType sh setlocal cindent nospell relativenumber
    autocmd FileType php setlocal cindent nospell relativenumber
    autocmd FileType text setlocal spell spelllang=en_us nonumber textwidth=70 
    autocmd FileType python setlocal nospell complete+=k~/.vim/syntax/python.vim isk+=.,( relativenumber
    autocmd FileType vimwiki setlocal nonumber spell spelllang=en_us textwidth=70
    autocmd FileType otl setlocal spell spelllang=en_us textwidth=70 fo-=t
    autocmd FileType txt2tags setlocal nonumber spell spelllang=en_us textwidth=70 formatoptions+=a makeprg=txt2tags
    autocmd FileType help setlocal nospell
    autocmd FileType vim setlocal relativenumber
    autocmd FileType c setlocal relativenumber nospell cindent
    autocmd FileType tt2 setlocal relativenumber nospell cindent
    autocmd FileType pdf setlocal ro
augroup END

" actions for opening and creating particular files
augroup actions
    autocmd!
    autocmd BufRead,BufNewFile /tmp/mutt* source $HOME/.vim/myconfig/autocorrect.vim
    autocmd BufRead,BufNewFile *.txt source $HOME/.vim/myconfig/autocorrect.vim
    autocmd BufRead,BufNewFile *.otl source $HOME/.vim/myconfig/autocorrect.vim
    autocmd BufRead,BufNewFile *.wiki source $HOME/.vim/myconfig/autocorrect.vim
    autocmd BufRead,BufNewFile *.t2t source $HOME/.vim/myconfig/autocorrect.vim
    "autocmd BufRead /tmp/mutt* normal! :g/^> -- $/,/^$/-1d^M/^$^M^L
    autocmd BufRead /tmp/mutt* setlocal spell spelllang=en_us nonumber textwidth=65
    autocmd BufRead,BufNewFile /tmp/pentadactyl* setlocal textwidth=0
    autocmd BufRead,BufNewFile /tmp/pentadactyl* :start!
    autocmd BufRead,BufNewFile journal*.txt setlocal textwidth=70
    autocmd BufRead,BufNewFile annal*.txt setlocal textwidth=70
    autocmd BufRead,BufNewFile fw-*.txt setlocal textwidth=70
    autocmd BufRead *.pdf :!xdg-open %
augroup END

" Thursday, February 16 2012, 11:52 pm, PST
" Highlight date headers in journals
augroup highlights
    autocmd!
    autocmd BufRead,BufNewFile journal*.txt match Comment /[SMTWF][a-z]*,\s[JFMASOND][a-z]*\s[1-9][0-9]\?\s20\d\d,\s[1-9][0-2]\?:[0-5][0-9]\s[ap]m,\s\u\u\u/
    autocmd BufRead,BufNewFile annal*.txt match Comment /[SMTWF][a-z]*,\s[JFMASOND][a-z]*\s[1-9][0-9]\?\s20\d\d,\s[1-9][0-2]\?:[0-5][0-9]\s[ap]m,\s\u\u\u/

    " 12:04 AM 2/17/2012
    " Highlight date headers in Notepad .LOG files
    autocmd BufRead,BufNewFile notes.txt match Comment #[0-9][0-9]\?:[0-5][0-9]\s[AP]M\s[0-9][0-9]\?/[0-9][0-9]\?/20\d\d#
augroup END

" autosave when the editor loses focus
augroup misc
    autocmd!
    autocmd FocusLost * silent! wa
augroup END
