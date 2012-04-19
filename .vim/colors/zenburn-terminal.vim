" This scheme was created by CSApproxSnapshot
" on Sun, 27 Feb 2011

hi clear
if exists("syntax_on")
    syntax reset
endif

if v:version < 700
    let g:colors_name = expand("<sfile>:t:r")
    command! -nargs=+ CSAHi exe "hi" substitute(substitute(<q-args>, "undercurl", "underline", "g"), "guisp\\S\\+", "", "g")
else
    let g:colors_name = expand("<sfile>:t:r")
    command! -nargs=+ CSAHi exe "hi" <q-args>
endif

if 0
elseif has("gui_running") || (&t_Co == 256 && (&term ==# "xterm" || &term =~# "^screen") && exists("g:CSApprox_konsole") && g:CSApprox_konsole) || &term =~? "^konsole"
    CSAHi Normal term=NONE cterm=NONE ctermbg=234 ctermfg=188 gui=NONE guibg=#1f1f1f guifg=#dcdccc
    CSAHi Underlined term=underline cterm=underline ctermbg=bg ctermfg=188 gui=underline guibg=bg guifg=#dcdccc
    CSAHi Ignore term=NONE cterm=NONE ctermbg=bg ctermfg=234 gui=NONE guibg=bg guifg=#1f1f1f
    CSAHi Error term=reverse cterm=NONE ctermbg=95 ctermfg=174 gui=bold guibg=#664040 guifg=#e37170
    CSAHi Todo term=NONE cterm=NONE ctermbg=234 ctermfg=253 gui=bold guibg=#1f1f1f guifg=#dfdfdf
    CSAHi String term=NONE cterm=NONE ctermbg=bg ctermfg=181 gui=NONE guibg=bg guifg=#cc9393
    CSAHi Character term=NONE cterm=NONE ctermbg=bg ctermfg=181 gui=bold guibg=bg guifg=#dca3a3
    CSAHi Number term=NONE cterm=NONE ctermbg=bg ctermfg=152 gui=NONE guibg=bg guifg=#8cd0d3
    CSAHi Boolean term=NONE cterm=NONE ctermbg=bg ctermfg=181 gui=NONE guibg=bg guifg=#dca3a3
    CSAHi Float term=NONE cterm=NONE ctermbg=bg ctermfg=188 gui=NONE guibg=bg guifg=#c0bed1
    CSAHi Function term=NONE cterm=NONE ctermbg=bg ctermfg=229 gui=NONE guibg=bg guifg=#efef8f
    CSAHi Macro term=NONE cterm=NONE ctermbg=bg ctermfg=223 gui=bold guibg=bg guifg=#ffcfaf
    CSAHi PreCondit term=NONE cterm=NONE ctermbg=bg ctermfg=181 gui=bold guibg=bg guifg=#dfaf8f
    CSAHi SpecialKey term=bold cterm=NONE ctermbg=bg ctermfg=151 gui=NONE guibg=bg guifg=#9ece9e
    CSAHi NonText term=bold cterm=NONE ctermbg=bg ctermfg=238 gui=bold guibg=bg guifg=#404040
    CSAHi Directory term=bold cterm=NONE ctermbg=bg ctermfg=188 gui=bold guibg=bg guifg=#dcdccc
    CSAHi ErrorMsg term=NONE cterm=NONE ctermbg=236 ctermfg=151 gui=bold guibg=#2f2f2f guifg=#80d4aa
    CSAHi IncSearch term=reverse cterm=NONE ctermbg=65 ctermfg=229 gui=reverse guibg=#f8f893 guifg=#385f38
    CSAHi Search term=reverse cterm=NONE ctermbg=65 ctermfg=230 gui=NONE guibg=#284f28 guifg=#ffffe0
    CSAHi MoreMsg term=bold cterm=NONE ctermbg=bg ctermfg=231 gui=bold guibg=bg guifg=#ffffff
    CSAHi ModeMsg term=bold cterm=NONE ctermbg=bg ctermfg=223 gui=NONE guibg=bg guifg=#ffcfaf
    CSAHi LineNr term=underline cterm=NONE ctermbg=235 ctermfg=145 gui=NONE guibg=#262626 guifg=#9fafaf
    CSAHi Define term=NONE cterm=NONE ctermbg=bg ctermfg=223 gui=bold guibg=bg guifg=#ffcfaf
    CSAHi Pmenu term=NONE cterm=NONE ctermbg=235 ctermfg=188 gui=NONE guibg=#242424 guifg=#ccccbc
    CSAHi PmenuSel term=NONE cterm=NONE ctermbg=59 ctermfg=187 gui=bold guibg=#353a37 guifg=#ccdc90
    CSAHi PmenuSbar term=NONE cterm=NONE ctermbg=59 ctermfg=16 gui=NONE guibg=#2e3330 guifg=#000000
    CSAHi PmenuThumb term=NONE cterm=NONE ctermbg=16 ctermfg=145 gui=reverse guibg=#a0afa0 guifg=#040404
    CSAHi TabLine term=underline cterm=NONE ctermbg=234 ctermfg=187 gui=bold guibg=#181818 guifg=#b6bf98
    CSAHi TabLineSel term=bold cterm=NONE ctermbg=234 ctermfg=255 gui=bold guibg=#1c1c1b guifg=#efefef
    CSAHi TabLineFill term=reverse cterm=NONE ctermbg=234 ctermfg=187 gui=bold guibg=#181818 guifg=#cfcfaf
    CSAHi CursorColumn term=reverse cterm=NONE ctermbg=235 ctermfg=fg gui=NONE guibg=#2b2b2b guifg=fg
    CSAHi CursorLine term=underline cterm=NONE ctermbg=233 ctermfg=fg gui=bold guibg=#121212 guifg=fg
    CSAHi Cursor term=NONE cterm=NONE ctermbg=145 ctermfg=16 gui=bold guibg=#8faf9f guifg=#000d18
    CSAHi Debug term=NONE cterm=NONE ctermbg=bg ctermfg=181 gui=bold guibg=bg guifg=#bca3a3
    CSAHi Conditional term=NONE cterm=NONE ctermbg=bg ctermfg=223 gui=bold guibg=bg guifg=#f0dfaf
    CSAHi Repeat term=NONE cterm=NONE ctermbg=bg ctermfg=223 gui=bold guibg=bg guifg=#ffd7a7
    CSAHi Label term=NONE cterm=underline ctermbg=bg ctermfg=187 gui=underline guibg=bg guifg=#dfcfaf
    CSAHi Operator term=NONE cterm=NONE ctermbg=bg ctermfg=230 gui=NONE guibg=bg guifg=#f0efd0
    CSAHi Keyword term=NONE cterm=NONE ctermbg=bg ctermfg=223 gui=bold guibg=bg guifg=#f0dfaf
    CSAHi Exception term=NONE cterm=NONE ctermbg=bg ctermfg=187 gui=bold guibg=bg guifg=#c3bf9f
    CSAHi Include term=NONE cterm=NONE ctermbg=bg ctermfg=181 gui=bold guibg=bg guifg=#dfaf8f
    CSAHi Question term=NONE cterm=NONE ctermbg=bg ctermfg=231 gui=bold guibg=bg guifg=#ffffff
    CSAHi StatusLine term=reverse,bold cterm=NONE ctermbg=59 ctermfg=187 gui=reverse,bold guibg=#ccdc90 guifg=#313633
    CSAHi StatusLineNC term=reverse cterm=NONE ctermbg=59 ctermfg=145 gui=reverse guibg=#88b090 guifg=#2e3330
    CSAHi VertSplit term=reverse cterm=NONE ctermbg=59 ctermfg=108 gui=reverse guibg=#688060 guifg=#2e3330
    CSAHi Title term=bold cterm=NONE ctermbg=bg ctermfg=255 gui=bold guibg=bg guifg=#efefef
    CSAHi Visual term=reverse cterm=NONE ctermbg=116 ctermfg=16 gui=NONE guibg=#71d3b4 guifg=#000000
    CSAHi VisualNOS term=bold,underline cterm=NONE ctermbg=116 ctermfg=16 gui=NONE guibg=#71d3b4 guifg=#000000
    CSAHi WarningMsg term=NONE cterm=NONE ctermbg=59 ctermfg=231 gui=bold guibg=#333333 guifg=#ffffff
    CSAHi WildMenu term=NONE cterm=underline ctermbg=236 ctermfg=194 gui=underline guibg=#2c302d guifg=#cbecd0
    CSAHi Folded term=NONE cterm=NONE ctermbg=59 ctermfg=151 gui=NONE guibg=#3f4040 guifg=#93b3a3
    CSAHi lCursor term=NONE cterm=NONE ctermbg=188 ctermfg=234 gui=NONE guibg=#dcdccc guifg=#1f1f1f
    CSAHi MatchParen term=reverse cterm=NONE ctermbg=237 ctermfg=230 gui=bold guibg=#383838 guifg=#f0f0c0
    CSAHi Comment term=bold cterm=NONE ctermbg=bg ctermfg=108 gui=italic guibg=bg guifg=#7f9f7f
    CSAHi Constant term=underline cterm=NONE ctermbg=bg ctermfg=181 gui=bold guibg=bg guifg=#dca3a3
    CSAHi Special term=bold cterm=NONE ctermbg=bg ctermfg=187 gui=NONE guibg=bg guifg=#cfbfaf
    CSAHi Identifier term=underline cterm=NONE ctermbg=bg ctermfg=224 gui=NONE guibg=bg guifg=#efdcbc
    CSAHi Statement term=bold cterm=NONE ctermbg=bg ctermfg=187 gui=NONE guibg=bg guifg=#e3ceab
    CSAHi PreProc term=underline cterm=NONE ctermbg=bg ctermfg=223 gui=bold guibg=bg guifg=#ffcfaf
    CSAHi Type term=underline cterm=NONE ctermbg=bg ctermfg=188 gui=bold guibg=bg guifg=#dfdfbf
    CSAHi StorageClass term=NONE cterm=NONE ctermbg=bg ctermfg=187 gui=bold guibg=bg guifg=#c3bf9f
    CSAHi Structure term=NONE cterm=NONE ctermbg=bg ctermfg=229 gui=bold guibg=bg guifg=#efefaf
    CSAHi Typedef term=NONE cterm=NONE ctermbg=bg ctermfg=188 gui=bold guibg=bg guifg=#dfe4cf
    CSAHi Tag term=NONE cterm=NONE ctermbg=bg ctermfg=217 gui=bold guibg=bg guifg=#e89393
    CSAHi SpecialChar term=NONE cterm=NONE ctermbg=bg ctermfg=181 gui=bold guibg=bg guifg=#dca3a3
    CSAHi Delimiter term=NONE cterm=NONE ctermbg=bg ctermfg=245 gui=NONE guibg=bg guifg=#8f8f8f
    CSAHi SpecialComment term=NONE cterm=NONE ctermbg=bg ctermfg=145 gui=bold guibg=bg guifg=#82a282
    CSAHi FoldColumn term=NONE cterm=NONE ctermbg=59 ctermfg=151 gui=NONE guibg=#3f4040 guifg=#93b3a3
    CSAHi DiffAdd term=bold cterm=NONE ctermbg=59 ctermfg=109 gui=bold guibg=#313c36 guifg=#709080
    CSAHi DiffChange term=bold cterm=NONE ctermbg=59 ctermfg=fg gui=NONE guibg=#333333 guifg=fg
    CSAHi DiffDelete term=bold cterm=NONE ctermbg=238 ctermfg=59 gui=bold guibg=#464646 guifg=#333333
    CSAHi DiffText term=reverse cterm=NONE ctermbg=59 ctermfg=224 gui=bold guibg=#41363c guifg=#ecbcbc
    CSAHi SignColumn term=NONE cterm=NONE ctermbg=234 ctermfg=145 gui=bold guibg=#181818 guifg=#9fafaf
    CSAHi SpellBad term=reverse cterm=undercurl ctermbg=bg ctermfg=180 gui=undercurl guibg=bg guifg=#dc8c6c guisp=#bc6c4c
    CSAHi SpellCap term=reverse cterm=undercurl ctermbg=bg ctermfg=146 gui=undercurl guibg=bg guifg=#8c8cbc guisp=#6c6c9c
    CSAHi SpellRare term=reverse cterm=undercurl ctermbg=bg ctermfg=182 gui=undercurl guibg=bg guifg=#bc8cbc guisp=#bc6c9c
    CSAHi SpellLocal term=underline cterm=undercurl ctermbg=bg ctermfg=151 gui=undercurl guibg=bg guifg=#9ccc9c guisp=#7cac7c
elseif has("gui_running") || (&t_Co == 256 && (&term ==# "xterm" || &term =~# "^screen") && exists("g:CSApprox_eterm") && g:CSApprox_eterm) || &term =~? "^eterm"
    CSAHi Normal term=NONE cterm=NONE ctermbg=234 ctermfg=231 gui=NONE guibg=#1f1f1f guifg=#dcdccc
    CSAHi Underlined term=underline cterm=underline ctermbg=bg ctermfg=231 gui=underline guibg=bg guifg=#dcdccc
    CSAHi Ignore term=NONE cterm=NONE ctermbg=bg ctermfg=234 gui=NONE guibg=bg guifg=#1f1f1f
    CSAHi Error term=reverse cterm=NONE ctermbg=102 ctermfg=217 gui=bold guibg=#664040 guifg=#e37170
    CSAHi Todo term=NONE cterm=NONE ctermbg=234 ctermfg=253 gui=bold guibg=#1f1f1f guifg=#dfdfdf
    CSAHi String term=NONE cterm=NONE ctermbg=bg ctermfg=217 gui=NONE guibg=bg guifg=#cc9393
    CSAHi Character term=NONE cterm=NONE ctermbg=bg ctermfg=224 gui=bold guibg=bg guifg=#dca3a3
    CSAHi Number term=NONE cterm=NONE ctermbg=bg ctermfg=159 gui=NONE guibg=bg guifg=#8cd0d3
    CSAHi Boolean term=NONE cterm=NONE ctermbg=bg ctermfg=224 gui=NONE guibg=bg guifg=#dca3a3
    CSAHi Float term=NONE cterm=NONE ctermbg=bg ctermfg=225 gui=NONE guibg=bg guifg=#c0bed1
    CSAHi Function term=NONE cterm=NONE ctermbg=bg ctermfg=229 gui=NONE guibg=bg guifg=#efef8f
    CSAHi Macro term=NONE cterm=NONE ctermbg=bg ctermfg=230 gui=bold guibg=bg guifg=#ffcfaf
    CSAHi PreCondit term=NONE cterm=NONE ctermbg=bg ctermfg=223 gui=bold guibg=bg guifg=#dfaf8f
    CSAHi SpecialKey term=bold cterm=NONE ctermbg=bg ctermfg=194 gui=NONE guibg=bg guifg=#9ece9e
    CSAHi NonText term=bold cterm=NONE ctermbg=bg ctermfg=238 gui=bold guibg=bg guifg=#404040
    CSAHi Directory term=bold cterm=NONE ctermbg=bg ctermfg=231 gui=bold guibg=bg guifg=#dcdccc
    CSAHi ErrorMsg term=NONE cterm=NONE ctermbg=236 ctermfg=158 gui=bold guibg=#2f2f2f guifg=#80d4aa
    CSAHi IncSearch term=reverse cterm=NONE ctermbg=65 ctermfg=229 gui=reverse guibg=#f8f893 guifg=#385f38
    CSAHi Search term=reverse cterm=NONE ctermbg=65 ctermfg=231 gui=NONE guibg=#284f28 guifg=#ffffe0
    CSAHi MoreMsg term=bold cterm=NONE ctermbg=bg ctermfg=255 gui=bold guibg=bg guifg=#ffffff
    CSAHi ModeMsg term=bold cterm=NONE ctermbg=bg ctermfg=230 gui=NONE guibg=bg guifg=#ffcfaf
    CSAHi LineNr term=underline cterm=NONE ctermbg=235 ctermfg=188 gui=NONE guibg=#262626 guifg=#9fafaf
    CSAHi Define term=NONE cterm=NONE ctermbg=bg ctermfg=230 gui=bold guibg=bg guifg=#ffcfaf
    CSAHi Pmenu term=NONE cterm=NONE ctermbg=235 ctermfg=230 gui=NONE guibg=#242424 guifg=#ccccbc
    CSAHi PmenuSel term=NONE cterm=NONE ctermbg=59 ctermfg=229 gui=bold guibg=#353a37 guifg=#ccdc90
    CSAHi PmenuSbar term=NONE cterm=NONE ctermbg=236 ctermfg=16 gui=NONE guibg=#2e3330 guifg=#000000
    CSAHi PmenuThumb term=NONE cterm=NONE ctermbg=16 ctermfg=188 gui=reverse guibg=#a0afa0 guifg=#040404
    CSAHi TabLine term=underline cterm=NONE ctermbg=234 ctermfg=188 gui=bold guibg=#181818 guifg=#b6bf98
    CSAHi TabLineSel term=bold cterm=NONE ctermbg=234 ctermfg=255 gui=bold guibg=#1c1c1b guifg=#efefef
    CSAHi TabLineFill term=reverse cterm=NONE ctermbg=234 ctermfg=230 gui=bold guibg=#181818 guifg=#cfcfaf
    CSAHi CursorColumn term=reverse cterm=NONE ctermbg=59 ctermfg=fg gui=NONE guibg=#2b2b2b guifg=fg
    CSAHi CursorLine term=underline cterm=NONE ctermbg=233 ctermfg=fg gui=bold guibg=#121212 guifg=fg
    CSAHi Cursor term=NONE cterm=NONE ctermbg=152 ctermfg=17 gui=bold guibg=#8faf9f guifg=#000d18
    CSAHi Debug term=NONE cterm=NONE ctermbg=bg ctermfg=188 gui=bold guibg=bg guifg=#bca3a3
    CSAHi Conditional term=NONE cterm=NONE ctermbg=bg ctermfg=230 gui=bold guibg=bg guifg=#f0dfaf
    CSAHi Repeat term=NONE cterm=NONE ctermbg=bg ctermfg=230 gui=bold guibg=bg guifg=#ffd7a7
    CSAHi Label term=NONE cterm=underline ctermbg=bg ctermfg=230 gui=underline guibg=bg guifg=#dfcfaf
    CSAHi Operator term=NONE cterm=NONE ctermbg=bg ctermfg=231 gui=NONE guibg=bg guifg=#f0efd0
    CSAHi Keyword term=NONE cterm=NONE ctermbg=bg ctermfg=230 gui=bold guibg=bg guifg=#f0dfaf
    CSAHi Exception term=NONE cterm=NONE ctermbg=bg ctermfg=224 gui=bold guibg=bg guifg=#c3bf9f
    CSAHi Include term=NONE cterm=NONE ctermbg=bg ctermfg=223 gui=bold guibg=bg guifg=#dfaf8f
    CSAHi Question term=NONE cterm=NONE ctermbg=bg ctermfg=255 gui=bold guibg=bg guifg=#ffffff
    CSAHi StatusLine term=reverse,bold cterm=NONE ctermbg=59 ctermfg=229 gui=reverse,bold guibg=#ccdc90 guifg=#313633
    CSAHi StatusLineNC term=reverse cterm=NONE ctermbg=236 ctermfg=151 gui=reverse guibg=#88b090 guifg=#2e3330
    CSAHi VertSplit term=reverse cterm=NONE ctermbg=236 ctermfg=108 gui=reverse guibg=#688060 guifg=#2e3330
    CSAHi Title term=bold cterm=NONE ctermbg=bg ctermfg=255 gui=bold guibg=bg guifg=#efefef
    CSAHi Visual term=reverse cterm=NONE ctermbg=158 ctermfg=16 gui=NONE guibg=#71d3b4 guifg=#000000
    CSAHi VisualNOS term=bold,underline cterm=NONE ctermbg=158 ctermfg=16 gui=NONE guibg=#71d3b4 guifg=#000000
    CSAHi WarningMsg term=NONE cterm=NONE ctermbg=236 ctermfg=255 gui=bold guibg=#333333 guifg=#ffffff
    CSAHi WildMenu term=NONE cterm=underline ctermbg=59 ctermfg=231 gui=underline guibg=#2c302d guifg=#cbecd0
    CSAHi Folded term=NONE cterm=NONE ctermbg=66 ctermfg=152 gui=NONE guibg=#3f4040 guifg=#93b3a3
    CSAHi lCursor term=NONE cterm=NONE ctermbg=231 ctermfg=234 gui=NONE guibg=#dcdccc guifg=#1f1f1f
    CSAHi MatchParen term=reverse cterm=NONE ctermbg=237 ctermfg=231 gui=bold guibg=#383838 guifg=#f0f0c0
    CSAHi Comment term=bold cterm=NONE ctermbg=bg ctermfg=151 gui=italic guibg=bg guifg=#7f9f7f
    CSAHi Constant term=underline cterm=NONE ctermbg=bg ctermfg=224 gui=bold guibg=bg guifg=#dca3a3
    CSAHi Special term=bold cterm=NONE ctermbg=bg ctermfg=224 gui=NONE guibg=bg guifg=#cfbfaf
    CSAHi Identifier term=underline cterm=NONE ctermbg=bg ctermfg=230 gui=NONE guibg=bg guifg=#efdcbc
    CSAHi Statement term=bold cterm=NONE ctermbg=bg ctermfg=230 gui=NONE guibg=bg guifg=#e3ceab
    CSAHi PreProc term=underline cterm=NONE ctermbg=bg ctermfg=230 gui=bold guibg=bg guifg=#ffcfaf
    CSAHi Type term=underline cterm=NONE ctermbg=bg ctermfg=230 gui=bold guibg=bg guifg=#dfdfbf
    CSAHi StorageClass term=NONE cterm=NONE ctermbg=bg ctermfg=224 gui=bold guibg=bg guifg=#c3bf9f
    CSAHi Structure term=NONE cterm=NONE ctermbg=bg ctermfg=230 gui=bold guibg=bg guifg=#efefaf
    CSAHi Typedef term=NONE cterm=NONE ctermbg=bg ctermfg=231 gui=bold guibg=bg guifg=#dfe4cf
    CSAHi Tag term=NONE cterm=NONE ctermbg=bg ctermfg=217 gui=bold guibg=bg guifg=#e89393
    CSAHi SpecialChar term=NONE cterm=NONE ctermbg=bg ctermfg=224 gui=bold guibg=bg guifg=#dca3a3
    CSAHi Delimiter term=NONE cterm=NONE ctermbg=bg ctermfg=245 gui=NONE guibg=bg guifg=#8f8f8f
    CSAHi SpecialComment term=NONE cterm=NONE ctermbg=bg ctermfg=151 gui=bold guibg=bg guifg=#82a282
    CSAHi FoldColumn term=NONE cterm=NONE ctermbg=66 ctermfg=152 gui=NONE guibg=#3f4040 guifg=#93b3a3
    CSAHi DiffAdd term=bold cterm=NONE ctermbg=59 ctermfg=145 gui=bold guibg=#313c36 guifg=#709080
    CSAHi DiffChange term=bold cterm=NONE ctermbg=236 ctermfg=fg gui=NONE guibg=#333333 guifg=fg
    CSAHi DiffDelete term=bold cterm=NONE ctermbg=238 ctermfg=236 gui=bold guibg=#464646 guifg=#333333
    CSAHi DiffText term=reverse cterm=NONE ctermbg=95 ctermfg=224 gui=bold guibg=#41363c guifg=#ecbcbc
    CSAHi SignColumn term=NONE cterm=NONE ctermbg=234 ctermfg=188 gui=bold guibg=#181818 guifg=#9fafaf
    CSAHi SpellBad term=reverse cterm=undercurl ctermbg=bg ctermfg=217 gui=undercurl guibg=bg guifg=#dc8c6c guisp=#bc6c4c
    CSAHi SpellCap term=reverse cterm=undercurl ctermbg=bg ctermfg=146 gui=undercurl guibg=bg guifg=#8c8cbc guisp=#6c6c9c
    CSAHi SpellRare term=reverse cterm=undercurl ctermbg=bg ctermfg=182 gui=undercurl guibg=bg guifg=#bc8cbc guisp=#bc6c9c
    CSAHi SpellLocal term=underline cterm=undercurl ctermbg=bg ctermfg=194 gui=undercurl guibg=bg guifg=#9ccc9c guisp=#7cac7c
elseif has("gui_running") || &t_Co == 256
    CSAHi Normal term=NONE cterm=NONE ctermbg=234 ctermfg=188 gui=NONE guibg=#1f1f1f guifg=#dcdccc
    CSAHi Underlined term=underline cterm=underline ctermbg=bg ctermfg=188 gui=underline guibg=bg guifg=#dcdccc
    CSAHi Ignore term=NONE cterm=NONE ctermbg=bg ctermfg=234 gui=NONE guibg=bg guifg=#1f1f1f
    CSAHi Error term=reverse cterm=NONE ctermbg=59 ctermfg=167 gui=bold guibg=#664040 guifg=#e37170
    CSAHi Todo term=NONE cterm=NONE ctermbg=234 ctermfg=253 gui=bold guibg=#1f1f1f guifg=#dfdfdf
    CSAHi String term=NONE cterm=NONE ctermbg=bg ctermfg=174 gui=NONE guibg=bg guifg=#cc9393
    CSAHi Character term=NONE cterm=NONE ctermbg=bg ctermfg=181 gui=bold guibg=bg guifg=#dca3a3
    CSAHi Number term=NONE cterm=NONE ctermbg=bg ctermfg=116 gui=NONE guibg=bg guifg=#8cd0d3
    CSAHi Boolean term=NONE cterm=NONE ctermbg=bg ctermfg=181 gui=NONE guibg=bg guifg=#dca3a3
    CSAHi Float term=NONE cterm=NONE ctermbg=bg ctermfg=146 gui=NONE guibg=bg guifg=#c0bed1
    CSAHi Function term=NONE cterm=NONE ctermbg=bg ctermfg=228 gui=NONE guibg=bg guifg=#efef8f
    CSAHi Macro term=NONE cterm=NONE ctermbg=bg ctermfg=223 gui=bold guibg=bg guifg=#ffcfaf
    CSAHi PreCondit term=NONE cterm=NONE ctermbg=bg ctermfg=180 gui=bold guibg=bg guifg=#dfaf8f
    CSAHi SpecialKey term=bold cterm=NONE ctermbg=bg ctermfg=151 gui=NONE guibg=bg guifg=#9ece9e
    CSAHi NonText term=bold cterm=NONE ctermbg=bg ctermfg=238 gui=bold guibg=bg guifg=#404040
    CSAHi Directory term=bold cterm=NONE ctermbg=bg ctermfg=188 gui=bold guibg=bg guifg=#dcdccc
    CSAHi ErrorMsg term=NONE cterm=NONE ctermbg=236 ctermfg=115 gui=bold guibg=#2f2f2f guifg=#80d4aa
    CSAHi IncSearch term=reverse cterm=NONE ctermbg=59 ctermfg=228 gui=reverse guibg=#f8f893 guifg=#385f38
    CSAHi Search term=reverse cterm=NONE ctermbg=22 ctermfg=230 gui=NONE guibg=#284f28 guifg=#ffffe0
    CSAHi MoreMsg term=bold cterm=NONE ctermbg=bg ctermfg=231 gui=bold guibg=bg guifg=#ffffff
    CSAHi ModeMsg term=bold cterm=NONE ctermbg=bg ctermfg=223 gui=NONE guibg=bg guifg=#ffcfaf
    CSAHi LineNr term=underline cterm=NONE ctermbg=235 ctermfg=145 gui=NONE guibg=#262626 guifg=#9fafaf
    CSAHi Define term=NONE cterm=NONE ctermbg=bg ctermfg=223 gui=bold guibg=bg guifg=#ffcfaf
    CSAHi Pmenu term=NONE cterm=NONE ctermbg=235 ctermfg=187 gui=NONE guibg=#242424 guifg=#ccccbc
    CSAHi PmenuSel term=NONE cterm=NONE ctermbg=59 ctermfg=186 gui=bold guibg=#353a37 guifg=#ccdc90
    CSAHi PmenuSbar term=NONE cterm=NONE ctermbg=236 ctermfg=16 gui=NONE guibg=#2e3330 guifg=#000000
    CSAHi PmenuThumb term=NONE cterm=NONE ctermbg=16 ctermfg=145 gui=reverse guibg=#a0afa0 guifg=#040404
    CSAHi TabLine term=underline cterm=NONE ctermbg=234 ctermfg=144 gui=bold guibg=#181818 guifg=#b6bf98
    CSAHi TabLineSel term=bold cterm=NONE ctermbg=234 ctermfg=255 gui=bold guibg=#1c1c1b guifg=#efefef
    CSAHi TabLineFill term=reverse cterm=NONE ctermbg=234 ctermfg=187 gui=bold guibg=#181818 guifg=#cfcfaf
    CSAHi CursorColumn term=reverse cterm=NONE ctermbg=235 ctermfg=fg gui=NONE guibg=#2b2b2b guifg=fg
    CSAHi CursorLine term=underline cterm=NONE ctermbg=233 ctermfg=fg gui=bold guibg=#121212 guifg=fg
    CSAHi Cursor term=NONE cterm=NONE ctermbg=109 ctermfg=16 gui=bold guibg=#8faf9f guifg=#000d18
    CSAHi Debug term=NONE cterm=NONE ctermbg=bg ctermfg=145 gui=bold guibg=bg guifg=#bca3a3
    CSAHi Conditional term=NONE cterm=NONE ctermbg=bg ctermfg=223 gui=bold guibg=bg guifg=#f0dfaf
    CSAHi Repeat term=NONE cterm=NONE ctermbg=bg ctermfg=223 gui=bold guibg=bg guifg=#ffd7a7
    CSAHi Label term=NONE cterm=underline ctermbg=bg ctermfg=187 gui=underline guibg=bg guifg=#dfcfaf
    CSAHi Operator term=NONE cterm=NONE ctermbg=bg ctermfg=230 gui=NONE guibg=bg guifg=#f0efd0
    CSAHi Keyword term=NONE cterm=NONE ctermbg=bg ctermfg=223 gui=bold guibg=bg guifg=#f0dfaf
    CSAHi Exception term=NONE cterm=NONE ctermbg=bg ctermfg=145 gui=bold guibg=bg guifg=#c3bf9f
    CSAHi Include term=NONE cterm=NONE ctermbg=bg ctermfg=180 gui=bold guibg=bg guifg=#dfaf8f
    CSAHi Question term=NONE cterm=NONE ctermbg=bg ctermfg=231 gui=bold guibg=bg guifg=#ffffff
    CSAHi StatusLine term=reverse,bold cterm=NONE ctermbg=59 ctermfg=186 gui=reverse,bold guibg=#ccdc90 guifg=#313633
    CSAHi StatusLineNC term=reverse cterm=NONE ctermbg=236 ctermfg=108 gui=reverse guibg=#88b090 guifg=#2e3330
    CSAHi VertSplit term=reverse cterm=NONE ctermbg=236 ctermfg=65 gui=reverse guibg=#688060 guifg=#2e3330
    CSAHi Title term=bold cterm=NONE ctermbg=bg ctermfg=255 gui=bold guibg=bg guifg=#efefef
    CSAHi Visual term=reverse cterm=NONE ctermbg=79 ctermfg=16 gui=NONE guibg=#71d3b4 guifg=#000000
    CSAHi VisualNOS term=bold,underline cterm=NONE ctermbg=79 ctermfg=16 gui=NONE guibg=#71d3b4 guifg=#000000
    CSAHi WarningMsg term=NONE cterm=NONE ctermbg=236 ctermfg=231 gui=bold guibg=#333333 guifg=#ffffff
    CSAHi WildMenu term=NONE cterm=underline ctermbg=236 ctermfg=194 gui=underline guibg=#2c302d guifg=#cbecd0
    CSAHi Folded term=NONE cterm=NONE ctermbg=59 ctermfg=109 gui=NONE guibg=#3f4040 guifg=#93b3a3
    CSAHi lCursor term=NONE cterm=NONE ctermbg=188 ctermfg=234 gui=NONE guibg=#dcdccc guifg=#1f1f1f
    CSAHi MatchParen term=reverse cterm=NONE ctermbg=237 ctermfg=229 gui=bold guibg=#383838 guifg=#f0f0c0
    CSAHi Comment term=bold cterm=NONE ctermbg=bg ctermfg=108 gui=italic guibg=bg guifg=#7f9f7f
    CSAHi Constant term=underline cterm=NONE ctermbg=bg ctermfg=181 gui=bold guibg=bg guifg=#dca3a3
    CSAHi Special term=bold cterm=NONE ctermbg=bg ctermfg=181 gui=NONE guibg=bg guifg=#cfbfaf
    CSAHi Identifier term=underline cterm=NONE ctermbg=bg ctermfg=223 gui=NONE guibg=bg guifg=#efdcbc
    CSAHi Statement term=bold cterm=NONE ctermbg=bg ctermfg=187 gui=NONE guibg=bg guifg=#e3ceab
    CSAHi PreProc term=underline cterm=NONE ctermbg=bg ctermfg=223 gui=bold guibg=bg guifg=#ffcfaf
    CSAHi Type term=underline cterm=NONE ctermbg=bg ctermfg=187 gui=bold guibg=bg guifg=#dfdfbf
    CSAHi StorageClass term=NONE cterm=NONE ctermbg=bg ctermfg=145 gui=bold guibg=bg guifg=#c3bf9f
    CSAHi Structure term=NONE cterm=NONE ctermbg=bg ctermfg=229 gui=bold guibg=bg guifg=#efefaf
    CSAHi Typedef term=NONE cterm=NONE ctermbg=bg ctermfg=188 gui=bold guibg=bg guifg=#dfe4cf
    CSAHi Tag term=NONE cterm=NONE ctermbg=bg ctermfg=174 gui=bold guibg=bg guifg=#e89393
    CSAHi SpecialChar term=NONE cterm=NONE ctermbg=bg ctermfg=181 gui=bold guibg=bg guifg=#dca3a3
    CSAHi Delimiter term=NONE cterm=NONE ctermbg=bg ctermfg=245 gui=NONE guibg=bg guifg=#8f8f8f
    CSAHi SpecialComment term=NONE cterm=NONE ctermbg=bg ctermfg=108 gui=bold guibg=bg guifg=#82a282
    CSAHi FoldColumn term=NONE cterm=NONE ctermbg=59 ctermfg=109 gui=NONE guibg=#3f4040 guifg=#93b3a3
    CSAHi DiffAdd term=bold cterm=NONE ctermbg=59 ctermfg=66 gui=bold guibg=#313c36 guifg=#709080
    CSAHi DiffChange term=bold cterm=NONE ctermbg=236 ctermfg=fg gui=NONE guibg=#333333 guifg=fg
    CSAHi DiffDelete term=bold cterm=NONE ctermbg=238 ctermfg=236 gui=bold guibg=#464646 guifg=#333333
    CSAHi DiffText term=reverse cterm=NONE ctermbg=59 ctermfg=217 gui=bold guibg=#41363c guifg=#ecbcbc
    CSAHi SignColumn term=NONE cterm=NONE ctermbg=234 ctermfg=145 gui=bold guibg=#181818 guifg=#9fafaf
    CSAHi SpellBad term=reverse cterm=undercurl ctermbg=bg ctermfg=173 gui=undercurl guibg=bg guifg=#dc8c6c guisp=#bc6c4c
    CSAHi SpellCap term=reverse cterm=undercurl ctermbg=bg ctermfg=103 gui=undercurl guibg=bg guifg=#8c8cbc guisp=#6c6c9c
    CSAHi SpellRare term=reverse cterm=undercurl ctermbg=bg ctermfg=139 gui=undercurl guibg=bg guifg=#bc8cbc guisp=#bc6c9c
    CSAHi SpellLocal term=underline cterm=undercurl ctermbg=bg ctermfg=151 gui=undercurl guibg=bg guifg=#9ccc9c guisp=#7cac7c
elseif has("gui_running") || &t_Co == 88
    CSAHi Normal term=NONE cterm=NONE ctermbg=80 ctermfg=58 gui=NONE guibg=#1f1f1f guifg=#dcdccc
    CSAHi Underlined term=underline cterm=underline ctermbg=bg ctermfg=58 gui=underline guibg=bg guifg=#dcdccc
    CSAHi Ignore term=NONE cterm=NONE ctermbg=bg ctermfg=80 gui=NONE guibg=bg guifg=#1f1f1f
    CSAHi Error term=reverse cterm=NONE ctermbg=32 ctermfg=53 gui=bold guibg=#664040 guifg=#e37170
    CSAHi Todo term=NONE cterm=NONE ctermbg=80 ctermfg=87 gui=bold guibg=#1f1f1f guifg=#dfdfdf
    CSAHi String term=NONE cterm=NONE ctermbg=bg ctermfg=53 gui=NONE guibg=bg guifg=#cc9393
    CSAHi Character term=NONE cterm=NONE ctermbg=bg ctermfg=53 gui=bold guibg=bg guifg=#dca3a3
    CSAHi Number term=NONE cterm=NONE ctermbg=bg ctermfg=42 gui=NONE guibg=bg guifg=#8cd0d3
    CSAHi Boolean term=NONE cterm=NONE ctermbg=bg ctermfg=53 gui=NONE guibg=bg guifg=#dca3a3
    CSAHi Float term=NONE cterm=NONE ctermbg=bg ctermfg=58 gui=NONE guibg=bg guifg=#c0bed1
    CSAHi Function term=NONE cterm=NONE ctermbg=bg ctermfg=77 gui=NONE guibg=bg guifg=#efef8f
    CSAHi Macro term=NONE cterm=NONE ctermbg=bg ctermfg=74 gui=bold guibg=bg guifg=#ffcfaf
    CSAHi PreCondit term=NONE cterm=NONE ctermbg=bg ctermfg=57 gui=bold guibg=bg guifg=#dfaf8f
    CSAHi SpecialKey term=bold cterm=NONE ctermbg=bg ctermfg=41 gui=NONE guibg=bg guifg=#9ece9e
    CSAHi NonText term=bold cterm=NONE ctermbg=bg ctermfg=80 gui=bold guibg=bg guifg=#404040
    CSAHi Directory term=bold cterm=NONE ctermbg=bg ctermfg=58 gui=bold guibg=bg guifg=#dcdccc
    CSAHi ErrorMsg term=NONE cterm=NONE ctermbg=80 ctermfg=41 gui=bold guibg=#2f2f2f guifg=#80d4aa
    CSAHi IncSearch term=reverse cterm=NONE ctermbg=20 ctermfg=77 gui=reverse guibg=#f8f893 guifg=#385f38
    CSAHi Search term=reverse cterm=NONE ctermbg=20 ctermfg=78 gui=NONE guibg=#284f28 guifg=#ffffe0
    CSAHi MoreMsg term=bold cterm=NONE ctermbg=bg ctermfg=79 gui=bold guibg=bg guifg=#ffffff
    CSAHi ModeMsg term=bold cterm=NONE ctermbg=bg ctermfg=74 gui=NONE guibg=bg guifg=#ffcfaf
    CSAHi LineNr term=underline cterm=NONE ctermbg=80 ctermfg=42 gui=NONE guibg=#262626 guifg=#9fafaf
    CSAHi Define term=NONE cterm=NONE ctermbg=bg ctermfg=74 gui=bold guibg=bg guifg=#ffcfaf
    CSAHi Pmenu term=NONE cterm=NONE ctermbg=80 ctermfg=58 gui=NONE guibg=#242424 guifg=#ccccbc
    CSAHi PmenuSel term=NONE cterm=NONE ctermbg=80 ctermfg=57 gui=bold guibg=#353a37 guifg=#ccdc90
    CSAHi PmenuSbar term=NONE cterm=NONE ctermbg=80 ctermfg=16 gui=NONE guibg=#2e3330 guifg=#000000
    CSAHi PmenuThumb term=NONE cterm=NONE ctermbg=16 ctermfg=41 gui=reverse guibg=#a0afa0 guifg=#040404
    CSAHi TabLine term=underline cterm=NONE ctermbg=80 ctermfg=57 gui=bold guibg=#181818 guifg=#b6bf98
    CSAHi TabLineSel term=bold cterm=NONE ctermbg=80 ctermfg=87 gui=bold guibg=#1c1c1b guifg=#efefef
    CSAHi TabLineFill term=reverse cterm=NONE ctermbg=80 ctermfg=58 gui=bold guibg=#181818 guifg=#cfcfaf
    CSAHi CursorColumn term=reverse cterm=NONE ctermbg=80 ctermfg=fg gui=NONE guibg=#2b2b2b guifg=fg
    CSAHi CursorLine term=underline cterm=NONE ctermbg=16 ctermfg=fg gui=bold guibg=#121212 guifg=fg
    CSAHi Cursor term=NONE cterm=NONE ctermbg=41 ctermfg=16 gui=bold guibg=#8faf9f guifg=#000d18
    CSAHi Debug term=NONE cterm=NONE ctermbg=bg ctermfg=53 gui=bold guibg=bg guifg=#bca3a3
    CSAHi Conditional term=NONE cterm=NONE ctermbg=bg ctermfg=74 gui=bold guibg=bg guifg=#f0dfaf
    CSAHi Repeat term=NONE cterm=NONE ctermbg=bg ctermfg=73 gui=bold guibg=bg guifg=#ffd7a7
    CSAHi Label term=NONE cterm=underline ctermbg=bg ctermfg=58 gui=underline guibg=bg guifg=#dfcfaf
    CSAHi Operator term=NONE cterm=NONE ctermbg=bg ctermfg=78 gui=NONE guibg=bg guifg=#f0efd0
    CSAHi Keyword term=NONE cterm=NONE ctermbg=bg ctermfg=74 gui=bold guibg=bg guifg=#f0dfaf
    CSAHi Exception term=NONE cterm=NONE ctermbg=bg ctermfg=57 gui=bold guibg=bg guifg=#c3bf9f
    CSAHi Include term=NONE cterm=NONE ctermbg=bg ctermfg=57 gui=bold guibg=bg guifg=#dfaf8f
    CSAHi Question term=NONE cterm=NONE ctermbg=bg ctermfg=79 gui=bold guibg=bg guifg=#ffffff
    CSAHi StatusLine term=reverse,bold cterm=NONE ctermbg=80 ctermfg=57 gui=reverse,bold guibg=#ccdc90 guifg=#313633
    CSAHi StatusLineNC term=reverse cterm=NONE ctermbg=80 ctermfg=41 gui=reverse guibg=#88b090 guifg=#2e3330
    CSAHi VertSplit term=reverse cterm=NONE ctermbg=80 ctermfg=37 gui=reverse guibg=#688060 guifg=#2e3330
    CSAHi Title term=bold cterm=NONE ctermbg=bg ctermfg=87 gui=bold guibg=bg guifg=#efefef
    CSAHi Visual term=reverse cterm=NONE ctermbg=42 ctermfg=16 gui=NONE guibg=#71d3b4 guifg=#000000
    CSAHi VisualNOS term=bold,underline cterm=NONE ctermbg=42 ctermfg=16 gui=NONE guibg=#71d3b4 guifg=#000000
    CSAHi WarningMsg term=NONE cterm=NONE ctermbg=80 ctermfg=79 gui=bold guibg=#333333 guifg=#ffffff
    CSAHi WildMenu term=NONE cterm=underline ctermbg=80 ctermfg=62 gui=underline guibg=#2c302d guifg=#cbecd0
    CSAHi Folded term=NONE cterm=NONE ctermbg=80 ctermfg=41 gui=NONE guibg=#3f4040 guifg=#93b3a3
    CSAHi lCursor term=NONE cterm=NONE ctermbg=58 ctermfg=80 gui=NONE guibg=#dcdccc guifg=#1f1f1f
    CSAHi MatchParen term=reverse cterm=NONE ctermbg=80 ctermfg=78 gui=bold guibg=#383838 guifg=#f0f0c0
    CSAHi Comment term=bold cterm=NONE ctermbg=bg ctermfg=37 gui=italic guibg=bg guifg=#7f9f7f
    CSAHi Constant term=underline cterm=NONE ctermbg=bg ctermfg=53 gui=bold guibg=bg guifg=#dca3a3
    CSAHi Special term=bold cterm=NONE ctermbg=bg ctermfg=58 gui=NONE guibg=bg guifg=#cfbfaf
    CSAHi Identifier term=underline cterm=NONE ctermbg=bg ctermfg=74 gui=NONE guibg=bg guifg=#efdcbc
    CSAHi Statement term=bold cterm=NONE ctermbg=bg ctermfg=57 gui=NONE guibg=bg guifg=#e3ceab
    CSAHi PreProc term=underline cterm=NONE ctermbg=bg ctermfg=74 gui=bold guibg=bg guifg=#ffcfaf
    CSAHi Type term=underline cterm=NONE ctermbg=bg ctermfg=58 gui=bold guibg=bg guifg=#dfdfbf
    CSAHi StorageClass term=NONE cterm=NONE ctermbg=bg ctermfg=57 gui=bold guibg=bg guifg=#c3bf9f
    CSAHi Structure term=NONE cterm=NONE ctermbg=bg ctermfg=78 gui=bold guibg=bg guifg=#efefaf
    CSAHi Typedef term=NONE cterm=NONE ctermbg=bg ctermfg=58 gui=bold guibg=bg guifg=#dfe4cf
    CSAHi Tag term=NONE cterm=NONE ctermbg=bg ctermfg=69 gui=bold guibg=bg guifg=#e89393
    CSAHi SpecialChar term=NONE cterm=NONE ctermbg=bg ctermfg=53 gui=bold guibg=bg guifg=#dca3a3
    CSAHi Delimiter term=NONE cterm=NONE ctermbg=bg ctermfg=83 gui=NONE guibg=bg guifg=#8f8f8f
    CSAHi SpecialComment term=NONE cterm=NONE ctermbg=bg ctermfg=37 gui=bold guibg=bg guifg=#82a282
    CSAHi FoldColumn term=NONE cterm=NONE ctermbg=80 ctermfg=41 gui=NONE guibg=#3f4040 guifg=#93b3a3
    CSAHi DiffAdd term=bold cterm=NONE ctermbg=80 ctermfg=37 gui=bold guibg=#313c36 guifg=#709080
    CSAHi DiffChange term=bold cterm=NONE ctermbg=80 ctermfg=fg gui=NONE guibg=#333333 guifg=fg
    CSAHi DiffDelete term=bold cterm=NONE ctermbg=81 ctermfg=80 gui=bold guibg=#464646 guifg=#333333
    CSAHi DiffText term=reverse cterm=NONE ctermbg=80 ctermfg=74 gui=bold guibg=#41363c guifg=#ecbcbc
    CSAHi SignColumn term=NONE cterm=NONE ctermbg=80 ctermfg=42 gui=bold guibg=#181818 guifg=#9fafaf
    CSAHi SpellBad term=reverse cterm=undercurl ctermbg=bg ctermfg=53 gui=undercurl guibg=bg guifg=#dc8c6c guisp=#bc6c4c
    CSAHi SpellCap term=reverse cterm=undercurl ctermbg=bg ctermfg=38 gui=undercurl guibg=bg guifg=#8c8cbc guisp=#6c6c9c
    CSAHi SpellRare term=reverse cterm=undercurl ctermbg=bg ctermfg=54 gui=undercurl guibg=bg guifg=#bc8cbc guisp=#bc6c9c
    CSAHi SpellLocal term=underline cterm=undercurl ctermbg=bg ctermfg=41 gui=undercurl guibg=bg guifg=#9ccc9c guisp=#7cac7c
endif

if 1
    delcommand CSAHi
endif
