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
"lists notes by modification date
nnoremap <Leader>nr :RecentNotes
" searches notes by word  under the cursor (also by tags)
autocmd FileType notes nnoremap <F12> :SearchNotes<CR>
"TODO find a shortcut
"finds related notes
"nnoremap <Leader> :RelatedNotes

augroup filetype_notes
    autocmd!
    autocmd FileType notes nnoremap <F4> :ShowTaggedNotes<Space>
    autocmd FileType notes nnoremap <F5> :w<CR>:NoteToHtml<CR>
    autocmd FileType notes inoremap <F5> <ESC>:w<CR>:NoteToHtml<CR>
augroup END



"let g:notes_directories = ['~/documents/owncloud/privat/notes', '~/documents/owncloud/privat/diaries/2016']
let g:notes_directories = ['~/documents/owncloud/privat/notes']
" changes quotes to nicer ones
let g:notes_smart_quotes = 1
" file where the search index is stored
let g:notes_tagsindex = '~/documents/owncloud/privat/notes/.index/index.pickle'
" files where the tags are stored
let g:notes_tagsindex = '~/documents/owncloud/privat/notes/.index/tags.txt'

let g:diary_dir = '/home/lueq/documents/owncloud/privat/diaries/2016'

function! DiaryEntry()
    "execute 'lcd g:diary_dir'
    let l:date = strftime("%c")
    execute 'Note ' l:date
endfunction

