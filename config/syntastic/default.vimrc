" syntastic config
let g:syntastic_python_checkers = ['pylint']
let g:syntastic_c_compiler_options = '-std=c90'
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" When set to 0 the cursor won't jump automatically. >
" When set to 1 the cursor will always jump to the first issue detected,
" 2 to first  error
" 3 to
let g:syntastic_auto_jump = 1
let g:syntastic_error_symbol = "✗"
let g:syntastic_warning_symbol = "⚠"
