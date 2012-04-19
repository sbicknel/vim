call pathogen#infect()
Helptags

if has('win32') || has('win64')
    let $VIMHOME = $HOME."/vimfiles"
else
    let $VIMHOME = $HOME."/.vim"
endif

source $VIMHOME/myconfig/options.vim
source $VIMHOME/myconfig/variables.vim
source $VIMHOME/myconfig/autocmds.vim
source $VIMHOME/myconfig/functions.vim
source $VIMHOME/myconfig/keymaps.vim
source $VIMHOME/myconfig/abbreviations.vim
