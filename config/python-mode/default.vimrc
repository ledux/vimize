" let g:pymode_python = 'python3'

" Extended autocompletion (rope could complete objects which have not been
" imported) from project
let g:pymode_rope_autoimport = 1

" Load modules to autoimport by default       
let g:pymode_rope_autoimport_modules = ['os', 'shutil', 'datetime']

" Offer to unresolved import object after completion.
let g:pymode_rope_autoimport_import_after_complete = 1

