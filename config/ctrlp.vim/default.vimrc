" ctrlp.vim :CtrlPBuffer - show all open buffers
map  <F2>       :CtrlPBuffer<CR>
map  <leader>bs  :CtrlPBuffer<CR>
imap <F2>       <ESC>:CtrlPBuffer<CR>

" Change the default command to invoke CtrlP
"let g:ctrlp_cmd = 'CtrlP'

" ignore some directories and files in ctrlp plugin
let g:ctrlp_custom_ignore = '\.git/*'

" open files in new hidden buffer in ctrlp plugin
let g:ctrlp_open_multiple_files = 'ijr'
let g:ctrlp_working_path_mode = 'wra'

"The position: (default: bottom)
  "top - show the match window at the top of the screen.
  "bottom - show the match window at the bottom of the screen.

"The listing order of results: (default: btt)
  "order:ttb - from top to bottom.
  "order:btt - from bottom to top.

"The minimum and maximum heights:
  "min:{n} - show minimum {n} lines (default: 1).
  "max:{n} - show maximum {n} lines (default: 10).

"The maximum number of results:
  "results:{n} - list maximum {n} results (default: sync with max height).
let g:ctrlp_match_window = 'bottom,order:ttb,min:1,max:10,results:10'

" keep caching file
let g:ctrlp_clear_cache_on_exit = 0
" hide dot-files (evt. enable for certain filetypes)
let g:ctrlp_show_hidden = 0
