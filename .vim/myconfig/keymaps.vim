nnoremap <leader>v :vsplit $HOME/.gvimrc<CR>:e $MYVIMRC<CR><c-l>
nnoremap <leader>so :source $MYVIMRC<cr><c-l>


"Start a log entry. Define for notes.txt
augroup log
    autocmd!
    autocmd BufNewFile,BufRead notes.txt nnoremap <Leader>L Go!!date '+\%-l:\%M \%p \%-m/\%-d/\%Y'o<esc>zti
augroup END

"Start a meeting minutes entry. Define for mm*.txt
augroup minutes
    autocmd!
    autocmd BufNewFile,BufRead mm*.txt nnoremap <Leader>L Go!!date '+\%-l:\%M \%p'o<esc>zti
augroup END

"Edit email in Mutt
augroup mutt
    autocmd!
    "autocmd BufRead /tmp/mutt* nnoremap <Leader>m /--ki
augroup END

"Edit abbrevs file
augroup abbrevs
    autocmd!
    autocmd BufRead *.txt nnoremap <Leader>a yiw:tabnew $HOME/.vim/myconfig/abbreviations.vim<cr>Go:iabbrev <esc>pa 
augroup END

"Open help in a separate tab
nnoremap <f1> :help<cr>:only<cr><c-l>
inoremap <f1> <esc><f1>

"Setup <space> to scroll the screen
nnoremap <space> <c-f>
nnoremap <BS> <c-b>
" scroll by half-screens forward and backward
nnoremap <leader>d <c-d>

"Simplify copying and pasting from the system clipboard
nnoremap <leader>p "+p
nnoremap <leader>P "+P
nnoremap <leader>y "+y
vnoremap <leader>y "+y
nnoremap <leader>Y "+Y
vnoremap <leader>Y "+Y

"Simplify window navigation
nnoremap <leader>w <C-W>

"Toggle between the last two files
nnoremap <leader>6 <c-^>

"Transpose two words
nnoremap <leader>xp dawwP

"Reformat paragraphs
nnoremap <leader>q gwap
vnoremap <leader>q gw

"Get to a shell prompt
nnoremap <leader>z <c-z>

"buffer management
nnoremap <leader>b :buffers<cr>:b<Space>

"register management
nnoremap <leader>" :registers<cr>

"make j and k operate when tw is set to 0 and wrap is set
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk
onoremap j gj
onoremap k gk

"make word movements always use big WORDS
nnoremap w W
nnoremap b B
nnoremap e E
nnoremap ge gE
vnoremap w W
vnoremap b B
vnoremap e E
vnoremap ge gE
onoremap w W
onoremap b B
onoremap e E
onoremap ge gE

augroup journal
    autocmd!

    " start a new journal entry
    autocmd BufNewFile,BufRead journal*.txt nnoremap <Leader>e Go!!date '+\%A, \%B \%-e \%Y, \%-l:\%M \%P, \%Z'o<esc>zti

    "search for journal entries to enable navigation from entry to entry
    autocmd BufRead,BufNewFile journal*.txt nnoremap<buffer> <leader>/ /[SMTWF][a-z]*,\s[JFMASOND][a-z]*\s[1-9][0-9]\?\s20\d\d,\s[1-9][0-2]\?:[0-5][0-9]\s[ap]m,\s\u\u\u<cr>:nohl<cr><c-l>
    autocmd BufRead,BufNewFile annal*.txt nnoremap<buffer> <leader>/ /[SMTWF][a-z]*,\s[JFMASOND][a-z]*\s[1-9][0-9]\?\s20\d\d,\s[1-9][0-2]\?:[0-5][0-9]\s[ap]m,\s\u\u\u<cr>:nohl<cr><c-l>

    autocmd BufRead,BufNewFile notes.txt nnoremap<buffer> <leader>/ /[0-9][0-9]\?:[0-5][0-9]\s[AP]M\s[0-9][0-9]\?/[0-9][0-9]\?/20\d\d<cr>:nohl<cr><c-l>
augroup END

"search on-line dictionaries for word definitions
nnoremap ,W mayiw`a:exe "!dict -P - $(echo " . @" . "\| recode latin1..utf-8)"<CR>
vnoremap ,W may`a:exe "!dict -P - $(echo " . @" . "\| recode latin1..utf-8)"<CR>

" run utl
nnoremap <leader>u :Utl<cr>:sleep 1<cr><c-l>
vnoremap <leader>u :Utl<cr>:sleep 1<cr><c-l>

" toggle status line
nnoremap <f3> :call ToggleLaststatus()<cr>
vnoremap <f3> :call ToggleLaststatus()<cr>
inoremap <f3> :call ToggleLaststatus()<cr>

" toggle line numbering
nnoremap <f6> :set number!<cr><c-l>
nnoremap <f7> :set relativenumber!<cr><c-l>

" redo without chords
nnoremap <leader>r <c-r> 

" move cursor to where editing began after . command
nnoremap . .`[

" toggle highlighting of the word under the cursor with enter key
nnoremap <silent> <expr> <CR> Highlighting()

" toggle VimCommander
noremap <silent> <F11> :cal VimCommanderToggle()<CR>

" Most recent file list
nnoremap <F10> :Mru<CR>

" Open the file under the cursor
nnoremap <leader>o :silent !xdg-open <C-R>=escape("<C-R><C-F>", "#?&;\|%")<CR><CR><CR>

" match brackets with the tab key
nnoremap <tab> %
vnoremap <tab> %

" make regexes always use special characters
nnoremap / /\v
vnoremap / /\v

" get easier colon commands and preserve in-line search repeats
nnoremap ; :
vnoremap ; :
nnoremap <leader>; ;
vnoremap <leader>; ;

" remap H and L for horizontal movement
nnoremap H 0
nnoremap L $

" grep files in and under the current dir for word under cursor
" nnoremap <leader>g :silent execute "grep! -R " . shellescape("<cWORD>") . " ."<cr>:copen<cr>
