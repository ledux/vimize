" YouCompleteMe config
let g:ycm_global_ycm_extra_conf = '~/.vim/config/YouCompleteMe/ycm_config.py'
let g:ycm_confirm_extra_conf = 0
let g:ycm_show_diagnostics_ui = 0
" syntastic config
"let g:syntastic_python_flake8_args = '--ignore=E501'

nmap <c-]> :YcmCompleter GoToDefinition<cr>
