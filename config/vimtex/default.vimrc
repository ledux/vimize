" enabel spell in tex files
let g:tex_nospell=0
" disable spell in comments
let g:tex_comment_nospell= 1

augroup tex_specifics
    autocmd!
    autocmd FileType tex let maplocalleader=","
    "autocmd FileType tex inoremap <cr> <esc>:call ContinueItemize()<cr>
augroup END

function! ContinueItemize()
    let currentline=getline('.')
    "echo currentline
    let haslistitem=matchstr(currentline, '\\item')
    execute "normal! o".haslistitem
endfunction
