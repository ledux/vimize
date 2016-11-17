nnoremap <F8> :Calendar<CR>

augroup calendar-mappings
    autocmd!
    autocmd FileType calendar nmap e <Plug>(calendar_event)
    autocmd FileType calendar nmap I <Plug>(calendar_start_insert_quick)
augroup END

let g:calendar_google_calendar = 1
let g:calendar_google_task = 1
" If on, the app shows the task list on its startup. You can toggle it with T
let g:calendar_task=0

" starting view of the calendar
" "{year/month/week/days/day/clock/event/agenda}"
let g:calendar_view = "day_4"
" The vailable views are: >
    "'year', 'month', 'week', 'weekday',
    "'day_7', 'day_6', 'day_5', 'day_4',
    "'day_3', 'day_2', 'day_1', 'day',
    "'clock', 'event', 'agenda'
let g:calendar_views = ['year', 'month', 'day_4', 'day', 'agenda', 'event', 'clock']
let g:calendar_cyclic_view = 1
let g:calendar_date_endian = "big"
let g:calendar_date_separator = "-"
let g:calendar_week_number = 1
