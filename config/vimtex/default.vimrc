augroup tex_specifics
    autocmd!
    autocmd FileType tex inoremap <cr> <esc>:call ContinueItemize()<cr>
augroup END

function! ContinueItemize()
    let currentline=getline('.')
    "echo currentline
    let haslistitem=matchstr(currentline, '\\item')
    execute "normal! o".haslistitem
endfunction
