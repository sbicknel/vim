" This scheme was created by CSApproxSnapshot
" on Sun, 26 Jun 2011

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
    CSAHi Normal term=NONE cterm=NONE ctermbg=231 ctermfg=16 gui=NONE guibg=#fefefe guifg=#000000
    CSAHi PreProc term=underline cterm=bold ctermbg=bg ctermfg=18 gui=bold guibg=bg guifg=#180773
    CSAHi Type term=underline cterm=bold ctermbg=bg ctermfg=91 gui=bold guibg=bg guifg=#640cab
    CSAHi Underlined term=underline cterm=underline ctermbg=bg ctermfg=234 gui=underline guibg=bg guifg=#202020
    CSAHi Ignore term=NONE cterm=NONE ctermbg=bg ctermfg=231 gui=NONE guibg=bg guifg=#fefefe
    CSAHi Error term=reverse cterm=NONE ctermbg=125 ctermfg=231 gui=NONE guibg=#990022 guifg=#ffffff
    CSAHi Todo term=NONE cterm=bold,underline ctermbg=161 ctermfg=231 gui=bold,underline guibg=#dd1144 guifg=#ffffff
    CSAHi String term=NONE cterm=NONE ctermbg=bg ctermfg=163 gui=NONE guibg=bg guifg=#c10087
    CSAHi Number term=NONE cterm=NONE ctermbg=bg ctermfg=61 gui=NONE guibg=bg guifg=#3b2e84
    CSAHi Define term=NONE cterm=bold ctermbg=bg ctermfg=235 gui=bold guibg=bg guifg=#222222
    CSAHi SpecialKey term=bold cterm=bold ctermbg=254 ctermfg=90 gui=bold guibg=#e8e8e8 guifg=#7d0057
    CSAHi NonText term=bold cterm=bold ctermbg=231 ctermfg=233 gui=bold guibg=#ffffff guifg=#111111
    CSAHi Directory term=bold cterm=NONE ctermbg=bg ctermfg=21 gui=NONE guibg=bg guifg=#0000ff
    CSAHi ErrorMsg term=NONE cterm=NONE ctermbg=196 ctermfg=231 gui=NONE guibg=#ff0000 guifg=#ffffff
    CSAHi IncSearch term=reverse cterm=NONE ctermbg=16 ctermfg=231 gui=reverse guibg=bg guifg=fg
    CSAHi Search term=reverse cterm=NONE ctermbg=226 ctermfg=fg gui=NONE guibg=#ffff00 guifg=fg
    CSAHi MoreMsg term=bold cterm=bold ctermbg=bg ctermfg=72 gui=bold guibg=bg guifg=#2e8b57
    CSAHi ModeMsg term=bold cterm=bold ctermbg=bg ctermfg=fg gui=bold guibg=bg guifg=fg
    CSAHi LineNr term=underline cterm=NONE ctermbg=253 ctermfg=238 gui=NONE guibg=#dddddd guifg=#444444
    CSAHi SpellLocal term=underline cterm=undercurl ctermbg=bg ctermfg=fg gui=undercurl guibg=bg guifg=fg guisp=#008b8b
    CSAHi Pmenu term=NONE cterm=NONE ctermbg=124 ctermfg=235 gui=NONE guibg=#990000 guifg=#222222
    CSAHi PmenuSel term=NONE cterm=NONE ctermbg=250 ctermfg=fg gui=NONE guibg=#bebebe guifg=fg
    CSAHi PmenuSbar term=NONE cterm=NONE ctermbg=250 ctermfg=fg gui=NONE guibg=#bebebe guifg=fg
    CSAHi PmenuThumb term=NONE cterm=NONE ctermbg=16 ctermfg=231 gui=reverse guibg=bg guifg=fg
    CSAHi TabLine term=underline cterm=underline ctermbg=97 ctermfg=231 gui=underline guibg=#582781 guifg=#ffffff
    CSAHi TabLineSel term=bold cterm=bold ctermbg=161 ctermfg=231 gui=bold guibg=#dd1144 guifg=#ffffff
    CSAHi TabLineFill term=reverse cterm=NONE ctermbg=145 ctermfg=231 gui=reverse guibg=bg guifg=#9098a0
    CSAHi CursorColumn term=reverse cterm=NONE ctermbg=188 ctermfg=fg gui=NONE guibg=#cccccc guifg=fg
    CSAHi CursorLine term=underline cterm=NONE ctermbg=188 ctermfg=fg gui=NONE guibg=#cccccc guifg=fg
    CSAHi Float term=NONE cterm=NONE ctermbg=bg ctermfg=38 gui=NONE guibg=bg guifg=#0088bb
    CSAHi Function term=NONE cterm=bold ctermbg=bg ctermfg=24 gui=bold guibg=bg guifg=#033e6b
    CSAHi Conditional term=NONE cterm=bold ctermbg=bg ctermfg=24 gui=bold guibg=bg guifg=#033e6b
    CSAHi Repeat term=NONE cterm=bold ctermbg=bg ctermfg=235 gui=bold guibg=bg guifg=#222222
    CSAHi Operator term=NONE cterm=bold ctermbg=bg ctermfg=235 gui=bold guibg=bg guifg=#222222
    CSAHi Question term=NONE cterm=bold ctermbg=bg ctermfg=72 gui=bold guibg=bg guifg=#2e8b57
    CSAHi StatusLine term=reverse,bold cterm=bold ctermbg=97 ctermfg=231 gui=bold guibg=#582781 guifg=#ffffff
    CSAHi StatusLineNC term=reverse cterm=NONE ctermbg=97 ctermfg=231 gui=NONE guibg=#582781 guifg=#ffffff
    CSAHi VertSplit term=reverse cterm=NONE ctermbg=97 ctermfg=140 gui=reverse guibg=#a468d5 guifg=#582781
    CSAHi Title term=bold cterm=bold ctermbg=bg ctermfg=234 gui=bold guibg=bg guifg=#202020
    CSAHi Visual term=reverse cterm=NONE ctermbg=252 ctermfg=fg gui=NONE guibg=#d3d3d3 guifg=fg
    CSAHi VisualNOS term=bold,underline cterm=bold,underline ctermbg=bg ctermfg=fg gui=bold,underline guibg=bg guifg=fg
    CSAHi WarningMsg term=NONE cterm=NONE ctermbg=bg ctermfg=196 gui=NONE guibg=bg guifg=#ff0000
    CSAHi WildMenu term=NONE cterm=NONE ctermbg=226 ctermfg=16 gui=NONE guibg=#ffff00 guifg=#000000
    CSAHi Folded term=NONE cterm=NONE ctermbg=188 ctermfg=233 gui=NONE guibg=#cccccc guifg=#111111
    CSAHi ColorColumn term=reverse cterm=NONE ctermbg=224 ctermfg=fg gui=NONE guibg=#ffbbbb guifg=fg
    CSAHi Cursor term=NONE cterm=NONE ctermbg=59 ctermfg=231 gui=NONE guibg=#333333 guifg=#ffffff
    CSAHi lCursor term=NONE cterm=NONE ctermbg=231 ctermfg=16 gui=NONE guibg=#ffffff guifg=#000000
    CSAHi MatchParen term=reverse cterm=bold ctermbg=231 ctermfg=90 gui=bold guibg=#ffffff guifg=#7d0057
    CSAHi Comment term=bold cterm=bold ctermbg=bg ctermfg=240 gui=bold,italic guibg=bg guifg=#555555
    CSAHi Constant term=underline cterm=NONE ctermbg=bg ctermfg=128 gui=NONE guibg=bg guifg=#a512d5
    CSAHi Special term=bold cterm=NONE ctermbg=bg ctermfg=90 gui=NONE guibg=bg guifg=#7d0057
    CSAHi Identifier term=underline cterm=bold ctermbg=bg ctermfg=91 gui=bold guibg=bg guifg=#640cab
    CSAHi Statement term=bold cterm=bold ctermbg=bg ctermfg=24 gui=bold guibg=bg guifg=#033e6b
    CSAHi Structure term=NONE cterm=bold ctermbg=bg ctermfg=24 gui=bold guibg=bg guifg=#033e6b
    CSAHi UtlTag term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi FoldColumn term=NONE cterm=NONE ctermbg=250 ctermfg=19 gui=NONE guibg=#bebebe guifg=#00008b
    CSAHi DiffAdd term=bold cterm=NONE ctermbg=153 ctermfg=fg gui=NONE guibg=#add8e6 guifg=fg
    CSAHi DiffChange term=bold cterm=NONE ctermbg=225 ctermfg=fg gui=NONE guibg=#ffbbff guifg=fg
    CSAHi DiffDelete term=bold cterm=bold ctermbg=195 ctermfg=21 gui=bold guibg=#e0ffff guifg=#0000ff
    CSAHi DiffText term=reverse cterm=bold ctermbg=196 ctermfg=fg gui=bold guibg=#ff0000 guifg=fg
    CSAHi SignColumn term=NONE cterm=NONE ctermbg=250 ctermfg=19 gui=NONE guibg=#bebebe guifg=#00008b
    CSAHi Conceal term=NONE cterm=NONE ctermbg=248 ctermfg=252 gui=NONE guibg=#a9a9a9 guifg=#d3d3d3
    CSAHi SpellBad term=reverse cterm=undercurl ctermbg=bg ctermfg=fg gui=undercurl guibg=bg guifg=fg guisp=#ff0000
    CSAHi SpellCap term=reverse cterm=undercurl ctermbg=bg ctermfg=fg gui=undercurl guibg=bg guifg=fg guisp=#0000ff
    CSAHi SpellRare term=reverse cterm=undercurl ctermbg=bg ctermfg=fg gui=undercurl guibg=bg guifg=fg guisp=#ff00ff
elseif has("gui_running") || (&t_Co == 256 && (&term ==# "xterm" || &term =~# "^screen") && exists("g:CSApprox_eterm") && g:CSApprox_eterm) || &term =~? "^eterm"
    CSAHi Normal term=NONE cterm=NONE ctermbg=255 ctermfg=16 gui=NONE guibg=#fefefe guifg=#000000
    CSAHi PreProc term=underline cterm=bold ctermbg=bg ctermfg=55 gui=bold guibg=bg guifg=#180773
    CSAHi Type term=underline cterm=bold ctermbg=bg ctermfg=92 gui=bold guibg=bg guifg=#640cab
    CSAHi Underlined term=underline cterm=underline ctermbg=bg ctermfg=234 gui=underline guibg=bg guifg=#202020
    CSAHi Ignore term=NONE cterm=NONE ctermbg=bg ctermfg=255 gui=NONE guibg=bg guifg=#fefefe
    CSAHi Error term=reverse cterm=NONE ctermbg=161 ctermfg=255 gui=NONE guibg=#990022 guifg=#ffffff
    CSAHi Todo term=NONE cterm=bold,underline ctermbg=198 ctermfg=255 gui=bold,underline guibg=#dd1144 guifg=#ffffff
    CSAHi String term=NONE cterm=NONE ctermbg=bg ctermfg=199 gui=NONE guibg=bg guifg=#c10087
    CSAHi Number term=NONE cterm=NONE ctermbg=bg ctermfg=61 gui=NONE guibg=bg guifg=#3b2e84
    CSAHi Define term=NONE cterm=bold ctermbg=bg ctermfg=235 gui=bold guibg=bg guifg=#222222
    CSAHi SpecialKey term=bold cterm=bold ctermbg=254 ctermfg=126 gui=bold guibg=#e8e8e8 guifg=#7d0057
    CSAHi NonText term=bold cterm=bold ctermbg=255 ctermfg=233 gui=bold guibg=#ffffff guifg=#111111
    CSAHi Directory term=bold cterm=NONE ctermbg=bg ctermfg=21 gui=NONE guibg=bg guifg=#0000ff
    CSAHi ErrorMsg term=NONE cterm=NONE ctermbg=196 ctermfg=255 gui=NONE guibg=#ff0000 guifg=#ffffff
    CSAHi IncSearch term=reverse cterm=NONE ctermbg=16 ctermfg=255 gui=reverse guibg=bg guifg=fg
    CSAHi Search term=reverse cterm=NONE ctermbg=226 ctermfg=fg gui=NONE guibg=#ffff00 guifg=fg
    CSAHi MoreMsg term=bold cterm=bold ctermbg=bg ctermfg=72 gui=bold guibg=bg guifg=#2e8b57
    CSAHi ModeMsg term=bold cterm=bold ctermbg=bg ctermfg=fg gui=bold guibg=bg guifg=fg
    CSAHi LineNr term=underline cterm=NONE ctermbg=253 ctermfg=238 gui=NONE guibg=#dddddd guifg=#444444
    CSAHi SpellLocal term=underline cterm=undercurl ctermbg=bg ctermfg=fg gui=undercurl guibg=bg guifg=fg guisp=#008b8b
    CSAHi Pmenu term=NONE cterm=NONE ctermbg=160 ctermfg=235 gui=NONE guibg=#990000 guifg=#222222
    CSAHi PmenuSel term=NONE cterm=NONE ctermbg=250 ctermfg=fg gui=NONE guibg=#bebebe guifg=fg
    CSAHi PmenuSbar term=NONE cterm=NONE ctermbg=250 ctermfg=fg gui=NONE guibg=#bebebe guifg=fg
    CSAHi PmenuThumb term=NONE cterm=NONE ctermbg=16 ctermfg=255 gui=reverse guibg=bg guifg=fg
    CSAHi TabLine term=underline cterm=underline ctermbg=97 ctermfg=255 gui=underline guibg=#582781 guifg=#ffffff
    CSAHi TabLineSel term=bold cterm=bold ctermbg=198 ctermfg=255 gui=bold guibg=#dd1144 guifg=#ffffff
    CSAHi TabLineFill term=reverse cterm=NONE ctermbg=152 ctermfg=255 gui=reverse guibg=bg guifg=#9098a0
    CSAHi CursorColumn term=reverse cterm=NONE ctermbg=252 ctermfg=fg gui=NONE guibg=#cccccc guifg=fg
    CSAHi CursorLine term=underline cterm=NONE ctermbg=252 ctermfg=fg gui=NONE guibg=#cccccc guifg=fg
    CSAHi Float term=NONE cterm=NONE ctermbg=bg ctermfg=38 gui=NONE guibg=bg guifg=#0088bb
    CSAHi Function term=NONE cterm=bold ctermbg=bg ctermfg=25 gui=bold guibg=bg guifg=#033e6b
    CSAHi Conditional term=NONE cterm=bold ctermbg=bg ctermfg=25 gui=bold guibg=bg guifg=#033e6b
    CSAHi Repeat term=NONE cterm=bold ctermbg=bg ctermfg=235 gui=bold guibg=bg guifg=#222222
    CSAHi Operator term=NONE cterm=bold ctermbg=bg ctermfg=235 gui=bold guibg=bg guifg=#222222
    CSAHi Question term=NONE cterm=bold ctermbg=bg ctermfg=72 gui=bold guibg=bg guifg=#2e8b57
    CSAHi StatusLine term=reverse,bold cterm=bold ctermbg=97 ctermfg=255 gui=bold guibg=#582781 guifg=#ffffff
    CSAHi StatusLineNC term=reverse cterm=NONE ctermbg=97 ctermfg=255 gui=NONE guibg=#582781 guifg=#ffffff
    CSAHi VertSplit term=reverse cterm=NONE ctermbg=97 ctermfg=177 gui=reverse guibg=#a468d5 guifg=#582781
    CSAHi Title term=bold cterm=bold ctermbg=bg ctermfg=234 gui=bold guibg=bg guifg=#202020
    CSAHi Visual term=reverse cterm=NONE ctermbg=231 ctermfg=fg gui=NONE guibg=#d3d3d3 guifg=fg
    CSAHi VisualNOS term=bold,underline cterm=bold,underline ctermbg=bg ctermfg=fg gui=bold,underline guibg=bg guifg=fg
    CSAHi WarningMsg term=NONE cterm=NONE ctermbg=bg ctermfg=196 gui=NONE guibg=bg guifg=#ff0000
    CSAHi WildMenu term=NONE cterm=NONE ctermbg=226 ctermfg=16 gui=NONE guibg=#ffff00 guifg=#000000
    CSAHi Folded term=NONE cterm=NONE ctermbg=252 ctermfg=233 gui=NONE guibg=#cccccc guifg=#111111
    CSAHi ColorColumn term=reverse cterm=NONE ctermbg=224 ctermfg=fg gui=NONE guibg=#ffbbbb guifg=fg
    CSAHi Cursor term=NONE cterm=NONE ctermbg=236 ctermfg=255 gui=NONE guibg=#333333 guifg=#ffffff
    CSAHi lCursor term=NONE cterm=NONE ctermbg=255 ctermfg=16 gui=NONE guibg=#ffffff guifg=#000000
    CSAHi MatchParen term=reverse cterm=bold ctermbg=255 ctermfg=126 gui=bold guibg=#ffffff guifg=#7d0057
    CSAHi Comment term=bold cterm=bold ctermbg=bg ctermfg=102 gui=bold,italic guibg=bg guifg=#555555
    CSAHi Constant term=underline cterm=NONE ctermbg=bg ctermfg=165 gui=NONE guibg=bg guifg=#a512d5
    CSAHi Special term=bold cterm=NONE ctermbg=bg ctermfg=126 gui=NONE guibg=bg guifg=#7d0057
    CSAHi Identifier term=underline cterm=bold ctermbg=bg ctermfg=92 gui=bold guibg=bg guifg=#640cab
    CSAHi Statement term=bold cterm=bold ctermbg=bg ctermfg=25 gui=bold guibg=bg guifg=#033e6b
    CSAHi Structure term=NONE cterm=bold ctermbg=bg ctermfg=25 gui=bold guibg=bg guifg=#033e6b
    CSAHi UtlTag term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi FoldColumn term=NONE cterm=NONE ctermbg=250 ctermfg=19 gui=NONE guibg=#bebebe guifg=#00008b
    CSAHi DiffAdd term=bold cterm=NONE ctermbg=195 ctermfg=fg gui=NONE guibg=#add8e6 guifg=fg
    CSAHi DiffChange term=bold cterm=NONE ctermbg=225 ctermfg=fg gui=NONE guibg=#ffbbff guifg=fg
    CSAHi DiffDelete term=bold cterm=bold ctermbg=231 ctermfg=21 gui=bold guibg=#e0ffff guifg=#0000ff
    CSAHi DiffText term=reverse cterm=bold ctermbg=196 ctermfg=fg gui=bold guibg=#ff0000 guifg=fg
    CSAHi SignColumn term=NONE cterm=NONE ctermbg=250 ctermfg=19 gui=NONE guibg=#bebebe guifg=#00008b
    CSAHi Conceal term=NONE cterm=NONE ctermbg=248 ctermfg=231 gui=NONE guibg=#a9a9a9 guifg=#d3d3d3
    CSAHi SpellBad term=reverse cterm=undercurl ctermbg=bg ctermfg=fg gui=undercurl guibg=bg guifg=fg guisp=#ff0000
    CSAHi SpellCap term=reverse cterm=undercurl ctermbg=bg ctermfg=fg gui=undercurl guibg=bg guifg=fg guisp=#0000ff
    CSAHi SpellRare term=reverse cterm=undercurl ctermbg=bg ctermfg=fg gui=undercurl guibg=bg guifg=fg guisp=#ff00ff
elseif has("gui_running") || &t_Co == 256
    CSAHi Normal term=NONE cterm=NONE ctermbg=231 ctermfg=16 gui=NONE guibg=#fefefe guifg=#000000
    CSAHi PreProc term=underline cterm=bold ctermbg=bg ctermfg=17 gui=bold guibg=bg guifg=#180773
    CSAHi Type term=underline cterm=bold ctermbg=bg ctermfg=55 gui=bold guibg=bg guifg=#640cab
    CSAHi Underlined term=underline cterm=underline ctermbg=bg ctermfg=234 gui=underline guibg=bg guifg=#202020
    CSAHi Ignore term=NONE cterm=NONE ctermbg=bg ctermfg=231 gui=NONE guibg=bg guifg=#fefefe
    CSAHi Error term=reverse cterm=NONE ctermbg=88 ctermfg=231 gui=NONE guibg=#990022 guifg=#ffffff
    CSAHi Todo term=NONE cterm=bold,underline ctermbg=161 ctermfg=231 gui=bold,underline guibg=#dd1144 guifg=#ffffff
    CSAHi String term=NONE cterm=NONE ctermbg=bg ctermfg=126 gui=NONE guibg=bg guifg=#c10087
    CSAHi Number term=NONE cterm=NONE ctermbg=bg ctermfg=54 gui=NONE guibg=bg guifg=#3b2e84
    CSAHi Define term=NONE cterm=bold ctermbg=bg ctermfg=235 gui=bold guibg=bg guifg=#222222
    CSAHi SpecialKey term=bold cterm=bold ctermbg=254 ctermfg=89 gui=bold guibg=#e8e8e8 guifg=#7d0057
    CSAHi NonText term=bold cterm=bold ctermbg=231 ctermfg=233 gui=bold guibg=#ffffff guifg=#111111
    CSAHi Directory term=bold cterm=NONE ctermbg=bg ctermfg=21 gui=NONE guibg=bg guifg=#0000ff
    CSAHi ErrorMsg term=NONE cterm=NONE ctermbg=196 ctermfg=231 gui=NONE guibg=#ff0000 guifg=#ffffff
    CSAHi IncSearch term=reverse cterm=NONE ctermbg=16 ctermfg=231 gui=reverse guibg=bg guifg=fg
    CSAHi Search term=reverse cterm=NONE ctermbg=226 ctermfg=fg gui=NONE guibg=#ffff00 guifg=fg
    CSAHi MoreMsg term=bold cterm=bold ctermbg=bg ctermfg=29 gui=bold guibg=bg guifg=#2e8b57
    CSAHi ModeMsg term=bold cterm=bold ctermbg=bg ctermfg=fg gui=bold guibg=bg guifg=fg
    CSAHi LineNr term=underline cterm=NONE ctermbg=253 ctermfg=238 gui=NONE guibg=#dddddd guifg=#444444
    CSAHi SpellLocal term=underline cterm=undercurl ctermbg=bg ctermfg=fg gui=undercurl guibg=bg guifg=fg guisp=#008b8b
    CSAHi Pmenu term=NONE cterm=NONE ctermbg=88 ctermfg=235 gui=NONE guibg=#990000 guifg=#222222
    CSAHi PmenuSel term=NONE cterm=NONE ctermbg=250 ctermfg=fg gui=NONE guibg=#bebebe guifg=fg
    CSAHi PmenuSbar term=NONE cterm=NONE ctermbg=250 ctermfg=fg gui=NONE guibg=#bebebe guifg=fg
    CSAHi PmenuThumb term=NONE cterm=NONE ctermbg=16 ctermfg=231 gui=reverse guibg=bg guifg=fg
    CSAHi TabLine term=underline cterm=underline ctermbg=54 ctermfg=231 gui=underline guibg=#582781 guifg=#ffffff
    CSAHi TabLineSel term=bold cterm=bold ctermbg=161 ctermfg=231 gui=bold guibg=#dd1144 guifg=#ffffff
    CSAHi TabLineFill term=reverse cterm=NONE ctermbg=103 ctermfg=231 gui=reverse guibg=bg guifg=#9098a0
    CSAHi CursorColumn term=reverse cterm=NONE ctermbg=252 ctermfg=fg gui=NONE guibg=#cccccc guifg=fg
    CSAHi CursorLine term=underline cterm=NONE ctermbg=252 ctermfg=fg gui=NONE guibg=#cccccc guifg=fg
    CSAHi Float term=NONE cterm=NONE ctermbg=bg ctermfg=31 gui=NONE guibg=bg guifg=#0088bb
    CSAHi Function term=NONE cterm=bold ctermbg=bg ctermfg=23 gui=bold guibg=bg guifg=#033e6b
    CSAHi Conditional term=NONE cterm=bold ctermbg=bg ctermfg=23 gui=bold guibg=bg guifg=#033e6b
    CSAHi Repeat term=NONE cterm=bold ctermbg=bg ctermfg=235 gui=bold guibg=bg guifg=#222222
    CSAHi Operator term=NONE cterm=bold ctermbg=bg ctermfg=235 gui=bold guibg=bg guifg=#222222
    CSAHi Question term=NONE cterm=bold ctermbg=bg ctermfg=29 gui=bold guibg=bg guifg=#2e8b57
    CSAHi StatusLine term=reverse,bold cterm=bold ctermbg=54 ctermfg=231 gui=bold guibg=#582781 guifg=#ffffff
    CSAHi StatusLineNC term=reverse cterm=NONE ctermbg=54 ctermfg=231 gui=NONE guibg=#582781 guifg=#ffffff
    CSAHi VertSplit term=reverse cterm=NONE ctermbg=54 ctermfg=134 gui=reverse guibg=#a468d5 guifg=#582781
    CSAHi Title term=bold cterm=bold ctermbg=bg ctermfg=234 gui=bold guibg=bg guifg=#202020
    CSAHi Visual term=reverse cterm=NONE ctermbg=252 ctermfg=fg gui=NONE guibg=#d3d3d3 guifg=fg
    CSAHi VisualNOS term=bold,underline cterm=bold,underline ctermbg=bg ctermfg=fg gui=bold,underline guibg=bg guifg=fg
    CSAHi WarningMsg term=NONE cterm=NONE ctermbg=bg ctermfg=196 gui=NONE guibg=bg guifg=#ff0000
    CSAHi WildMenu term=NONE cterm=NONE ctermbg=226 ctermfg=16 gui=NONE guibg=#ffff00 guifg=#000000
    CSAHi Folded term=NONE cterm=NONE ctermbg=252 ctermfg=233 gui=NONE guibg=#cccccc guifg=#111111
    CSAHi ColorColumn term=reverse cterm=NONE ctermbg=217 ctermfg=fg gui=NONE guibg=#ffbbbb guifg=fg
    CSAHi Cursor term=NONE cterm=NONE ctermbg=236 ctermfg=231 gui=NONE guibg=#333333 guifg=#ffffff
    CSAHi lCursor term=NONE cterm=NONE ctermbg=231 ctermfg=16 gui=NONE guibg=#ffffff guifg=#000000
    CSAHi MatchParen term=reverse cterm=bold ctermbg=231 ctermfg=89 gui=bold guibg=#ffffff guifg=#7d0057
    CSAHi Comment term=bold cterm=bold ctermbg=bg ctermfg=240 gui=bold,italic guibg=bg guifg=#555555
    CSAHi Constant term=underline cterm=NONE ctermbg=bg ctermfg=128 gui=NONE guibg=bg guifg=#a512d5
    CSAHi Special term=bold cterm=NONE ctermbg=bg ctermfg=89 gui=NONE guibg=bg guifg=#7d0057
    CSAHi Identifier term=underline cterm=bold ctermbg=bg ctermfg=55 gui=bold guibg=bg guifg=#640cab
    CSAHi Statement term=bold cterm=bold ctermbg=bg ctermfg=23 gui=bold guibg=bg guifg=#033e6b
    CSAHi Structure term=NONE cterm=bold ctermbg=bg ctermfg=23 gui=bold guibg=bg guifg=#033e6b
    CSAHi UtlTag term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi FoldColumn term=NONE cterm=NONE ctermbg=250 ctermfg=18 gui=NONE guibg=#bebebe guifg=#00008b
    CSAHi DiffAdd term=bold cterm=NONE ctermbg=152 ctermfg=fg gui=NONE guibg=#add8e6 guifg=fg
    CSAHi DiffChange term=bold cterm=NONE ctermbg=219 ctermfg=fg gui=NONE guibg=#ffbbff guifg=fg
    CSAHi DiffDelete term=bold cterm=bold ctermbg=195 ctermfg=21 gui=bold guibg=#e0ffff guifg=#0000ff
    CSAHi DiffText term=reverse cterm=bold ctermbg=196 ctermfg=fg gui=bold guibg=#ff0000 guifg=fg
    CSAHi SignColumn term=NONE cterm=NONE ctermbg=250 ctermfg=18 gui=NONE guibg=#bebebe guifg=#00008b
    CSAHi Conceal term=NONE cterm=NONE ctermbg=248 ctermfg=252 gui=NONE guibg=#a9a9a9 guifg=#d3d3d3
    CSAHi SpellBad term=reverse cterm=undercurl ctermbg=bg ctermfg=fg gui=undercurl guibg=bg guifg=fg guisp=#ff0000
    CSAHi SpellCap term=reverse cterm=undercurl ctermbg=bg ctermfg=fg gui=undercurl guibg=bg guifg=fg guisp=#0000ff
    CSAHi SpellRare term=reverse cterm=undercurl ctermbg=bg ctermfg=fg gui=undercurl guibg=bg guifg=fg guisp=#ff00ff
elseif has("gui_running") || &t_Co == 88
    CSAHi Normal term=NONE cterm=NONE ctermbg=79 ctermfg=16 gui=NONE guibg=#fefefe guifg=#000000
    CSAHi PreProc term=underline cterm=bold ctermbg=bg ctermfg=17 gui=bold guibg=bg guifg=#180773
    CSAHi Type term=underline cterm=bold ctermbg=bg ctermfg=33 gui=bold guibg=bg guifg=#640cab
    CSAHi Underlined term=underline cterm=underline ctermbg=bg ctermfg=80 gui=underline guibg=bg guifg=#202020
    CSAHi Ignore term=NONE cterm=NONE ctermbg=bg ctermfg=79 gui=NONE guibg=bg guifg=#fefefe
    CSAHi Error term=reverse cterm=NONE ctermbg=32 ctermfg=79 gui=NONE guibg=#990022 guifg=#ffffff
    CSAHi Todo term=NONE cterm=bold,underline ctermbg=48 ctermfg=79 gui=bold,underline guibg=#dd1144 guifg=#ffffff
    CSAHi String term=NONE cterm=NONE ctermbg=bg ctermfg=49 gui=NONE guibg=bg guifg=#c10087
    CSAHi Number term=NONE cterm=NONE ctermbg=bg ctermfg=17 gui=NONE guibg=bg guifg=#3b2e84
    CSAHi Define term=NONE cterm=bold ctermbg=bg ctermfg=80 gui=bold guibg=bg guifg=#222222
    CSAHi SpecialKey term=bold cterm=bold ctermbg=87 ctermfg=33 gui=bold guibg=#e8e8e8 guifg=#7d0057
    CSAHi NonText term=bold cterm=bold ctermbg=79 ctermfg=16 gui=bold guibg=#ffffff guifg=#111111
    CSAHi Directory term=bold cterm=NONE ctermbg=bg ctermfg=19 gui=NONE guibg=bg guifg=#0000ff
    CSAHi ErrorMsg term=NONE cterm=NONE ctermbg=64 ctermfg=79 gui=NONE guibg=#ff0000 guifg=#ffffff
    CSAHi IncSearch term=reverse cterm=NONE ctermbg=16 ctermfg=79 gui=reverse guibg=bg guifg=fg
    CSAHi Search term=reverse cterm=NONE ctermbg=76 ctermfg=fg gui=NONE guibg=#ffff00 guifg=fg
    CSAHi MoreMsg term=bold cterm=bold ctermbg=bg ctermfg=21 gui=bold guibg=bg guifg=#2e8b57
    CSAHi ModeMsg term=bold cterm=bold ctermbg=bg ctermfg=fg gui=bold guibg=bg guifg=fg
    CSAHi LineNr term=underline cterm=NONE ctermbg=87 ctermfg=80 gui=NONE guibg=#dddddd guifg=#444444
    CSAHi SpellLocal term=underline cterm=undercurl ctermbg=bg ctermfg=fg gui=undercurl guibg=bg guifg=fg guisp=#008b8b
    CSAHi Pmenu term=NONE cterm=NONE ctermbg=32 ctermfg=80 gui=NONE guibg=#990000 guifg=#222222
    CSAHi PmenuSel term=NONE cterm=NONE ctermbg=85 ctermfg=fg gui=NONE guibg=#bebebe guifg=fg
    CSAHi PmenuSbar term=NONE cterm=NONE ctermbg=85 ctermfg=fg gui=NONE guibg=#bebebe guifg=fg
    CSAHi PmenuThumb term=NONE cterm=NONE ctermbg=16 ctermfg=79 gui=reverse guibg=bg guifg=fg
    CSAHi TabLine term=underline cterm=underline ctermbg=33 ctermfg=79 gui=underline guibg=#582781 guifg=#ffffff
    CSAHi TabLineSel term=bold cterm=bold ctermbg=48 ctermfg=79 gui=bold guibg=#dd1144 guifg=#ffffff
    CSAHi TabLineFill term=reverse cterm=NONE ctermbg=37 ctermfg=79 gui=reverse guibg=bg guifg=#9098a0
    CSAHi CursorColumn term=reverse cterm=NONE ctermbg=58 ctermfg=fg gui=NONE guibg=#cccccc guifg=fg
    CSAHi CursorLine term=underline cterm=NONE ctermbg=58 ctermfg=fg gui=NONE guibg=#cccccc guifg=fg
    CSAHi Float term=NONE cterm=NONE ctermbg=bg ctermfg=22 gui=NONE guibg=bg guifg=#0088bb
    CSAHi Function term=NONE cterm=bold ctermbg=bg ctermfg=17 gui=bold guibg=bg guifg=#033e6b
    CSAHi Conditional term=NONE cterm=bold ctermbg=bg ctermfg=17 gui=bold guibg=bg guifg=#033e6b
    CSAHi Repeat term=NONE cterm=bold ctermbg=bg ctermfg=80 gui=bold guibg=bg guifg=#222222
    CSAHi Operator term=NONE cterm=bold ctermbg=bg ctermfg=80 gui=bold guibg=bg guifg=#222222
    CSAHi Question term=NONE cterm=bold ctermbg=bg ctermfg=21 gui=bold guibg=bg guifg=#2e8b57
    CSAHi StatusLine term=reverse,bold cterm=bold ctermbg=33 ctermfg=79 gui=bold guibg=#582781 guifg=#ffffff
    CSAHi StatusLineNC term=reverse cterm=NONE ctermbg=33 ctermfg=79 gui=NONE guibg=#582781 guifg=#ffffff
    CSAHi VertSplit term=reverse cterm=NONE ctermbg=33 ctermfg=38 gui=reverse guibg=#a468d5 guifg=#582781
    CSAHi Title term=bold cterm=bold ctermbg=bg ctermfg=80 gui=bold guibg=bg guifg=#202020
    CSAHi Visual term=reverse cterm=NONE ctermbg=86 ctermfg=fg gui=NONE guibg=#d3d3d3 guifg=fg
    CSAHi VisualNOS term=bold,underline cterm=bold,underline ctermbg=bg ctermfg=fg gui=bold,underline guibg=bg guifg=fg
    CSAHi WarningMsg term=NONE cterm=NONE ctermbg=bg ctermfg=64 gui=NONE guibg=bg guifg=#ff0000
    CSAHi WildMenu term=NONE cterm=NONE ctermbg=76 ctermfg=16 gui=NONE guibg=#ffff00 guifg=#000000
    CSAHi Folded term=NONE cterm=NONE ctermbg=58 ctermfg=16 gui=NONE guibg=#cccccc guifg=#111111
    CSAHi ColorColumn term=reverse cterm=NONE ctermbg=74 ctermfg=fg gui=NONE guibg=#ffbbbb guifg=fg
    CSAHi Cursor term=NONE cterm=NONE ctermbg=80 ctermfg=79 gui=NONE guibg=#333333 guifg=#ffffff
    CSAHi lCursor term=NONE cterm=NONE ctermbg=79 ctermfg=16 gui=NONE guibg=#ffffff guifg=#000000
    CSAHi MatchParen term=reverse cterm=bold ctermbg=79 ctermfg=33 gui=bold guibg=#ffffff guifg=#7d0057
    CSAHi Comment term=bold cterm=bold ctermbg=bg ctermfg=81 gui=bold,italic guibg=bg guifg=#555555
    CSAHi Constant term=underline cterm=NONE ctermbg=bg ctermfg=34 gui=NONE guibg=bg guifg=#a512d5
    CSAHi Special term=bold cterm=NONE ctermbg=bg ctermfg=33 gui=NONE guibg=bg guifg=#7d0057
    CSAHi Identifier term=underline cterm=bold ctermbg=bg ctermfg=33 gui=bold guibg=bg guifg=#640cab
    CSAHi Statement term=bold cterm=bold ctermbg=bg ctermfg=17 gui=bold guibg=bg guifg=#033e6b
    CSAHi Structure term=NONE cterm=bold ctermbg=bg ctermfg=17 gui=bold guibg=bg guifg=#033e6b
    CSAHi UtlTag term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi FoldColumn term=NONE cterm=NONE ctermbg=85 ctermfg=17 gui=NONE guibg=#bebebe guifg=#00008b
    CSAHi DiffAdd term=bold cterm=NONE ctermbg=58 ctermfg=fg gui=NONE guibg=#add8e6 guifg=fg
    CSAHi DiffChange term=bold cterm=NONE ctermbg=75 ctermfg=fg gui=NONE guibg=#ffbbff guifg=fg
    CSAHi DiffDelete term=bold cterm=bold ctermbg=63 ctermfg=19 gui=bold guibg=#e0ffff guifg=#0000ff
    CSAHi DiffText term=reverse cterm=bold ctermbg=64 ctermfg=fg gui=bold guibg=#ff0000 guifg=fg
    CSAHi SignColumn term=NONE cterm=NONE ctermbg=85 ctermfg=17 gui=NONE guibg=#bebebe guifg=#00008b
    CSAHi Conceal term=NONE cterm=NONE ctermbg=84 ctermfg=86 gui=NONE guibg=#a9a9a9 guifg=#d3d3d3
    CSAHi SpellBad term=reverse cterm=undercurl ctermbg=bg ctermfg=fg gui=undercurl guibg=bg guifg=fg guisp=#ff0000
    CSAHi SpellCap term=reverse cterm=undercurl ctermbg=bg ctermfg=fg gui=undercurl guibg=bg guifg=fg guisp=#0000ff
    CSAHi SpellRare term=reverse cterm=undercurl ctermbg=bg ctermfg=fg gui=undercurl guibg=bg guifg=fg guisp=#ff00ff
endif

if 1
    delcommand CSAHi
endif
