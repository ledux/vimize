let g:tex_flavor='latex'  " sets filetype=tex in empty .tex files
let g:LatexBox_viewer='zathura --fork --synctex-editor-command "vim --servername VIM --remote +\%{line} \%{input}"'
let g:LatexBox_custom_indent = 0
let g:LatexBox_latexmk_options = '-xelatex'
set indentexpr=
set indentkeys=
augroup filetype_tex
    autocmd!
    autocmd FileType tex setlocal shiftwidth=2 tabstop=2 softtabstop=2 expandtab
    autocmd FileType tex setlocal noautoindent indentexpr= indentkeys=
    autocmd FileType tex setlocal spell
    autocmd FileType tex setlocal textwidth=100
    "autocmd FileType tex noremap <buffer> <f5> :w<cr>:call BuildTex()<cr>
    "autocmd FileType tex inoremap <buffer> <f5> <esc>:w<cr>:call BuildTex()<cr>
    autocmd FileType tex noremap <buffer> <f5> :w<CR>:Latexmk<CR>
    autocmd FileType tex inoremap <buffer> <f5> <esc>:w<CR>:Latexmk<CR>
    autocmd FileType tex noremap <buffer> <s-f5> :w<CR>:LatexView<CR>
    autocmd FileType tex inoremap <buffer> <s-f5> <esc>:w<CR>:LatexView<CR>
    autocmd FileType tex noremap <buffer> <c-f5> :LatexmkClean<CR>
    autocmd FileType tex inoremap <buffer> <c-f5> <esc>:LatexmkClean<CR>
    " autocmd FileType tex setlocal formatoptions+=ta
augroup END


" {{{ build tex
function! BuildTex()
    "let filename = expand("%:r:t")
    "execute "make " . filename . ".pdf"
    :Latexmk
endfunction
" }}}
