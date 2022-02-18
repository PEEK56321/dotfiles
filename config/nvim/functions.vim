" Trim leading and trailing spaces.
function SpaceSweeper()
    " Set variables to sane defaults.
    if exists("g:space_sweeper_enabled")
        let l:space_sweeper_enabled = g:space_sweeper_enabled
    else
        let l:space_sweeper_enabled = 0
    endif

    if exists("g:space_sweeper_exclude")
        let l:space_sweeper_exclude = g:space_sweeper_exclude
    else
        let l:space_sweeper_exclude = []
    endif

    " Function is not enabled.
    if !l:space_sweeper_enabled
        return 1
    endif

    " Do not operate on binary or excluded file types.
    if !&binary && index(l:space_sweeper_exclude, &filetype) >= 0
        return 2
    endif

    " Clean up spaces.
    let save_cursor = getpos(".")  " Save current cursor position.
    silent! %s#\s\+$##e            " Trim all trailing spaces.
    silent! %s#\%^\($\n\s*\)\+##   " Remove all blank lines from start of file. Will also remove leading blanks on first line.
    silent! %s#\($\n\s*\)\+\%$##   " Remove all blank lines from the end of the file.
    call setpos('.', save_cursor)  " Restore cursor position.

    return 0
endfunction
