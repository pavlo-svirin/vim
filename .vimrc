exec "source " . path . "/general.vim"
exec "source " . path . "/plug.vim"
exec "source " . path . "/keys.vim"
exec "source " . path . "/filetypes.vim"
" source ./plug.vim
" source ./keys.vim
" source ./filetypes.vim
"

if has("unix")
    " unix specific
    exec "source " . path . "/unix.vim"
elseif has("win32")
    " do stuff for Windows
    exec "source " . path . "/win32.vim"
endif
