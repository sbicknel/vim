" zenburn color scheme options
let g:zenburn_force_dark_Background = 1
let g:zenburn_high_Contrast         = 1
let g:zenburn_alternate_Visual      = 1
let g:zenburn_alternate_Error       = 1
let g:zenesque_colors               = 3

" options for Vim wiki
let g:vimwiki_list         = [{'path': '~/Documents/v/vimwiki'},{'path': '~/Documents/n/notes/school/q1'}]
let g:vimwiki_use_calendar = 1

" Program to use for the K command
let &keywordprg = ':help'

" options for Vim outliner
let g:otl_install_menu   = 1
let g:no_otl_maps        = 0
let g:no_otl_insert_maps = 0
let g:otl_bold_headers   = 1
let g:otl_use_thlnk      = 0
let g:otl_map_tabs       = 1

" options for CSApprox extension
let g:CSApprox_attr_map = { 'bold' : 'bold', 'italic' : '', 'sp' : '' }

" taglist variables
let g:ctags_statusline            = 1
let Tlist_Use_Horiz_Window        = 0
let Tlist_Use_Right_Window        = 1
let Tlist_Compact_Format          = 1
let Tlist_Exit_OnlyWindow         = 1
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_File_Fold_Auto_Close    = 1

" set the mapleader to comma
let mapleader      = ','
let maplocalleader = ',,'

" zencoding leader key
let g:user_zen_leader_key = '<c-y>'
let g:use_zen_complete_tag = 1

" mru settings
let MRU_File                = '/home/scott/.vim/myconfig/vim-mru-files'
let MRU_Max_Entries         = 100
let MRU_Exclude_Files       = '^/tmp/.*\|^/var/tmp/.*'
let MRU_Window_Height       = 8
let MRU_Use_Current_Window  = 0
let MRU_Auto_Close          = 1
let MRU_Add_Menu            = 1
let MRU_Max_Menu_entries    = 10
let MRU_Max_Submenu_Entries = 10

" vimcommander
let g:vimcommander_shallcd = 1
