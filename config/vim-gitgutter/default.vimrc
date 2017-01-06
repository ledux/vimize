" to keep vim snappy: default 500
let g:gitgutter_max_signs = 500
" update signs: real: stop typing (is governed by updatetime (see :h " updatetime))
let g:gitgutter_realtime = 1
let g:gitgutter_eager = 1
" extra arguments to 'git diff'
" -w: ignore whitespaces
let g:gitgutter_diff_args = '-w'

" jump between changes: default ]h
nmap <Leader>hn <Plug>GitGutterNextHunk
" default [h
nmap <Leader>hp <Plug>GitGutterPrevHunk

" stage change: default <Leader>hs
nmap <Leader>hs <Plug>GitGutterStageHunk

" undo change: default <Leader>hu
nmap <Leader>hu <Plug>GitGutterUndoHunk

" preview changes: default <Leader>hp
nmap <Leader>hP <Plug>GitGutterPreviewHunk


