map gm :call cursor(0, virtcol('$')/2)
"map gm :exe 'normal '.(virtcol('$')/2).'|'
nmap <F4> <Plug>(JavaComplete-Imports-AddSmart)
imap <F4> <Plug>(JavaComplete-Imports-AddSmart)
