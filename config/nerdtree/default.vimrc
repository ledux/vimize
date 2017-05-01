" nerdtree
" map  <F3>      :NERDTreeToggle<CR>
" imap <F3>      <ESC>:NERDTreeToggle<CR>
map  <F3>      :call ToggleNERDTreeWithRefresh()<cr>
imap <F3>      <ESC>:call ToggleNERDTreeWithRefresh()<cr>

" mappings
let NERDTreeMapToggleHidden='h'

" config
let NERDTreeQuitOnOpen=1
let NERDTreeShowBookmarks=1

" 0: CWD is never changed
" 1: CWD is changed on initialize of nerdtree
" 2: CWD is changed whenever the tree root is changed
let NERDTreeChDirMode=2
"Tells the NERD tree to automatically remove a buffer when a file is being deleted or renamed
let NERDTreeAutoDeleteBuffer=1
let g:NERDTreeWinSize=45

" Collapses on the same line directories that only one child directory.    
let NERDTreeCascadeSingleChildDir=0

function! ToggleNERDTreeWithRefresh()
    :NERDTreeToggle
    if (exists("t:NERDTreeBufName") && bufwinnr(t:NERDTreeBufName) != -1)
        call feedkeys("R")
    endif
endfunction
