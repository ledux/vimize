"Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1

" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

augroup vimrc_autocmds
    autocmd!
    autocmd VimEnter * call AirlineInit()
augroup END

" {{{ airline init
function! AirlineInit()
    "let g:airline_powerline_fonts=1

    " themes
    AirlineTheme term
    ":AirlineTheme understated
    ":AirlineTheme kolor

    if !exists('g:airline_symbols')
        let g:airline_symbols = {}
    endif

    " unicode symbols für separators
    "let g:airline_left_sep = '»'
    let g:airline_left_sep = '▶'
    "let g:airline_right_sep = '«'
    let g:airline_right_sep = '◀'
    "let g:airline_symbols.linenr = '␊'
    "let g:airline_symbols.linenr = '␤'
    let g:airline_symbols.linenr = '¶'
    let g:airline_symbols.branch = '⎇'
    let g:airline_symbols.paste = 'ρ'
    "let g:airline_symbols.paste = 'Þ'
    "let g:airline_symbols.paste = '∥'
    let g:airline_symbols.whitespace = 'Ξ'

    " sections
    let g:airline_section_z = '%3p%% | %l of %L | %3c'
endfunction
" }}}
