" edits or creates a note
nnoremap <Leader>ne :Note<Space>

nnoremap <Leader>nn :call DiaryEntry()<CR>

vnoremap <Leader>ns :NoteFromSelectedText<CR>
" creates a note from the word under the cursor
nnoremap <Leader>ns viW:NoteFromSelectedText<CR>
" deletes the note in the current buffer
nnoremap <Leader>nd :DeleteNote<CR>
" delete despite unsaved changes in buffer
nnoremap <Leader>nD :DeleteNote!<CR>
" searches notes by word  under the cursor (also by tags)
nnoremap <F12> :SearchNotes<CR>

" TODO nur in filetype notes
"nnoremap <F4> :ShowTaggedNotes<Space>
"nnoremap <F5> :w<CR>:NoteToHtml<CR>
"inoremap <F5> <ESC>:w<CR>:NoteToHtml<CR>

"TODO find a shortcut
"finds related notes
"nnoremap <Leader> :RelatedNotes

"lists notes by modification date
nnoremap <Leader>nr :RecentNotes

"let g:notes_directories = ['~/documents/owncloud/privat/notes', '~/documents/owncloud/privat/diaries/2016']
let g:notes_directories = ['~/documents/owncloud/privat/notes']
" changes quotes to nicer ones
let g:notes_smart_quotes = 1

function! DiaryEntry()
    let l:date = strftime("%c")
    execute 'Note ' l:date
endfunction

