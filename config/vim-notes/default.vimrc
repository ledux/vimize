" edits or creates a note
nnoremap <Leader>ne :Note<Space>

nnoremap <Leader>nn :call DiaryEntry()<CR>

nnoremap <Leader>na :call NaDiary()<CR>

vnoremap <Leader>ns :NoteFromSelectedText<CR>
" creates a note from the word under the cursor
nnoremap <Leader>ns viW:NoteFromSelectedText<CR>
" deletes the note in the current buffer
nnoremap <Leader>nd :DeleteNote<CR>
" delete despite unsaved changes in buffer
nnoremap <Leader>nD :DeleteNote!<CR>
"lists notes by modification date
nnoremap <Leader>nr :RecentNotes
"TODO find a shortcut
"finds related notes
"nnoremap <Leader> :RelatedNotes
nnoremap <Leader>nt :ShowTaggedNotes<CR>

nnoremap <Leader>nT :NewNextTemplate<CR>

augroup filetype_notes
    autocmd!
    autocmd FileType notes nnoremap <F4> :ShowTaggedNotes<Space>
    autocmd FileType notes nnoremap <F5> :w<CR>:NoteToHtml<CR>
    autocmd FileType notes inoremap <F5> <ESC>:w<CR>:NoteToHtml<CR>
    autocmd FileType notes setlocal textwidth=100
    autocmd FileType notes setlocal spell
    " searches notes by word  under the cursor (also by tags)
    autocmd FileType notes nnoremap <F12> :SearchNotes<CR>
augroup END



"let g:notes_directories = ['~/documents/owncloud/privat/notes', '~/documents/owncloud/privat/diaries/2016']
let g:notes_directories = ['~/documents/owncloud/privat/notes']
" changes quotes to nicer ones
let g:notes_smart_quotes = 1
" file where the search index is stored
let g:notes_tagsindex = '~/documents/owncloud/privat/notes/.index/index.pickle'
" files where the tags are stored
let g:notes_tagsindex = '~/documents/owncloud/privat/notes/.index/tags.txt'

let g:notes_new_note_template = '~/.vim/config/vim-notes/template'

let g:diary_dir = '/home/lueq/documents/owncloud/privat/diaries/2016'

let g:notes_templates = ["~/.vim/config/vim-notes/jft1", "~/.vim/config/vim-notes/jft2", "~/.vim/config/vim-notes/jft3", "~/.vim/config/vim-notes/jft4", "~/.vim/config/vim-notes/jft5"]

function! DiaryEntry()
    "execute 'lcd g:diary_dir'
    let l:date = strftime("%c")
    execute 'Note ' l:date
endfunction

function! NaDiary()
    let template = g:notes_new_note_template
    let g:notes_new_note_template = '~/.vim/config/vim-notes/na-diary'
    let l:date = strftime("%c")
    execute 'Note ' l:date
    let g:notes_new_note_template = template
endfunction

